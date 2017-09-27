class ResultPrinter
  def initialize
    @answers_array = []
    current_path = File.dirname(__FILE__)
    file_name = current_path + "/data/answers.txt"
    if File.exist?(file_name)
      f = File.new(file_name, "r:UTF-8")
      @answers_array = f.readlines
      f.close
    else
      abort "Файл #{file_name} не найден"
    end
  end

  def result(social_test)
    case social_test.points
      when 30..31
        @answers_array[0]
      when 25..29
        @answers_array[1]
      when 19..24
        @answers_array[2]
      when 14..18
        @answers_array[3]
      when 9..13
        @answers_array[4]
      when 4..8
        @answers_array[5]
    else
        @answers_array[6]
    end
  end
end
