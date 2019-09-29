module Bespokify
  class Client
    module MeasurementProfile
      def measurement_profiles(options = {})
        get('/measurementProfiles', options)
      end

      def measurement_profile(measurement_id)
        get("/measurementProfiles/#{measurement_id}")
      end

      def create_measurement_profile(options = {})
        post('/measurementProfiles', options)
      end

      def update_measurement_profile(measurement_id, options = {})
        patch("/measurementProfiles/#{measurement_id}", options)
      end

      def delete_measurement_profile(measurement_id)
        delete("/measurementProfiles/#{measurement_id}")
      end

      def measurement_profille_revs(measurement_id, options = {})
        get("/measurementProfiles/#{measurement_id}/revs", options)
      end

      def measurement_profille_rev(measurement_id, rev_id)
        get("/measurementProfiles/#{measurement_id}/revs/#{rev_id}")
      end

      def measurement_profille_revert(measurement_id, options = {})
        get("/measurementProfiles/#{measurement_id}/revert", options)
      end
    end
  end
end
