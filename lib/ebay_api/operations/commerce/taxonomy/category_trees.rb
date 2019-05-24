require_relative "category_trees/get_category_suggestions"

class EbayAPI
  scope :commerce do
    scope :taxonomy do
      scope :category_trees do
        path "category_tree"
      end
    end
  end
end
