Factory.define :user do |user|
  user.username 'foobar'
  user.email 'foo@bar.com'
  user.password 'secret'
  user.password_confirmation 'secret'
  user.description 'rails developer and ux wizard'
  user.skills 'rails css jquery sql mongodb' 
  user.ideas 'social_networking mobile ebooks'
end