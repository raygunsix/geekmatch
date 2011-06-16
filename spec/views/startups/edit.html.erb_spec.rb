require 'spec_helper'

describe "startups/edit.html.erb" do
  before(:each) do
    @startup = assign(:startup, stub_model(Startup,
      :title => "MyString",
      :city => "MyString",
      :description => "MyText",
      :skills => "MyString"
    ))
  end

  it "renders the edit startup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => startups_path(@startup), :method => "post" do
      assert_select "input#startup_title", :name => "startup[title]"
      assert_select "input#startup_city", :name => "startup[city]"
      assert_select "textarea#startup_description", :name => "startup[description]"
      assert_select "input#startup_skills", :name => "startup[skills]"
    end
  end
end
