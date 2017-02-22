module Jekyll
  module ImageFilter
    def image_src(image)
      case ENV['JEKYLL_ENV']
      when "staging" then
        %{data-src="/wayfareio-staging#{image}"}
      when "production" then
        %{data-src="/wayfareio#{image}"}
      else
        %{src="#{image}"}
      end
    end

    def image_class(classes)
      case ENV['JEKYLL_ENV']
      when "staging" then "img-cloud #{classes}"
      when "production" then "img-cloud #{classes}"
      else
        classes
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::ImageFilter)
