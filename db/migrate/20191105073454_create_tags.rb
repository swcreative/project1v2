class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.integer :note_id
      t.text :tag

      t.timestamps
    end
  end
end
