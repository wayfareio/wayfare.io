module Jekyll
  module ImageFilter
    def image_src(image)
      case ENV['JEKYLL_ENV']
      when "staging" then
        %{data-src="wayfareio-staging#{image}"}
      when "production" then
        %{data-src="wayfareio#{image}"}
      else
        %{src="#{image}"}
      end
    end

    def image_class(classes)
      if !classes.nil? && classes != ""
        classes = classes.split(" ")
      else
        classes = []
      end
      case ENV['JEKYLL_ENV']
      when "staging" then classes << "img-cloud"
      when "production" then classes << "img-cloud"
      else
        classes
      end
      classes.join(" ")
    end
  end
end

Liquid::Template.register_filter(Jekyll::ImageFilter)
