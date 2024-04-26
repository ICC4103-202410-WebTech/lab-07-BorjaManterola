class User < ApplicationRecord
    has_many :posts

    validates :name, presence: { message: "El nombre de usuario no puede estar en blanco" }
    validates :email, presence: { message: "El email no puede estar en blanco" }
    validates :password, presence: { message: "La contrasena no puede estar en blanco" }
    validates :email, uniqueness: { message: "Ya existe un usuario con el mismo email" }
    validates :password, length: { minimum: 6, message: "La contrasena tiene que tener mas de 6 caracteres" }
end