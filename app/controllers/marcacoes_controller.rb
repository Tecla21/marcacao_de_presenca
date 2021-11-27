class MarcacoesController < ApplicationController
  before_action :set_marcacao, only: %i[ show edit update destroy ]

  # GET /marcacoes or /marcacoes.json
  def index
    if current_utilizador.administrador?
      @marcacoes = Marcacao.all
    else
      @marcacoes = current_utilizador.marcacoes
    end
  end

  # GET /marcacoes/1 or /marcacoes/1.json
  def show
  end

  # GET /marcacoes/new
  def new
    @marcacao = Marcacao.new
  end

  # GET /marcacoes/1/edit
  def edit
  end

  # POST /marcacoes or /marcacoes.json
  def create
    @marcacao = Marcacao.new(marcacao_params)

    respond_to do |format|
      if @marcacao.save
        format.html { redirect_to @marcacao, notice: "Marcacao was successfully created." }
        format.json { render :show, status: :created, location: @marcacao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @marcacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marcacoes/1 or /marcacoes/1.json
  def update
    respond_to do |format|
      if @marcacao.update(marcacao_params)
        format.html { redirect_to @marcacao, notice: "Marcacao was successfully updated." }
        format.json { render :show, status: :ok, location: @marcacao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marcacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marcacoes/1 or /marcacoes/1.json
  def destroy
    @marcacao.destroy
    respond_to do |format|
      format.html { redirect_to marcacoes_url, notice: "Marcacao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marcacao
      @marcacao = Marcacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marcacao_params
      params.require(:marcacao).permit(:tema, :turma_id)
    end
end
