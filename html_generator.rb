class HtmlGenerator
  attr_reader :code

  def initialize
    Kernel.send :undef_method, :p
    @code = ''
  end

  def generate(&block)
    instance_eval(&block)
    puts @code
  end

  def method_missing(attribute, *args, &block)
    attribute = attribute.to_s
    if block_given?
      @code << "<#{attribute}>"
      instance_eval(&block)
    else
      args.each do |contents|
        @code << "<#{attribute}>#{contents}</#{attribute}>"
      end
    end
    @code << "</#{attribute}>" if block_given?
  end
end
