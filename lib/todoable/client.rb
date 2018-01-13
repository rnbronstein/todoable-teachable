module Todoable
    class Client
        attr_accessor :username, :password

        # Initializes a new Client object using passed options hash or a block
        #
        # @param block
        # @return [Todoable::Client]
        def initialize(options = {})
            options.each do |k, v|
                instance_variable_set("@#{k}", v)
            end
            yield self if block_given?
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
