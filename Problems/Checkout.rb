require 'pry'

class PricingRule

    attr_reader :item_sku, :unit_price, :sale_units, :sale_price

    def initialize(item_sku, unit_price, sale_units, sale_price)
        @item_sku = item_sku
        @unit_price = unit_price
        @sale_units = sale_units
        @sale_price = sale_price
    end
end

class Checkout

  attr_reader :total_price

  def initialize(pricing_rules)
    @pricing_rules = pricing_rules
    @total_price = 0
  end

  def scan(item)

    @pricing_rules.each do  |pricing_rule|
      if (pricing_rule.item_sku == item)
        return @total_price += pricing_rule.unit_price
      end
    end
  end
end

binding.pry

pricing_rule_a = PricingRule.new("A", 50, 3, 130)
pricing_rule_b = PricingRule.new("B", 30, 2, 45)
pricing_rules = [pricing_rule_a, pricing_rule_b]

checkout = Checkout.new(pricing_rules)
price = checkout.scan("A")
price2 = checkout.scan("B")
