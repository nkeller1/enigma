class Encrypt
  attr_reader :char_set

  def initialize
    @char_set = ("a".."z").to_a << " "
  end

  def encrypt_string(message, key)
    message_to_array = message.downcase.chars.map { |char| char.ord }
    shifted_message = message_to_array.map do |char|
        if (97..122).include?(char) || char == 32
          if (char + (key % 26)) > 122
             (char + (key % 26)) - 26
           else
             char + (key % 26)
           end
        else
          char
        end
      end
    shifted_message.map { |char| char.chr }.join
    end

    def encrypt_string(message, key)
      message_to_array = message.downcase.chars.map { |char| char }
      shifted_message = message_to_array.map do |char|
        (@char_set.index(char) + key).chr
        require "pry"; binding.pry
        shifted_message
      end
    end
end
