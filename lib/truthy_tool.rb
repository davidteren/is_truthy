# frozen_string_literal: true

require "zeitwerk"

Zeitwerk::Loader.for_gem.setup

# Main namespace.
module TruthyTool
  module_function

  def is_truthy?(val)
    !(val.eql?(false) ||
      val.eql?(nil) ||
      val.eql?(0) ||
      val.eql?("") ||
      val.eql?("\n") ||
      val.eql?([]) ||
      val.eql?({}))
  end
end
