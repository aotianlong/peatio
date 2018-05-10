module Statistic
  class TradesGrid
    include Datagrid

    scope do
      Trade.order('created_at DESC')
    end

    filter(:currency, :enum, :select => Trade.currency.value_options, :default => 3, :include_blank => false)
    filter(:created_at, :datetime, :range => true, :default => proc { [1.day.ago, Time.now]})

    column(:id, :order => nil)
    column(:ask_id, :order => nil)
    column(:bid_id, :order => nil)
    column(:price)
    column(:volume)
    column(:strike_amount) { price * volume }
  end
end
