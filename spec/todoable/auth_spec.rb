require 'todoable'

describe Todoable::Auth do
    describe 'initialize' do
        # TODO: Stub these calls!
        it 'retrieves an authorization token when provided with correct credentials' do
            client = Todoable::Client.new do |config|
                config.username = 'rnbronstein@gmail.com'
                config.password = 'todoable'
            end
            auth = Todoable::Auth.new(client)
            expect(auth.token).to be_a(String)
        end

        # TODO: Handle auth errors
    end

end
