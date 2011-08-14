require 'spec_helper'

describe SessionsController do

  before(:each) do
    @user = Factory.build(:user)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end
  
end
