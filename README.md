# number_converter

Number to text converter

Languages implemented:
- [x] Lithuanian
- [ ] Polish
- [ ] English
- [ ] Russian

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     number_converter:
       github: unknovvn/number_converter
   ```

2. Run `shards install`

## Usage

```crystal
require "number_converter"

...
convertedText = NumberConverter.to_lithuanian(8) # aštuoni
...

```

## Contributing

1. Fork it (<https://github.com/your-github-user/number_converter/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Andžej Korovacki](https://github.com/unknovvn) - creator and maintainer
