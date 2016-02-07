require 'rails_helper'

RSpec.describe "categories/edit", :type => :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :label => "MyString",
      :parent_id => 1,
      :lft => 1,
      :rgt => 1
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_label[name=?]", "category[label]"

      assert_select "input#category_parent_id[name=?]", "category[parent_id]"

      assert_select "input#category_lft[name=?]", "category[lft]"

      assert_select "input#category_rgt[name=?]", "category[rgt]"
    end
  end
end
