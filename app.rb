require 'sinatra'
require 'uri'

set :bind, '0.0.0.0'
set :port, ENV['PORT'] || 4567

SUSHI_LIST = [
  { name: "マグロ", comment: "赤身の王様！", image: "/images/tsuna.jpg" },
  { name: "サーモン", comment: "みんな大好き", image: "/images/salmon.jpg" },
  { name: "エビ", comment: "ぷりぷり食感♪", image: "/images/shrimp.jpg" },
  { name: "いくら", comment: "宝石みたい！", image: "/images/ikura.jpg" },
  { name: "たまご", comment: "癒し系ネタ", image: "/images/egg.jpg" }
]

get '/' do
  erb :index
end

post '/result' do
  @sushi = SUSHI_LIST.sample
  erb :result
end
