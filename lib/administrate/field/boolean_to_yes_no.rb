require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class BooleanToYesNo < Base
      class Engine < ::Rails::Engine
      end

      def to_s
        data ? 'Yes' : 'No'
      end
    end
  end
end
