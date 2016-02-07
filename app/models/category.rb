class Category < ApplicationRecord
  include TheSortableTree::Scopes
  acts_as_nested_set
end
