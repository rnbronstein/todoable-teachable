module Todoable
    class Client
        attr_accessor :username, :password, :token, :expires_at

        # Initializes a new Client object using a block
        # @return [Todoable::Client]
        def initialize(&block)
            yield self
        end

        # @return [Hash]
        def credentials
            {
                username: username,
                password: password
            }
        end
    end
end
