class Minilang
  COMMAND_LIST = %w(ADD SUB MULT DIV MOD POP PRINT PUSH)

  def initialize(commands)
    @commands = commands.split
    @register = 0
    @stack = []
  end

  def eval
    @commands.each { |command| eval_command(command) }
  end

  private

  def eval_command(command)
    if COMMAND_LIST.include?(command)
      self.send(command.downcase.to_sym)
    elsif command.match?(/^(\-|)\d+$/)
      @register = command.to_i
    else
      raise NoMethodError.new("invalid token: #{command}")
    end
  end

  def pop_stack
    raise RangeError.new('Empty Stack!') if @stack.size == 0
    @stack.pop
  end

  def push
    @stack.push(@register)
  end

  def print
    puts @register
  end

  def pop
    @register = pop_stack
  end
    
  def add
    @register += pop_stack
  end

  def sub
    @register -= pop_stack
  end

  def mult
    @register *= pop_stack
  end

  def div
    @register /= pop_stack
  end

  def mod
    @register = @register % pop_stack
  end

end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# # 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # 5
# # 3
# # 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # 10
# # 5

# Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # 8

Minilang.new('6 PUSH').eval
# # (nothing printed; no PRINT commands)