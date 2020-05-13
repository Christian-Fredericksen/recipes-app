class Recipe < ApplicationRecord
    validates :name, :ingredients, :cook_time, :description, presence: true 
end
