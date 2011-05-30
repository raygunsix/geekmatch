#include the HTML haml class
require 'haml/html'
namespace :hamlify do
  desc "Convert ERB files to haml"
  task :convert => :environment do
    #Iterate through the views folder and search all .erb files
    Dir["#{Rails.root}/app/views/**/*.erb*"].each do |file_name|
      puts "Hamlifying: #{file_name}"
      #create a new file path for the haml to be exported to
      haml_file_name = file_name.gsub(/erb$/,"haml")
      #if haml is non existent then create it
      if !File.exists?(haml_file_name)
        erb_string = File.open(file_name).read
        #convert erb to haml
        if !erb_string.empty?
          haml_string = Haml::HTML.new(erb_string,:erb=>true).render
        else
          haml_string = Haml::HTML.new("<section></section>",:erb=>true).render
        end
        haml_string = "#{haml_string}"
        #write the haml string to the file
        fn = File.new(haml_file_name,"w")
        fn.write(haml_string) unless(haml_string.empty?)
        fn.close
        #get rid of the erb file
        File.delete(file_name)
      end
    end
  end
end