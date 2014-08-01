require 'sinatra'
require 'faker'

get "/" do
  erb :home
end

get "/layout1" do
  erb :layout1
  end

get "/bio" do
  erb :bio, layout: :layout1
end

get "/discography" do
  erb :page3, layout: :layout2
end

get "/names" do
  @names = Faker::Name.name
  p @names
end

