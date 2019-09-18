module Bespokify
  class Client
    API_ENDPOINT = 'https://auth.bespokify.com/auth/realms/platform/protocol/openid-connect/token'.freeze

    def initialize(login, password)
      @login = login
      @password = password
    end

    def auth_token
      response = HTTParty.post(API_ENDPOINT, body: { 'username': @login, 'password': @password, 'grant_type': 'password', 'client_id': 'public-api' }, headers: { 'Content-Type': 'application/x-www-form-urlencoded' })
      JSON.parse(response.body).dig('access_token')
    end
  end
end
