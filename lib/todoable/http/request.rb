require 'rest-client'
require 'todoable/http/response'

module Todoable
    module HTTP
        class Request
            BASE_URI = "http://todoable.teachable.tech/api/".freeze

            attr_accessor :uri, :response

            def initialize(uri)
                @uri = BASE_URI + uri
            end

            def auth(username, password)
                response = RestClient::Request.execute(
                    method: :post,
                    url: @uri,
                    user: username,
                    password: password
                )
                @response = Todoable::HTTP::Response.new(response)
                @response
            end

            def post

            end

            def get

            end

            def delete

            end

            def patch
            end

            def put
            end

            def options
            end
        end
    end
end
