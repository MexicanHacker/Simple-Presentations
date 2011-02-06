require 'sinatra'
require 'haml'

get '/' do
    "The options will go here, for now use /slide/1 as an example"
end

get '/slide/:number' do
  slides = open('files/testfile.yml'){|f|YAML.load(f)}
  slide_to_show = slides[params[:number].to_i] 
  @title = "#{slide_to_show['title']}"
  @content = "#{slide_to_show['content']}"
  haml :slide   
end
