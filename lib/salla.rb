require "faraday"
require "faraday_middleware"
require "salla/version"

module Salla
  autoload :Client, "salla/client"
  autoload :Collection, "salla/collection"
  autoload :Error, "salla/error"
  autoload :Resource, "salla/resource"
  autoload :Object, "salla/object"

  # High-level categories of salla API callsس
  autoload :OrderResource, "salla/resources/order"
  autoload :OrderStatusResource, "salla/resources/order_status"

  # Classes used to return a nicer object wrapping the response data
  autoload :Order, "salla/objects/order"
  autoload :OrderStatus, "salla/objects/order_status"
  autoload :OrderHistory, "salla/objects/order_history"

end
