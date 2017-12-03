class AddImageToFonds < ActiveRecord::Migration[5.0]
  def change
    add_column :fonds, :image, :string
  end
end
