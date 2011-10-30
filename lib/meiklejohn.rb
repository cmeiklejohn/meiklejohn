# encoding: UTF-8

require 'rubygems'
require 'bundler'
require 'sinatra'
require 'sinatra/contrib'

module Meiklejohn
  class Application < Sinatra::Base
    register Sinatra::Contrib

    get '/' do 
      erb :index
    end

    get '/:username' do 
      erb params[:username].to_sym
    end

    get '/:username/:page' do 
      erb "#{params[:username]}/#{params[:page]}".to_sym
    end
  end

  def self.app
    @app ||= Rack::Builder.new do
      run Application
    end
  end
end
