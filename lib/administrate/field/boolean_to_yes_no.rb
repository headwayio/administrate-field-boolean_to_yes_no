require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class BooleanToYesNo < Base
      class Engine < ::Rails::Engine
      end

      def to_s
        I18n.t(data, scope: "administrate.fields.boolean_to_yes_no")
      end
    end
  end
end
