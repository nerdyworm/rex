class AddIdxAndOriginalIdToDinos < ActiveRecord::Migration
  def change
    add_column :dinos, :idx, :integer
    add_column :dinos, :original_id, :integer
  end
end
