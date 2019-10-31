module UrijiIcons
  module Rails
    module IconHelper
      COLOR_ICONS = {
        'bell': 10,
        'comments-dots': 8,
        'credit-card': 6,
        'rocket': 9
      }.freeze

      def uj_icon(names = 'flag', original_options = {})
        options = original_options.deep_dup
        classes = []
        classes.concat Private.icon_names(names)
        classes.concat Array(options.delete(:class))
        text = options.delete(:text)
        right_icon = options.delete(:right)
        icon = content_tag(:i, nil, options.merge(class: classes))
        Private.icon_join(icon, text, right_icon)
      end

      def uj_color_icon(key, options = {})
        icon_name = "uj-#{key}-color"
        options = options.merge(class: "#{icon_name} #{options[:class]}")
        content_tag(:i, options) do
          paths = COLOR_ICONS[key.to_sym]
          paths.times.reduce(ActiveSupport::SafeBuffer.new) do |tags, i|
            tags + content_tag(:span, nil, class: "path#{i + 1}")
          end
        end
      end

      module Private
        extend ActionView::Helpers::OutputSafetyHelper

        def self.icon_join(icon, text, reverse_order = false)
          return icon if text.blank?
          elements = [icon, ERB::Util.html_escape(text)]
          elements.reverse! if reverse_order
          safe_join(elements, ' ')
        end

        def self.icon_names(names = [])
          array_value(names).map { |n| "uj-#{n}" }
        end

        def self.array_value(value = [])
          value.is_a?(Array) ? value : value.to_s.split(/\s+/)
        end
      end
    end
  end
end
