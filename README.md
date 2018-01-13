# todoable gem
Solution for Teachable's code challenge, January 2018

### Usage
We'll probably figure this part out once we've written the gem!

### Development process

#### A very smol test
After setting up the file tree, writing the gemspec, and installing the gem, I determined I'd start with a test to make sure I'd included all my files correctly and wasn't causing a disaster:
```ruby
describe Todoable do
    it 'executes a simple method without error' do
        hello = Todoable.hello_world()
        expect(hello).to eq('Hello, world!')
    end
end
```
It felt good to get those passing green tests, until I remembered that all I had done was say 'Hello, world!'

#### Building the Client class
