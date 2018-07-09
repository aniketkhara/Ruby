def main_method
  yield(6,6)
end
main_method{|num1,num2,block|puts num1+num2}
main_method{|num1,num2,block|puts num1-num2}
main_method{|num1,num2,block|puts num1*num2}
main_method{|num1,num2,block|puts num1/num2}