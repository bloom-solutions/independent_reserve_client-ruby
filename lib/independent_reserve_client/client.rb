module IndependentReserveClient
  class Client

    include APIClientBase::Client.module(default_opts: :default_opts)
    attribute :host, String

    api_action :get_exchange_rate, args: [:primary_currency, :secondary_currency]

    private

    def default_opts
      { host: host }
    end
  end
end
