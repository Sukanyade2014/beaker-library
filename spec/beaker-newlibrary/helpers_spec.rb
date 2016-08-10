require 'spec_helper'
require 'beaker-newlibrary'

class ClassMixedWithDSLHelpers
  include BeakerTestHelpers
  include Beaker::DSL::newlibrary::Helpers
  def logger
    RSpec::Mocks::Double.new('logger').as_null_object
  end

end



  describe ClassMixedWithDSLHelpers do


           let( :master ) { make_host( 'master',   :roles => %w( master agent default)    ) }

        Beaker::DSL::newlibrary::Helpers::printhello
        # printhello
  end