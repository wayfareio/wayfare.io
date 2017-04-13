module Jekyll
  class ButtonTag < Liquid::Tag

    def initialize(tag, params, tokens)
      super
      @params = process(params)
    end

    def render(context)
      %{<a href="#{@params['url']}" class="btn btn-#{@params['style'] || 'primary'}#{@params['size'] ? ' btn-'+@params['size'] : ''}#{@params['class'] ? ' '+@params['class'] : ''}" target="#{@params['target'] ? '_'+@params['target'] : '_self'}">#{@params['text']}</a>}
    end

  protected

    def process(input)
      params = {}
      scanned = input.scan(/(\w+):\s*"([^"]+)"/)
      scanned.each do |scan|
        params[scan[0]] = scan[1]
      end
      params
    end
  end
end

Liquid::Template.register_tag('button', Jekyll::ButtonTag)
