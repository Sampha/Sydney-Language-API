class CreateAlternateVocabularies < ActiveRecord::Migration[5.2]
  def change
    create_table :alternate_vocabularies do |t|
      t.string :dharug_word

      t.timestamps
    end
  end
end
