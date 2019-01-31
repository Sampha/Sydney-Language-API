class AddDharugIdToAlternateVocabulary < ActiveRecord::Migration[5.2]
  def change
    add_reference :alternate_vocabularies, :dharug, index: true
  end
end
