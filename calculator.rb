@result_text = ""


def display_inputer
  print "Insira o primeiro número: "
  number_one = gets.chomp.to_f
  
  print "Insira o segundo número: "
  number_two = gets.chomp.to_f

  return [number_one, number_two]
end

def sum
  number_one, number_two = display_inputer()
  result = number_one + number_two
  @result_text = "#{number_one} + #{number_two} = #{result}"
end

def subtract
  number_one, number_two = display_inputer()
  result = number_one - number_two
  @result_text = "#{number_one} - #{number_two} = #{result}"
end

def multiply
  number_one, number_two = display_inputer()
  result = number_one * number_two
  @result_text = "#{number_one} x #{number_two} = #{result}"
end

def divide
  number_one, number_two = display_inputer()
  result = number_one / number_two
  @result_text = "#{number_one} / #{number_two} = #{result}"
end

def pow
  number_one, number_two = display_inputer()
  result = number_one ** number_two
  @result_text = "#{number_one} ^ #{number_two} = #{result}"
end

def square_root
  print "Insira o primeiro número: "
  number_one = gets.chomp.to_f
  result = Math.sqrt(number_one)
  @result_text = "#{number_one} sqrt = #{result.round(2)}"
end

loop do
  puts @result_text
  puts "===== CALCULADORA ====="
  puts "=== 0: SAIR         ==="
  puts "=== 1: Sum          ==="
  puts "=== 2: Subtract     ==="
  puts "=== 3: Multiply     ==="
  puts "=== 4: Divide       ==="
  puts "=== 5: Pow          ==="
  puts "=== 6: Square Root  ==="

  option = gets.chomp.to_i

  case option
    when 1
      sum
    when 2
      subtract
    when 3
      multiply
    when 4
      divide
    when 5
      pow
    when 6
      square_root
    when 0
      break
    else 
      break
  end
  system "clear"
end
