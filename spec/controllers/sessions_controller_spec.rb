require 'spec_helper'

describe SessionsController do

  before(:each) do
    @user = Factory.build(:user)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when authentication is invalid" do
    User.stubs(:authenticate).returns(nil)
    post :create
    response.should render_template(:new)
    session['user_id'].should be_nil
  end

  it "create action should redirect when authentication is valid" do
    @user.save
    User.stubs(:authenticate).returns(@user)
    post :create
    response.should redirect_to(root_url)
    session['user_id'].should == @user.id
  end
end
