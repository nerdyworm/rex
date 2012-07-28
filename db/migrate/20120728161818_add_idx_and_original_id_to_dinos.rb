class AddIdxAndOriginalIdToDinos < ActiveRecord::Migration
  def change
    add_column :dinos, :idx, :integer, default: 0
    add_column :dinos, :original_id, :integer
  end
end
