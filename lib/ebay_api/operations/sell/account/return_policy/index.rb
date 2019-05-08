class EbayAPI
  scope :sell do
    scope :account do
      scope :return_policy do
        # @see https://developer.ebay.com/api-docs/sell/account/resources/return_policy/methods/getReturnPolicies
        operation :index do
          option :marketplace_id

          path  { "/" }
          query { { marketplace_id: marketplace_id } }
          http_method :get
        end
      end
    end
  end
end
