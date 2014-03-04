require 'spec_helper'

describe "proyects/edit" do
  before(:each) do
    @proyect = assign(:proyect, stub_model(Proyect,
      :title => "MyString",
      :description => "MyString",
      :thumb => "MyString",
      :photo => "MyString"
    ))
  end

  it "renders the edit proyect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => proyects_path(@proyect), :method => "post" do
      assert_select "input#proyect_title", :name => "proyect[title]"
      assert_select "input#proyect_description", :name => "proyect[description]"
      assert_select "input#proyect_thumb", :name => "proyect[thumb]"
      assert_select "input#proyect_photo", :name => "proyect[photo]"
    end
  end
end
