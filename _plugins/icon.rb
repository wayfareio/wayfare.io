module Jekyll
  class IconTag < Liquid::Tag
    def initialize(tag_name, options, tokens)
      super
      split_opts = options.split(" ")
      @icon_name = split_opts[0]
      @icon_classes = ["icon", "icon-#{@icon_name}"]
      @icon_classes += split_opts[1..-1].map{|icon_class| "icon-#{icon_class}"}
    end

    def render(context)
      site_source = context.registers[:site].config['source']
      file_path = File.join(site_source, '_assets', 'icons', "#{@icon_name.strip}.svg")
      if File.exist?(file_path)
        icon = %{<span class="#{@icon_classes.join(' ')}">}
        icon << IO.readlines(file_path).join
        icon << %{</span>}
      end
    end
  end
end

Liquid::Template.register_tag('icon', Jekyll::IconTag)
