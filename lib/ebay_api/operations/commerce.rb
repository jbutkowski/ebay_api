#
# Commerce API
#

require_relative "commerce/taxonomy"

class EbayAPI
  scope :commerce do
    path "commerce"
  end
end
