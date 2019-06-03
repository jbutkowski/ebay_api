class EbayAPI
  scope :sell do
    scope :fulfillment do
      scope :orders do
        operation :list do
          option :order_ids,  optional: true
          option :filter,  optional: true
          option :limit,  optional: true
          option :offset,  optional: true

          http_method :get
          query do
            { orderIds: order_ids, filter: filter, limit: limit, offset: offset }.compact
          end
        end
      end
    end
  end
end
