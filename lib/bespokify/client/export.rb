module Bespokify
  class Client
    module Export
      def export(export_id)
        get("/exports/#{export_id}")
      end

      def create_export(options = {})
        post('/exports', options)
      end
    end
  end
end
