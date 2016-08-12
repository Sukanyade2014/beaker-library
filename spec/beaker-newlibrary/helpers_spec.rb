require 'spec_helper'
require 'beaker-newlibrary'

class ClassMixedWithDSLHelpers
  include BeakerTestHelpers
  include Beaker::DSL::NewLibrary::Helpers
  def logger
   RSpec::Mocks::Double.new('logger').as_null_object
  end

end



  describe ClassMixedWithDSLHelpers do
           let( :master ) { make_host( 'master',   :roles => %w( master agent default)    ) }
           let( :host )   { double.as_null_object }
           let( :hosts )  { [ master] }
           let( :result ) { Beaker::Result.new( host, command ) }

            it 'if the host is the master, verify that it prints hello' do
                allow( master).to receive(:printhello).and_return(result)
                expect( master ).to receive( :logger ).with("hello")

              end

  end