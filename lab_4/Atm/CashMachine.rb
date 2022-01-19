class CashMachine
    
    def initialize()
        File.exist?("balance.txt") ? @balance = File.read("balance.txt").split("\n")[0].to_f : @balance = 100.0
    end
    
    #кладёт депозит на баланс
    def deposit
        puts "Введите сумму депозита."
        print "Сумма должна быть больше нуля: "
        deposit = gets.to_f
        if deposit <= 0
            puts "Error: введите корректное значение."
            puts "Ваш баланс: #{@balance}"
        end
        @balance += deposit
        puts "Ваш баланс: #{@balance}"
    end

    #вывод средств
    def withdraw
            puts "Введите сумму вывода."
            print "Сумма должна быть больше нуля: "
            withdraw = gets.to_f
            if (withdraw <= 0) 
                puts "Error: введите корректное значение."
                puts "Ваш баланс: #{@balance}"
                return 0
            elsif (withdraw > @balance)
                puts "Error: введённая сумма превышает баланс"
                puts "Ваш баланс: #{@balance}"
                return 0
            end
            @balance -= withdraw
            puts "Ваш баланс: #{@balance}"
    end

    def balance
        puts "Ваш баланс: #{@balance}"
    end

    def quit
        File.write("balance.txt", @balance)
    end
    
    def init
        init = CashMachine.new()
        loop do
            puts "="*20
            puts "ATM"
            puts "D Внести деньги"
            puts "W Вывести деньги"
            puts "B Показать баланс"
            puts "Q Выход"
            print "Вы ввели: "
            input = gets.to_s.chomp.capitalize()
            puts "="*20
            case input
            when "D"
                init.deposit
            when "W"
                init.withdraw
            when "B"
                init.balance
            when "Q"
                init.quit
                break
            else
                puts "Вы ввели неверный символ"
            end
        end
    end
end

# atm = CashMachine.new()
# atm.init