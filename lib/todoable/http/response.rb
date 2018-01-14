require 'rest-client'
require 'json'

module Todoable
    module HTTP
        class Response
            attr_accessor :code, :success, :body

            # @param [RestClient::Response]
            # @return [Todoable::HTTP:Response]
            def initialize(response)
                @code = response.code
                @success = response.code >= 200 && response.code < 300
                @body = JSON.parse(response)
            end
        end
    end
end
