module Bespokify
  class Client
    module Draft
      def drafts(options = {})
        get('/drafts', options)
      end

      def material(draft_id)
        get("/drafts/#{draft_id}")
      end

      def create_material(options = {})
        post('/drafts', options)
      end

      def update_material(draft_id, options = {})
        patch("/drafts/#{draft_id}", options)
      end

      def delete_material(draft_id)
        delete("/drafts/#{draft_id}")
      end
    end
  end
end
