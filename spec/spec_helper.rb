# encoding: UTF-8

ENV["RACK_ENV"] ||= "test"

$LOAD_PATH << File.dirname(__FILE__) + '/lib'

require 'rspec'
require 'rack/test'

require 'meiklejohn'

RSpec.configure do |config|
  config.include(Rack::Test::Methods)

  def app
    Meiklejohn.app
  end
end
