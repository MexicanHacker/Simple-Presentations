require 'rubygems'
require 'sinatra'
require 'haml'
require './service'

get '/' do
    haml :index
end

get '/slide/:number' do
  service = Service.new
  slides =  service.get_slides('files/presentation.json')
  slide_number = params[:number].to_i
  slide_to_show = slides[slide_number] 
  @title = "#{slide_to_show['title']}"
  @content = "#{slide_to_show['content']}"
  @previous = "/slide/#{service.previous_slide(slides,slide_number)}"
  @next = "/slide/#{service.next_slide(slides,slide_number)}"
  haml :slide   
end