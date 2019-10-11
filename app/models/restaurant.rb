class Restaurant < ApplicationRecord
    # Associations
    has_many :reviews, dependent: :destroy

    # Validations
    validates :name, uniqueness: true, presence: true
    validates :address, presence: true
    validates :phone_number, presence: true
    validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
