module Bespokify
  class Client
    module ExportProfile
      def export_profiles(options = {})
        get('/exportProfiles', options)
      end

      def export_profile(export_profile_id)
        get("/exportProfiles/#{export_profile_id}")
      end

      def create_export_profile(options = {})
        post('/exportProfiles', options)
      end

      def update_export_profile(export_profile_id, options = {})
        patch("/exportProfiles/#{export_profile_id}", options)
      end

      def delete_export_profile(export_profile_id)
        delete("/exportProfiles/#{export_profile_id}")
      end
    end
  end
end
