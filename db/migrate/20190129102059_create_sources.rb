class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.string :source
      t.string :shorthand

      t.timestamps
    end
  end
end
