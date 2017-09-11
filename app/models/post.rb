class Post < ApplicationRecord
  validates :title, :summary, :body, presence: true  # проверка на непустое значение
end
