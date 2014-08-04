require 'sinatra'
require 'data_mapper'

DataMapper.setup(
  :default,
  'mysql://root@localhost/blog'
  # 'protocol://username:password@ip_address/database'
  # 127.0.0.1
)

class Blog
  include DataMapper::Resource

  # attr_accessor :first_name
  # attr_accessor :last_name
  property :id, Serial
  property :date, String
  property :title, String
  property :post, String
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @blog = Blog.all
  erb :index, layout: :awesome_default_layout
end

get '/create_contact' do
  erb :create_contact, layout: :awesome_default_layout
end

post '/create_contact' do
  # puts "*"*100
  # puts "Hello World!"
  # puts "*"*100
  # p params
  @blog = Blog.create params[:contact]
  # {"contact"=>{"first_name"=>"Ben", "last_name"=>"Linville"} }
  # p @contact
  redirect to('/')
end

get '/show_contact/:id' do
  @blog = Blog.get params[:id]
  erb :show_contact, layout: :awesome_default_layout
end

get '/edit_contact/:id' do
  @blog = Blog.get params[:id]
  erb :edit_contact, layout: :awesome_default_layout
end

put '/edit_contact/:id' do
  p puts "*"*100
  p params
  @blog = Blog.get params[:id]
  @blog.update params[:contact]
  redirect to("/")
end

delete '/delete_contact/:id' do
  @blog = Blog.get params[:id]
  @blog.destroy
  redirect to("/")
end