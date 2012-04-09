require 'spec_helper'

describe "employees/index" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :user_id => "User",
        :usa_id => "Usa",
        :pic_name => "Pic Name",
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
      ),
      stub_model(Employee,
        :user_id => "User",
        :usa_id => "Usa",
        :pic_name => "Pic Name",
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
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Usa".to_s, :count => 2
    assert_select "tr>td", :text => "Pic Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
