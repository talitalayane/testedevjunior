# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'
require "open-uri"


puts "Criando conteúdo"

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath1 = 'netflix_titles.csv'

CSV.foreach(filepath1, csv_options) do |row|
  Netflix.create!(
    title: row[2],
    genre: row[1],
    year: row[7],
    country: row[5],
    published_at: Date.parse(row[6]),
    description: row[11]
  )
end
