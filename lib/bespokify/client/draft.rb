module Bespokify
  class Client
    module Draft
      def drafts(options = {})
        get('/drafts', options)
      end

      def draft(draft_id)
        get("/drafts/#{draft_id}")
      end

      def create_draft(options = {})
        post('/drafts', options)
      end

      def update_draft(draft_id, options = {})
        patch("/drafts/#{draft_id}", options)
      end

      def delete_draft(draft_id)
        delete("/drafts/#{draft_id}")
      end
    end
  end
end
