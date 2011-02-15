require 'presenta'
require 'test/unit'
require 'rack/test'
require 'yaml'

set :environment, :test

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_home_page_response
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('The options will be here, for now use /slide/1 as an example')
  end
  
  def test_slide_and_number
    get '/slide/1'
    assert last_response.ok?
    assert last_response.body.include?('title')
    assert last_response.body.include?('content')
  end
    
end
