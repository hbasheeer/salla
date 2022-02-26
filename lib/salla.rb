require "faraday"
require "faraday_middleware"
require "salla/version"

module Salla
  autoload :Client, "salla/client"
  autoload :Collection, "salla/collection"
  autoload :Error, "salla/error"
  autoload :Resource, "salla/resource"
  autoload :Object, "salla/object"

  # High-level categories of salla API calls
  autoload :OrderResource, "salla/resources/order"
  autoload :OrderStatusResource, "salla/resources/order_status"
  autoload :OrderShipmentResource, "salla/resources/order_shipment"
  autoload :OrderTagResource, "salla/resources/order_tag"
  autoload :UserResource, "salla/resources/user"
  autoload :TaxResource, "salla/resources/tax"
  autoload :CountryResource, "salla/resources/country"
  autoload :CityResource, "salla/resources/city"
  autoload :ProductResource, "salla/resources/product"
  autoload :LanguageResource, "salla/resources/language"
  autoload :CustomerResource, "salla/resources/customer"
  autoload :CustomerGroupResource, "salla/resources/customer_group"
  autoload :BrandResource, "salla/resources/brand"
  autoload :BranchResource, "salla/resources/branch"
  autoload :CategoryResource, "salla/resources/category"
  autoload :SpecialOfferResource, "salla/resources/special_offer"

  # Classes used to return a nicer object wrapping the response data
  autoload :Order, "salla/objects/order"
  autoload :OrderStatus, "salla/objects/order_status"
  autoload :OrderHistory, "salla/objects/order_history"
  autoload :OrderShipment, "salla/objects/order_shipment"
  autoload :OrderTag, "salla/objects/order_tag"
  autoload :Country, "salla/objects/country"
  autoload :City, "salla/objects/city"
  autoload :Tax, "salla/objects/tax"
  autoload :User, "salla/objects/user"
  autoload :Category, "salla/objects/category"
  autoload :Brand, "salla/objects/brand"
  autoload :Branch, "salla/objects/branch"
  autoload :SpecialOffer, "salla/objects/special_offer"
  autoload :Product, "salla/objects/product"
  autoload :Language, "salla/objects/language"
  autoload :CustomerGroup, "salla/objects/customer_group"
  autoload :Customer, "salla/objects/customer"
end
