require 'todoable'

describe Todoable::Client do
    describe 'initialize' do
        it 'can initialize a client object using a username and password' do
            client = Todoable::Client.new do |config|
                config.username = 'foo'
                config.password = 'bar'
            end
            expect(client).to be_a(Todoable::Client)
            expect(client.username).to eq('foo')
            expect(client.password).to eq('bar')
        end
    end

end
