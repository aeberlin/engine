module Locomotive
  module Liquid
    module Filters
      module Dimensions

        def dimensions(input)
          source = input.instance_variable_get(:@_source) || input
          Locomotive::Dragonfly.dimensions(source)
        end

      end

      ::Liquid::Template.register_filter(Dimensions)

    end
  end
end
