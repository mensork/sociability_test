class Test
  def initialize
    @points = 0
    @questions_array = []
    current_path = File.dirname(__FILE__)
    file_name = current_path + "/data/questions.txt"
    if File.exist?(file_name)
      f = File.new(file_name, "r:UTF-8")
      @questions_array = f.readlines
      f.close
    else
      abort "Файл #{file_name} не найден"
    end
  end

  def run_test
    @questions_array.each do |i|
    puts i
    answer = STDIN.gets.to_i
    @points += answer
    end
  end

  attr_reader :points
end
