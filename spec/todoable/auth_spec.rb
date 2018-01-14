require 'todoable'

describe Todoable::Auth do
    describe 'initialize' do
        # TODO: Stub these calls!
        it 'performs a successful authorization request on initialization' do
            client = Todoable::Client.new do |config|
                config.username = 'rnbronstein@gmail.com'
                config.password = 'todoable'
            end
            auth = Todoable::Auth.new(client)
            expect(auth.token).to be_truthy
        end
    end

end
