require 'spec_helper'

describe User do

  before(:each) do
    @user = Factory.build(:user)
  end

  it "should be valid" do
    @user.should be_valid
  end
  
  it "should require username" do
    @user.username = ''
    @user.should have(1).error_on(:username)
  end

  it "should require well formed email" do
    @user.email = 'foo@bar@example.com'
    @user.should have(1).error_on(:email)
  end
   
end

describe "omniauth" do
  
  it "should exist" do
    User.should respond_to(:create_with_omniauth)
  end
 
  it "should save auth data with new user" do
    auth = {'provider' => 'lycos', 'uid' => '54321', 'user_info' => {'name' => 'Foo Bar'}}
    user = User.create_with_omniauth(auth)
    user.provider.should == auth["provider"]
    user.uid.should == auth["uid"]
    user.username.should == auth["user_info"]["name"] 
  end

end
