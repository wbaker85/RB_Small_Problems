class TextAnalyzer
  def initialize(filepath)
    @text = File.read(filepath)
  end

  def process
    operation = yield
    result = self.send(operation)
    puts "#{result} #{operation.to_s}"
  end

  def paragraphs
    @text.scan(/\n\n/).size + 1
  end

  def lines
    @text.scan(/$/).size
  end

  def words
    @text.scan(/\b\w+\b/).size
  end
end

analyzer = TextAnalyzer.new('sample_text.txt')
analyzer.process { :paragraphs }
analyzer.process { :lines }
analyzer.process { :words }