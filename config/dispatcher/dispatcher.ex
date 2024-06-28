defmodule Dispatcher do
  use Matcher
  require Logger
  define_accept_types [
    html: [ "text/html", "application/xhtml+html" ],
    json: [ "application/json", "application/vnd.api+json", "application/sparql-results+json" ]
  ]

  @any %{}
  # @json %{ accept: %{ json: true } }
  @html %{ accept: %{ html: true } }

  ###############
  # CORS PROXY
  ###############

   match "/cors/*path", @any do
    Logger.info("Forwarding /cors/#{path}")
    Proxy.forward conn, path, "http://cors/"
  end

  ###############
  # FRONTEND
  ###############
  match "/assets/*path", @any do
    Proxy.forward conn, path, "http://frontend/assets/"
  end

  match "/@appuniversum/*path", @any do
    Proxy.forward conn, path, "http://frontend/@appuniversum/"
  end

  match "/*_path", @html do
    Proxy.forward conn, [], "http://frontend/index.html"
  end

  #################
  # NOT FOUND
  #################
  match "/*_", %{ last_call: true } do
    send_resp( conn, 404, "Route not found.  See config/dispatcher.ex" )
  end
end
