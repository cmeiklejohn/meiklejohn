# encoding: UTF-8

require 'rubygems'
require 'bundler'
require 'sinatra'

module Meiklejohn
  class Application < Sinatra::Base
    get '/' do 
      erb :index
    end

    get '/:username' do 
      erb params[:username].to_sym
    end
  end

  def self.app
    @app ||= Rack::Builder.new do
      run Application
    end
  end
end
