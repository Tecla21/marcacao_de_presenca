class Utilizador < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :turmas
  has_many :estudantes, through: :turmas
  has_many :marcacoes, through: :turmas
  has_many :marcacao_do_estudantes_na_turma, through: :marcacoes

  enum tipo_de_utilizador: {
    docente: 0,
    administrador: 1
  }
end
