module Beaker
  module DSL
    module NewLibrary
      module Helpers

       def printhello
                   on(master, "echo hello")
        end

      end
    end
  end
end
