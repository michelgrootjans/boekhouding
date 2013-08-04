require 'spec_helper'

describe 'inflections in dutch' do
  it "inflects factuur" do
    "factuur".pluralize.should == "facturen"
    "facturen".singularize.should == "factuur"
  end
end