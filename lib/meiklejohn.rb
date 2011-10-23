# encoding: UTF-8

require 'rubygems'
require 'bundler'
require 'sinatra'

module Meiklejohn
  class Application < Sinatra::Base
  end

  def self.app
    @app ||= Rack::Builder.new do
      run Application
    end
  end
end
