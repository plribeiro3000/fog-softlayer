module Fog
  module Storage
    class Softlayer
      class Real

        # Delete an existing object
        #
        # ==== Parameters
        # * container<~String> - Name of container to delete
        # * object<~String> - Name of object to delete
        #
        def delete_object(container, object)
          request(
            :expects  => 204,
            :method   => 'DELETE',
            :path     => "#{Fog::Softlayer.escape(container)}/#{Fog::Softlayer.escape(object)}"
          )
        end

      end
    end
  end
end