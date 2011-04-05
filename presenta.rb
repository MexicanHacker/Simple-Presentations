require 'rubygems'
require 'sinatra'
require 'haml'
require './service'

get '/' do
    haml :index
end

get '/slide/:number' do
  service = Service.new
  slides = .get_slides('files/presentation.json')
  slide_to_show = slides[params[:number].to_i] 
  @title = "#{slide_to_show['title']}"
  @content = "#{slide_to_show['content']}"
  @previous = "#{service.previous_slide(slides,2)}"
  haml :slide   
end