class User < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  attr_accessible :username, :email, :description, :skills, :ideas
  
  validates_presence_of :username
  validates_presence_of :uid
  validates_presence_of :provider
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, :allow_blank => 'true'
  
  def self.create_with_omniauth(auth)  
    create! do |user|
      user.provider = auth["provider"]  
      user.uid = auth["uid"]
      user.username = auth["user_info"]["name"]
    end
  end

end