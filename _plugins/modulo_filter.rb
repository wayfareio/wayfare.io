module Jekyll
  module ModuloFilter
    def mod(input, modulus)
      input.to_i % modulus.to_i
    end
  end
end

Liquid::Template.register_filter(Jekyll::ModuloFilter)
