require 'intacct_ruby/functions/class_base_function'

module IntacctRuby
  module Functions
    # creates a project instance in Intacct
    class CreateClass < ClassBaseFunction
      def initialize(attrs = {})
        super("create_class_#{attrs[:classid]}", attrs)
      end

      def to_xml
        super do |xml|
          xml.create_class do
            xml << class_params
          end
        end
      end
    end
  end
end
