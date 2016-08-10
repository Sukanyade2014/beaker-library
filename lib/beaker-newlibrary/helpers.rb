module Beaker
  module DSL
    module newlibrary
      module Helpers

       def printhello
                   on(master, "echo hello")
        end

      end
    end
  end
end
