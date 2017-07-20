module Fog
  module Compute
    class OracleCloud
      class Real
      	def list_images
          response = request(
            :expects  => 200,
            :method   => 'GET',
            :path     => "/machineimage/Compute-#{@identity_domain}/"
          )
          response
        end
      end
    end
  end
end
