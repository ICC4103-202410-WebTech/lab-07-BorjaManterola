class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, :through => :post_tags
    belongs_to :parent_post, class_name: 'Post', foreign_key: 'parent_post_id', optional: true
    has_many :child_posts, class_name: 'Post', foreign_key: 'parent_post_id'

    validates :title, presence: { message: "El título no puede estar en blanco" }
    validates :content, presence: { message: "El contenido no puede estar en blanco" }
    validates :user_id, presence: { message: "El ID del usuario no puede estar en blanco" }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "La cantidad de respuestas no puede ser negativa" }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "La cantidad de likes no puede ser negativa" }
    
    before_save :set_default_published_at

    private
        def set_default_published_at
            self.published_at ||= Time.current
        end
end