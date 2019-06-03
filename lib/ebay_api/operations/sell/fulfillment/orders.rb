require_relative 'orders/get'
require_relative 'orders/list'

class EbayAPI
  scope :sell do
    scope :fulfillment do
      scope :orders do
        path "order"
      end
    end
  end
end
