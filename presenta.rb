require 'rubygems'
require 'sinatra'
require 'haml'
require './service'

get '/' do
    haml :index
end

get '/slide/:number' do
  slides = Service.new.get_slides('files/presentation.json')
  slide_to_show = slides[params[:number].to_i] 
  @title = "#{slide_to_show['title']}"
  @content = "#{slide_to_show['content']}"
  haml :slide   
end