require 'rails_helper'

RSpec.describe "categories/index", :type => :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :label => "Label",
        :parent_id => 1,
        :lft => 2,
        :rgt => 3
      ),
      Category.create!(
        :label => "Label",
        :parent_id => 1,
        :lft => 2,
        :rgt => 3
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
