class EbayAPI
  scope :sell do
    scope :fulfillment do
      scope :orders do
        scope :shipping_fulfillments do
          operation :get_fulfillment do
            option :order_id, proc(&:to_s)
            option :fulfillment_id, proc(&:to_s)
            http_method :get
            path { "#{order_id}/shipping_fulfillment/#{fulfillment_id}" }
          end
        end
      end
    end
  end
end
