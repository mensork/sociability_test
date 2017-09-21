if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require "./test.rb"
require "./result_printer.rb"

social_test = Test.new
result_printer = ResultPrinter.new

puts
puts "Добрый день! Ответьте на вопросы, используя цифры."
puts "Ответ 'нет' - нажмите 0"
puts "Ответ 'иногда' - нажмите 1"
puts "Ответ 'да' - нажмите 2"
puts

social_test.run_test
puts result_printer.result(social_test)
