require 'spec_helper'

describe UsersController do

  before(:each) do
    @user = Factory.build(:user)
  end

  # it "index action should return all objects" do
  #   get :index
  #   response.should render_template(:index)
  # end
  # 
  # it "show action should find user and return object" do
  #   @user.save
  #   get :show, :id => @user.id
  #   response.should render_template(:show)
  # end
  # 
  # it "new action should render new template" do
  #   get :new
  #   response.should render_template(:new)
  # end
  # 
  # it "create action should render new template when model is invalid" do
  #   post :create
  #   response.should render_template(:new)
  # end
  # 
  # it "create action should redirect when model is valid" do
  #   post :create,
  #     :user => {:username => @user.username,
  #               :email => @user.email,
  #               :password => @user.password,
  #               :password_confirmation => @user.password} 
  #   response.should redirect_to(root_url)
  #   session['user_id'].should == assigns['user'].id
  #   flash[:notice].should_not be_nil
  # end
  # 
  # it "edit action should redirect when not logged in" do
  #   get :edit, :id => "ignored"
  #   response.should redirect_to(login_url)
  # end
  # 
  # it "edit action should render edit template" do
  #   @controller.stubs(:current_user).returns(@user)
  #   get :edit, :id => "ignored"
  #   response.should render_template(:edit)
  # end
  # 
  # it "update action should redirect when not logged in" do
  #   put :update, :id => "ignored"
  #   response.should redirect_to(login_url)
  # end
  # 
  # it "update action should render edit template when user is invalid" do
  #   @controller.stubs(:current_user).returns(@user)
  #   @user.stubs(:valid?).returns(false)
  #   put :update, :id => "ignored" #@user.id
  #   response.should render_template(:edit)
  # end
  # 
  # it "update action should redirect when user is valid" do
  #   @controller.stubs(:current_user).returns(@user)
  #   @user.stubs(:valid?).returns(true)
  #   put :update, :id => "ignored"
  #   response.should redirect_to(root_url)
  #   flash[:notice].should_not be_nil
  # end
  
end
