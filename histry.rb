require 'sinatra'
require 'csv'

# CSVファイルからデータを読み込み
data = []

file = "./views/history.csv"

CSV.foreach(file) do |row|
    data << row.to_h
end

get '/' do
    erb :index, locals: { data: data }
end