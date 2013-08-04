require 'spec_helper'

describe 'Routing van uitgaande_facturen' do
  it "get uitgaande_facturen" do
    get('/uitgaande_facturen').should route_to "uitgaande_facturen#index"
  end

  it "get uitgaande_facturen/1" do
    get('/uitgaande_facturen/1').should route_to "uitgaande_facturen#show", id: "1"
  end

  it "get uitgaande_facturen/new" do
    get('/uitgaande_facturen/new').should route_to "uitgaande_facturen#new"
  end

  it "post uitgaande_facturen" do
    post('/uitgaande_facturen').should route_to "uitgaande_facturen#create"
  end
end