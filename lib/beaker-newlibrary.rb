require 'stringify-hash'
require 'beaker-newlibrary/helpers'
require 'beaker-newlibrary/version'


module Beaker
  module DSL
    module newlibrary

      # include your modules from the beaker-newlibrary folder. Example below:
      include Beaker::DSL::newlibrary::Helpers

    end
  end
end


# Boilerplate DSL inclusion mechanism:
# First we register our module with the Beaker DSL
Beaker::DSL.register( Beaker::DSL::newlibrary )
# Then we have to re-include our amended DSL in the TestCase,
# because in general, the DSL is included in TestCase far
# before test files are executed, so our amendments wouldn't
# come through otherwise
include Beaker::DSL
