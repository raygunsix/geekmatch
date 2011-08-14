Factory.define :user do |user|
  user.provider 'twitter'
  user.uid '12345'
  user.username 'foobar'
  user.email 'foo@bar.com'
  user.description 'rails developer and ux wizard'
  user.skills 'rails css jquery sql mongodb' 
  user.ideas 'social_networking mobile ebooks'
end