class EbayAPI
  scope :sell do
    scope :fulfillment do
      scope :orders do
        scope :shipping_fulfillments do
          operation :list_fulfillments do
            option :order_id, proc(&:to_s)
            http_method :get
            path { "#{order_id}/shipping_fulfillment" }
          end
        end
      end
    end
  end
end
