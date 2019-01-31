class Source < ApplicationRecord
  has_and_belongs_to_many :dharug
  has_and_belongs_to_many :alternate_vocabularies
end
