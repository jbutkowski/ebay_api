#
# Commerce Taxonomy API
# @see https://developer.ebay.com/api-docs/commerce/taxonomy/overview.html
#

require_relative "taxonomy/category_trees"

class EbayAPI
  scope :commerce do
    scope :taxonomy do
      path { "taxonomy/v#{EbayAPI::COMMERCE_TAXONOMY_VERSION[/^\d[\w]+/]}" }
    end
  end
end
