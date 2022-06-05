class EstudantesController < ApplicationController
  before_action :authenticate_utilizador!
  before_action :set_estudante, only: %i[ show edit update destroy ]

  # GET /estudantes or /estudantes.json
  def index
    if current_utilizador.administrador?
      @estudantes = Estudante.all
    else
      @estudantes = current_utilizador.estudantes
    end
  end

  # GET /estudantes/1 or /estudantes/1.json
  def show
  end

  # GET /estudantes/new
  def new
    @estudante = Estudante.new
  end

  # GET /estudantes/1/edit
  def edit
  end

  # POST /estudantes or /estudantes.json
  def create
    @estudante = Estudante.new(estudante_params)

    respond_to do |format|
      if @estudante.save
        format.html { redirect_to @estudante, notice: "Estudante was successfully created." }
        format.json { render :show, status: :created, location: @estudante }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estudante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudantes/1 or /estudantes/1.json
  def update
    respond_to do |format|
      if @estudante.update(estudante_params)
        format.html { redirect_to @estudante, notice: "Estudante was successfully updated." }
        format.json { render :show, status: :ok, location: @estudante }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estudante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudantes/1 or /estudantes/1.json
  def destroy
    @estudante.destroy
    respond_to do |format|
      format.html { redirect_to estudantes_url, notice: "Estudante was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudante
      @estudante = Estudante.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estudante_params
      params.require(:estudante).permit(:nome, :telemovel, {turma_ids: []})
    end
end
