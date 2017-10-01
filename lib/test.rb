class Test
  attr_reader :points

  def initialize(file_name)
    @points = 0
    @questions_array = read_from_file(file_name)
  end

  def read_from_file(file_name)
    if File.exist?(file_name)
      f = File.new(file_name, "r:UTF-8")
      @questions_array = f.readlines
      f.close
    else
      abort "Файл #{file_name} не найден"
    end
    @questions_array
  end

  def run_test
    @questions_array.each do |i|
      answer = nil
      until (0..2).include?(answer)
        puts i
        answer = STDIN.gets.to_i
      end
      @points += answer
    end
  end

end
