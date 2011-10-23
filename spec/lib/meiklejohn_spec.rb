require 'spec_helper'

describe Meiklejohn do 
  it 'returns the homepage' do
    get '/'
    last_response.should be_ok
  end
end
