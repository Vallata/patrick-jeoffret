class RemoveSizeAndAddDifferentDimensions < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :size, :string
    add_column :items, :width, :integer
    add_column :items, :length, :integer
    add_column :items, :height, :integer
    add_column :items, :weight, :integer
    add_column :items, :depth, :integer
  end
end
