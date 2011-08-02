require File.dirname(__FILE__) + '/../spec_helper'

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
  
  it "should require password" do
    @user.password = ''
    @user.should have_at_least(1).error_on(:password)
  end
  
  it "should require well formed email" do
    @user.email = 'foo@bar@example.com'
    @user.should have(1).error_on(:email)
  end
   
  it "should validate uniqueness of email" do
    @user.save
    @user_other = @user.clone
    @user_other.save
    @user_other.should have(1).error_on(:email)
  end
  
  it "should validate uniqueness of username" do
    @user.save
    @user_other = @user.clone
    @user_other.save
    @user_other.should have(1).error_on(:username)
  end
  
  it "should not allow odd characters in username" do
    @user.username = 'odd ^&(@)'
    @user.should have(1).error_on(:username)
  end
  
  it "should validate password is longer than 3 characters" do
    @user.password = 'bad'
    @user.should have_at_least(1).error_on(:password)
  end
  
    it "should require matching password confirmation" do
      @user.password_confirmation = 'nonmatching'
      @user.should have(1).error_on(:password)
    end
     
  it "should generate password hash and salt on create" do
    @user.save!
    @user.password_hash.should_not be_nil
    @user.password_salt.should_not be_nil
  end
   
  it "should authenticate by username" do
    @user.save!
    User.authenticate('foobar', 'secret').should == @user
  end
  
  it "should authenticate by email" do
    @user.save!
    User.authenticate('foo@bar.com', 'secret').should == @user
  end
  
  it "should not authenticate bad username" do
    @user.save!
    User.authenticate('nonexisting', 'secret').should be_nil
  end
  
  it "should not authenticate bad password" do
    @user.save!
    User.authenticate('foobar', 'badpassword').should be_nil
  end
  
  it "should allow a description to be saved" do
    @user.save!
    @user.description.should_not be_nil
  end
  
  it "should allow skills to be saved" do
    @user.save!
    @user.skills.should_not be_nil
  end
  
  it "should allow ideas to be saved" do
    @user.save!
    @user.ideas.should_not be_nil
  end

  after(:each) do
    @user.delete
  end

end
