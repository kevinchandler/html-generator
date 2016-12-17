# Example Usage

```
# index.rb

require_relative 'html_generator'

HtmlGenerator.new.generate do
  title 'Html Generator'
  body do
    p 'this is a paragraph'
    p 'this is another paragraph'
    ol do
      100.times do
        li 'Hello World'
      end
    end
    (['lorem ipsum'] * 10).each { |lorem| div lorem }
  end
end
```
