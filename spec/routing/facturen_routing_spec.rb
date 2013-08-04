require 'spec_helper'

describe 'Routing van facturen' do
  it "get facturen" do
    get('/facturen').should route_to "facturen#index"
  end

  it "get facturen/1" do
    get('/facturen/1').should route_to "facturen#show", id: "1"
  end

  it "get facturen/new" do
    get('/facturen/new').should route_to "facturen#new"
  end

  it "post facturen" do
    post('/facturen').should route_to "facturen#create"
  end
end