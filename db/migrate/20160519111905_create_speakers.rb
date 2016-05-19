class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :talk

      t.timestamps null: false
    end
  end
end
