require 'spec_helper'

describe FacturenController do
  let(:ontvanger){ Faker::Company.name  }

  it "toont lijst van uitgaande facturen" do
    facturen = FactoryGirl.build_list(:factuur, 3)
    Factuur.stub(:all){ facturen }

    get :index
    assigns(:facturen).should == facturen
  end

  it "toont een factuur" do
    factuur = FactoryGirl.build(:factuur)
    Factuur.stub(:find).with("2"){ factuur }

    get :show, id: "2"
    assigns(:factuur).should == factuur
  end

  it "creert een factuur" do
    post :create, {factuur: {ontvanger: ontvanger, bedrag: 12000}}

    factuur = Factuur.first
    factuur.ontvanger.should == ontvanger
    factuur.bedrag.should eql 12000

    response.should redirect_to factuur
  end
end