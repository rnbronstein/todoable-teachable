require 'todoable/http/request'
require 'pry'

module Todoable
    class Auth
        attr_accessor :token, :expires_at

        # @param [Todoable::Client] client
        # @return [Todoable::Auth]
        def initialize(client)
            request = Todoable::HTTP::Request.new('authenticate').auth(client.username, client.password)

            if request.success
                @token = request.body['token']
                @expires_at = request.body['expires_at']
            end

            # TODO: Add error handling

        end
    end
end
