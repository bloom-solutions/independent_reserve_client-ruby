module IndependentReserveClient
  class Client

    include APIClientBase::Client.module(default_opts: :default_opts)
    attribute :host, String

    private

    def default_opts
      { host: host }
    end
  end
end
