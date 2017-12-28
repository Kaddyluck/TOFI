class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :login, :string
    add_column :users, :fio, :string
    add_column :users, :dob, :date
    add_column :users, :document_type, :string
    add_column :users, :document_num, :string
    add_column :users, :phone_num, :string
  end
end
