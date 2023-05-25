class CashRegister
    attr_accessor :discount, :total, :items
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_transaction = 0
    end 

    def add_item(title, price, quantity = 1)
        quantity.times do 
            @items << title
        end
        @last_transaction = price * quantity
        @total += @last_transaction
    end

    def apply_discount 
        if discount > 0
            discount_amount = (@total * @discount.to_f / 100).round
            @total -= discount_amount
            "After the discount, the total comes to $#{@total}."
            else 
            "There is no discount to apply."
        end
    end
    def void_last_transaction
        @total -= @last_transaction
    end
end

cash_register_with_discount = CashRegister.new(20)