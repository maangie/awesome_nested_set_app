require 'rails_helper'

RSpec.describe "categories/new", :type => :view do
  before(:each) do
    assign(:category, Category.new(
      :label => "MyString",
      :parent_id => 1,
      :lft => 1,
      :rgt => 1
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_label[name=?]", "category[label]"

      assert_select "input#category_parent_id[name=?]", "category[parent_id]"

      assert_select "input#category_lft[name=?]", "category[lft]"

      assert_select "input#category_rgt[name=?]", "category[rgt]"
    end
  end
end
