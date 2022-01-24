class CreateNetflixes < ActiveRecord::Migration[7.0]
  def change
    create_table :netflixes do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :country
      t.string :published_at
      t.string :description

      t.timestamps
    end
  end
end
