class CreateDharugs < ActiveRecord::Migration[5.2]
  def change
    create_table :dharugs do |t|
      t.string :dharug_word
      t.string :english_word

      t.timestamps
    end
  end
end
