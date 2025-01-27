require "prop_check/version"
require 'prop_check/property'
require 'prop_check/generator'
require 'prop_check/generators'
require 'prop_check/helper'
module PropCheck
  class Error < StandardError; end
  class UserError < Error; end
  class GeneratorExhaustedError < UserError; end
  class MaxShrinkStepsExceededError < UserError; end

  extend self

  def forall(*args, **kwargs, &block)
    PropCheck::Property.forall(*args, **kwargs, &block)
  end
end
