class Fond < ApplicationRecord
  validates :title, :summary, :body, presence: true
end
