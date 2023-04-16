require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Keyhub < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://keyhub.id',
        :authorize_url => '/api/v1/oauth2/authorize',
        :token_url => '/api/v1/oauth2/token'
      }

      uid { raw_info['sub'] }

      info do
        {
          'public_key' => raw_info['public_key']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def callback_url
        options[:redirect_uri] || (full_host + callback_path)
      end
    end
  end
end
