module UrijiIcons
  module Rails
    # IconHelper methods for Uriji Icons
    module IconHelper
      # Creates an icon tag given an icon name and possible icon
      # modifiers.
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

      # Private methods for IconHelper
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
