require 'presenta'
require 'test/unit'
require 'rack/test'

set :environment, :test

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_hi_returns_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'The options will be here, for now use /slide/1 as an example', last_response.body
  end
end
