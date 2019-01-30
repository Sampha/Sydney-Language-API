class Dharug < ApplicationRecord
  has_and_belongs_to_many :source
  has_many :alternate_vocabularies
end
