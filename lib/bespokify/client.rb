require 'bespokify/client/material'

module Bespokify
  class Client
    include HTTParty
    include Bespokify::Client::Material
    base_uri 'https://api.bespokify.com/v2'
    format :json

    def initialize(login, password)
      @login = login
      @password = password
      self.class.default_options.merge!(headers: { 'Authorization' => "Bearer #{auth_token}" })
    end

    private

    def auth_token
      auth_url = 'https://auth.bespokify.com/auth/realms/platform/protocol/openid-connect/token'
      response = HTTParty.post(auth_url, body: { 'username': @login, 'password': @password, 'grant_type': 'password', 'client_id': 'public-api' }, headers: { 'Content-Type': 'application/x-www-form-urlencoded' })
      JSON.parse(response.body).dig('access_token')
    end
  end
end
