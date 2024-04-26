class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, :through => :post_tags

    validates :name, presence: { message: "El nombre del tag no puede estar en blanco" }, uniqueness: { message: "Ya existe un tag con el mismo nombre" }
end