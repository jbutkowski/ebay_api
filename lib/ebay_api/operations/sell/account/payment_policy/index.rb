class EbayAPI
  scope :sell do
    scope :account do
      scope :payment_policy do
        # @see https://developer.ebay.com/api-docs/sell/account/resources/payment_policy/methods/getPaymentPolicies
        operation :index do
          option :marketplace_id, proc(&:to_s)

          path { "/" }
          query { { marketplace_id: marketplace_id } }
          http_method :get
        end
      end
    end
  end
end
