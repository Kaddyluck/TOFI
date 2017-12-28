class RemoveDocsFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :document_type, :string
    remove_column :users, :document_num, :string
  end
end
