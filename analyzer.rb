file_names = ARGV

file_names.each do |file_name|
  lines = File.readlines file_name
  text = lines.join
  line_count = lines.size
  character_count = text.length
  character_count_no_space = text.gsub(/\s+/, "").length
  word_count = text.split.length
  sentence_count = text.split(/\.|\?|!/).length
  paragraph_count = text.split(/\n\n/).length

  puts "#{file_name.upcase}"
  puts " *#{line_count} lines."
  puts " *#{character_count} characters."
  puts " *#{character_count_no_space} characters(no whitespace)."
  puts " *#{word_count} words."
  puts " *#{sentence_count} sentences."
  puts " *#{paragraph_count} paragraphs."
  puts " *#{sentence_count / paragraph_count} sentence per paragraph."
  puts " *#{word_count / sentence_count} word per sentence."
end