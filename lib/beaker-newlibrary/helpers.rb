module Beaker
  module DSL
    module newlibrary
      module Helpers
       def printhello
               hosts.each do |h|
                   on(h, "echo hello")
               end
        end

      end
    end
  end
end
