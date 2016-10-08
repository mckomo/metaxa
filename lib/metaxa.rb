require "metaxa/version"

module Metaxa

   def introduce(variable, with_value: true)

      module_name = "::Metaxa_#{variable}"

      eval "module #{module_name}; attr_accessor :#{variable}; end;"
      eval "include #{module_name};"

      set variable, with_value

   end

   def get(variable)
      instance_variable_get "@#{variable}"
   end

   def set(variable, value)
      instance_variable_set "@#{variable}", value
   end

end
