class CreateBallons < ActiveRecord::Migration[7.0]
  def change
    create_table :ballons do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
