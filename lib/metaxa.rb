require 'metaxa/version'

module Metaxa
  def introduce(variable, with_value: true)
    var_module = Module.new do
      attr_accessor variable.to_sym
    end

    extend var_module

    set(variable, with_value)
  end

  def get(variable)
    instance_variable_get("@#{variable}")
  end

  def set(variable, value)
    instance_variable_set("@#{variable}", value)
  end
end
