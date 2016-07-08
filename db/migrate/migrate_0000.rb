class Migrate0000 < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.timestamps
    end

    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.timestamps
    end

    create_table :shows do |t|
      t.date :date
      t.integer :cost
      t.boolean :liked
      t.timestamps
    end

    create_table :gigs do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :show, index: true
      t.timestamps
    end
  end
end
