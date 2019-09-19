module Bespokify
  class Client
    module Material
      def materials(options = {})
        get('/materials', options)
      end
    end
  end
end
