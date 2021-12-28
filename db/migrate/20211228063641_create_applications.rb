class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :url
      t.string :image
      t.string :name
      t.string :introduction
      t.timestamps
    end
  end
end
