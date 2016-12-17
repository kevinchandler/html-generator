# Example Usage

```
# index.rb

require_relative 'html_generator'

HtmlGenerator.new.generate do
  html do
    head { title 'Html Generator' }
    marquee 'the year is 2000'
    body do
      p 'this is a paragraph'
      p 'and another paragraph'
      p 'you can also do many paragraphs',
        'like this!',
        'you can add as many as you\'d like'
      ol do
        3.times { |i| li "heres an ordered list #{i+1}" }
      end
      ul { 3.times { li 'and here\'s an unordered list' } }
      (['lorem ipsum'] * 2).each { |lorem| div lorem }
    end
  end
end
```
