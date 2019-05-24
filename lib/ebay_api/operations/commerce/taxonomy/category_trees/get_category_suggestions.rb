class EbayAPI
  scope :commerce do
    scope :taxonomy do
      scope :category_trees do
        operation :get_category_suggestions do
          option :category_tree_id
          option :query

          http_method :get

          query do
            { q: query }.compact
          end
          path { "#{category_tree_id}/get_category_suggestions" }
        end
      end
    end
  end
end
