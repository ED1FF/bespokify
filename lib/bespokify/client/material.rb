module Bespokify
  class Client
    module Material
      def materials(options = {})
        get('/materials', options)
      end

      def material(material_id)
        get("/materials/#{material_id}")
      end

      def create_material(options = {})
        post('/materials', options)
      end

      def update_material(material_id, options = {})
        patch("/materials/#{material_id}", options)
      end

      def delete_material(material_id)
        delete("/materials/#{material_id}")
      end
    end
  end
end
