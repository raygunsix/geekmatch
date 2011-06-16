# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#users = []
#users <<
User.create!(:username => 'chris',
             :email => 'chris@raygun6.com',
             :password => 'ratboy6',
             :description => 'i am cool',
             :skills => 'magic php mysql',
             :ideas => 'airships light_sabers'
            )

User.create!(:username => 'rico',
             :email => 'rico@hotmail.com',
             :password => 'southpark',
             :description => 'the raddest dude ever',
             :skills => 'jquery vms poker',
             :ideas => 'nuclear_windmills light_sabers'
            )
            
User.create!(:username => 'bob',
             :email => 'bob334@yahoo.com',
             :password => 'canucks',
             :description => 'Interested in starting an online poker website',
             :skills => 'java rails poker',
             :ideas => 'online_poker virtual_truck_stop'
            )

User.create!(:username => 'larry',
             :email => 'lrry@gmail.com',
             :password => 'rabbit',
             :description => 'level 88 blood elf hunter',
             :skills => 'prototype postgresql php',
             :ideas => 'real_estate_website light_sabers'
            )