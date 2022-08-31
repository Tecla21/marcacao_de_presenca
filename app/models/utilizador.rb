class Utilizador < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :timeoutable, :lockable, :trackable

  enum tipo_de_utilizador: {
    eleitor: 0,
    administrador: 1
  }
  
end
