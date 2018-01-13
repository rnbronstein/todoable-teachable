require 'todoable'

describe Todoable do
    it 'executes a simple method without error' do
        hello = Todoable.hello_world()
        expect(hello).to eq('Hello, world!')
    end
end
