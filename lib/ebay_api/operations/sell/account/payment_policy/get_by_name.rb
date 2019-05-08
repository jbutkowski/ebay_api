class EbayAPI
  scope :sell do
    scope :account do
      scope :payment_policy do
        # @see https://developer.ebay.com/api-docs/sell/account/resources/payment_policy/methods/getPaymentPolicyByName
        operation :get_by_name do
          option :marketplace_id, proc(&:to_s)
          option :name, proc(&:to_s)

          path  { "/" }
          query { { marketplace_id: marketplace_id, name: name } }
          http_method :get
        end
      end
    end
  end
end
