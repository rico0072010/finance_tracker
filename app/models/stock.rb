class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex_client[:sandbox_public_api],
      secret_token: Rails.application.credentials.iex_client[:sandbox_secret_api],
      endpoint: Rails.application.credentials.iex_client[:sandbox_endpoint]
    )
    client.price(ticker_symbol)
  end
end
