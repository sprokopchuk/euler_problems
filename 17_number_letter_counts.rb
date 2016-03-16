require 'numbers_and_words'


def count_letters from = 1, to = 1000
  str = ""
  (from..to).each do |number|
    str << I18n.with_locale(:en) {number.to_words hundreds_with_union: true}
  end
  str.gsub!(/\s|-/, "")
  str.length
end

p count_letters