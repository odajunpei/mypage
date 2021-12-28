class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :introduction
      t.date :date
      t.string :url
      t.string :image
      t.timestamps
    end
  end
end
