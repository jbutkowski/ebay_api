class EbayAPI
  scope :sell do
    scope :fulfillment do
      scope :orders do
        scope :shipping_fulfillments do
          operation :create_fulfillment do
            option :order_id, proc(&:to_s)
            option :data, proc(&:to_h)
            http_method :post
            path { "#{order_id}/shipping_fulfillment" }
            body do
              data
            end
          end
        end
      end
    end
  end
end
