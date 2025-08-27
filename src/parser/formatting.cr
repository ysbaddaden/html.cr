module HTML
  class Parser
    # :nodoc:
    struct Formatting
      def initialize
        @list = [] of DOM::Element
      end

      def size : Int32
        @list.size
      end

      def [](index)
        @list[index]
      end

      def []?(index)
        @list[index]?
      end

      def []=(index, value)
        @list[index] = value
      end

      def empty?
        @list.empty?
      end

      def active?(name : String) : Bool
        @list.reverse_each do |el|
          break if marker?(el)
          return true if el.name == name
        end
        false
      end

      def active?(element : DOM::Element) : Bool
        @list.reverse_each do |el|
          break if marker?(el)
          return true if el == element
        end
        false
      end

      def <<(element) : Nil
        unless marker?(element)
          count = 0
          i = -1

          @list.reverse_each do |el|
            break if marker?(el)

            if el.name == element.name && el.attributes == element.attributes
              if (count += 1) == 3
                @list.delete_at(i)
                break
              end
            end

            i -= 1
          end
        end

        @list << element
      end

      def delete(element)
        @list.delete(element)
      end

      def clear_last_marker : Nil
        while element = @list.pop?
          break if marker?(element)
        end
      end

      def includes?(element)
        @list.includes?(element)
      end

      def reverse_each(&) : Nil
        @list.reverse_each { |element| yield element }
      end

      def replace(a, b) : Int32
        index = @list.index(a).not_nil!
        @list[index] = b
        index
      end

      def marker?(element)
        case element.name
        when "applet", "object", "marquee", "template", "td", "th", "caption"
          true
        else
          false
        end
      end
    end
  end
end
