class EbayAPI
  scope :sell do
    scope :account do
      scope :fulfillment_policy do
        # @see https://developer.ebay.com/api-docs/sell/account/resources/fulfillment_policy/methods/getFulfillmentPolicyByName
        operation :get_by_name do
          option :markplace_id, proc(&:to_s)
          option :name, proc(&:to_s)

          path  { "/" }
          query { { marketplace_id: markplace_id, name: name } }
          http_method :get
        end
      end
    end
  end
end
