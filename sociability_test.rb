if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
current_path = File.dirname(__FILE__)
questions_path = current_path + "/data/questions.txt"
answers_path = current_path + "/data/answers.txt"

require_relative current_path + "/lib/test.rb"
require_relative current_path + "/lib/result_writer.rb"

social_test = Test.new(questions_path)
result_printer = ResultWriter.new(answers_path)


puts
puts "Добрый день! Ответьте на вопросы, используя цифры."
puts "Ответ 'нет' - нажмите 0"
puts "Ответ 'иногда' - нажмите 1"
puts "Ответ 'да' - нажмите 2"
puts

social_test.run_test
puts result_printer.result(social_test)
