class CreateDinos < ActiveRecord::Migration
  def change
    create_table :dinos do |t|
      t.string :name
      t.text :content
      t.integer :document_id

      t.timestamps
    end
  end
end
