module Bespokify
  class Client
    module Pattern
      def patterns(options = {})
        get('/patterns', options)
      end

      def pattern(pattern_id)
        get("/patterns/#{pattern_id}")
      end

      def create_pattern(options = {})
        post('/patterns', options)
      end

      def update_pattern(pattern_id, options = {})
        patch("/patterns/#{pattern_id}", options)
      end

      def delete_pattern(pattern_id)
        delete("/patterns/#{pattern_id}")
      end
    end
  end
end
