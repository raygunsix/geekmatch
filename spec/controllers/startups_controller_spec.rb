require 'spec_helper'

describe StartupsController do
  
  before(:each) do
    @startup = Factory.build(:startup)
    @user = Factory.build(:user)
  end

  # it "index action should return all objects" do
  #   get :index
  #   response.should render_template(:index)
  # end
  # 
  # it "show action should find user and return object" do
  #   @startup.save
  #   get :show, :id => @startup.id
  #   response.should render_template(:show)
  # end
  #  
  # it "new action should render new template" do
  #   @controller.stubs(:current_user).returns(@user)
  #   get :new
  #   response.should render_template(:new)
  # end
  
  # # This code works but we currently don't validate the startup model
  # # it "create action should render new template when model is invalid" do
  # #   @controller.stubs(:current_user).returns(@user)
  # #   post :create, :startup => {}
  # #   response.should render_template(:new)
  # # end
  # 
  # it "create action should redirect when model is valid" do
  #   @controller.stubs(:current_user).returns(@user)
  #   post :create,
  #   :startup => {:title => @startup.title,
  #                :city => @startup.city,
  #                :description => @startup.description,
  #                :skills => @startup.skills}
  #   response.should redirect_to(startup_path_(@startup.id))
  #   flash[:notice].should_not be_nil
  # end
   
   # it "edit action should redirect when not logged in" do
   #   get :edit, :id => "ignored"
   #   response.should redirect_to(login_url)
   # end
   # 
   # it "edit action should render edit template" do
   #   @startup.save
   #   @controller.stubs(:current_user).returns(@user)
   #   get :edit, :id => @startup.id
   #   response.should render_template(:edit)
   # end
   # 
   # it "update action should redirect when not logged in" do
   #   put :update, :id => "ignored"
   #   response.should redirect_to(login_url)
   # end

end
