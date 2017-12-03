class CreateFonds < ActiveRecord::Migration[5.0]
  def change
    create_table :fonds do |t|
      t.string :title
      t.text :summary
      t.text :body

      t.timestamps
    end
  end
end
