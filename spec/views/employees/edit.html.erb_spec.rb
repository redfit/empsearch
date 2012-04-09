require 'spec_helper'

describe "employees/edit" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :user_id => "MyString",
      :usa_id => "MyString",
      :pic_name => "MyString",
      :user_name => "MyText",
      :unit => "MyText",
      :role => "MyText",
      :email => "MyText",
      :tel1 => "MyText",
      :tel2 => "MyText",
      :tel3 => "MyText",
      :place => "MyText",
      :introduction => "MyText",
      :target => "MyText"
    ))
  end

  it "renders the edit employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path(@employee), :method => "post" do
      assert_select "input#employee_user_id", :name => "employee[user_id]"
      assert_select "input#employee_usa_id", :name => "employee[usa_id]"
      assert_select "input#employee_pic_name", :name => "employee[pic_name]"
      assert_select "textarea#employee_user_name", :name => "employee[user_name]"
      assert_select "textarea#employee_unit", :name => "employee[unit]"
      assert_select "textarea#employee_role", :name => "employee[role]"
      assert_select "textarea#employee_email", :name => "employee[email]"
      assert_select "textarea#employee_tel1", :name => "employee[tel1]"
      assert_select "textarea#employee_tel2", :name => "employee[tel2]"
      assert_select "textarea#employee_tel3", :name => "employee[tel3]"
      assert_select "textarea#employee_place", :name => "employee[place]"
      assert_select "textarea#employee_introduction", :name => "employee[introduction]"
      assert_select "textarea#employee_target", :name => "employee[target]"
    end
  end
end
