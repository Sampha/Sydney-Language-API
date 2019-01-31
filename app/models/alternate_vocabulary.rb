class AlternateVocabulary < ApplicationRecord
  has_and_belongs_to_many :source
  belongs_to :dharug
end
