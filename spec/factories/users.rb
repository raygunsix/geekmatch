Factory.define :user do |user|
  user.username 'foobar'
  user.email 'foo@bar.com'
  user.password 'secret'
  user.password_confirmation 'secret'
  #user.password_hash '3488f5f7efecab14b91eb96169e5e1ee518a569f'
  #user.password_salt 'bef65e058905c379436d80d1a32e7374b139e7b0'
  user.description 'rails developer and ux wizard'
  user.skills 'rails css jquery sql mongodb' 
  user.ideas 'social_networking mobile ebooks'
end



# def new_user(attributes = {})
#   attributes[:username] ||= 'foo'
#   attributes[:email] ||= 'foo@example.com'
#   attributes[:password] ||= 'abc123'
#   attributes[:password_confirmation] ||= attributes[:password]
#   attributes[:description] ||= 'I am a foo developer located in Vancouver'
#   attributes[:skills] ||= 'rails css jquery sql mongodb'
#   attributes[:ideas] ||= 'social_networking mobile ebooks'
#   User.new(attributes)
# end