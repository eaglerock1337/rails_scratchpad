class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.boolean :useful
      t.integer :value

      t.timestamps
    end
  end
end
