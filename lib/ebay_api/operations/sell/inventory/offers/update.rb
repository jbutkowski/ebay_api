class EbayAPI
  scope :sell do
    scope :inventory do
      scope :offers do
        operation :update do
          option :offer_id,   proc(&:to_s)
          option :content_language
          option :data,   proc(&:to_h)
          http_method :put
          headers { { "Content-Language" => content_language } }
          path { offer_id }
          body { data }
          response(204) { true }
        end
      end
    end
  end
end
