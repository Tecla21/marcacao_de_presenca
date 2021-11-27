class Utilizador < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :turmas
  has_many :estudantes, through: :turmas

  enum tipo_de_utilizador: {
    docente: 0,
    administrador: 1
  }
end
