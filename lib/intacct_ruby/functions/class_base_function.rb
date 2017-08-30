require 'intacct_ruby/functions/base_function'

module IntacctRuby
  module Functions
    # contains shared code for creating and updating projects
    class ClassBaseFunction < BaseFunction
      private

      def class_params
        xml = Builder::XmlMarkup.new

        [:classid, :name].each do |key|
          xml.tag!(key.to_s) { xml << @attrs[key].to_s }
        end

        xml << custom_field_params(@attrs[:customfields])

        xml.target!
      end
    end
  end
end
