module Bespokify
  class Client
    module Material
      def materials(options = {})
        response = self.class.get("/materials", { query: options })
        response.parsed_response
      end
    end
  end
end
