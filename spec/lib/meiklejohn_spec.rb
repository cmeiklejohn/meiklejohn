require 'spec_helper'

describe Meiklejohn do 
  it 'returns the homepage' do
    get '/'
    last_response.should be_ok
  end

  it "returns christopher's profile page" do
    get '/christopher'
    last_response.should be_ok
    last_response.body.should include('Christopher Meiklejohn')
  end
end
