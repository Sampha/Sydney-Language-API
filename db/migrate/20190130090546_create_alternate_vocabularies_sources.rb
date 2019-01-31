class CreateAlternateVocabulariesSources < ActiveRecord::Migration[5.2]
  def change
    create_table :alternate_vocabularies_sources do |t|
      t.integer :alternate_vocabulary_id
      t.integer :source_id
    end
    add_index :alternate_vocabularies_sources, :source_id
  end
end
