module Bespokify
  class Client
    module Prediction
      def predict_body(options = {})
        post('/predict/body', options)
      end
    end
  end
end
