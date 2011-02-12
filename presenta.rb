require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
    haml :index
end

get '/slide/:number' do
  slides = open('files/testfile.yml'){|f|YAML.load(f)}
  slide_to_show = slides[params[:number].to_i] 
  @title = "#{slide_to_show['title']}"
  @content = "#{slide_to_show['content']}"
  haml :slide   
end
