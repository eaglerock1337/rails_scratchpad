class Stuff < ApplicationRecord
  include Catalog

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
