class CreateDharugsSources < ActiveRecord::Migration[5.2]
  def change
    create_table :dharugs_sources, id: false do |t|
      t.integer :dharug_id
      t.integer :source_id
    end
    add_index :dharugs_sources, :source_id
    add_index :dharugs_sources, :dharug_id
  end
end
