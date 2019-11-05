class Enigma
  attr_reader :offset, :codekey, :encrypt

  def initialize(codekey = Codekey.new, encrypt = Encrypt.new)
    # @char_set = ("a".."z").to_a << " "
    @offset = Offset.new
    @codekey = codekey
    @encrypt = encrypt
  end

  def shift_amount
    key_value = @codekey.seperate_to_pairs
    offset = @offset.create_last_four_hash
    shift = key_value.merge(offset) do |key, old, new|
      old + new
    end
    shift
  end

  def encrypt(message, key =  nil, date = nil)
    if key != nil
      @codekey = Codekey.new(key)
    else
      @codekey = Codekey.new
    end
    if date != nil
      @offset = Offset.new(date)
    else
      @offset = Offset.new
    end

  def encrypt_string(message, key)
    message_to_array = message.downcase.chars.map { |char| char }
    list = {}
      offset_rotate = shift_amount.values
      split_message = message.split(//).map do |char|
        new_char = @encrypt.encrypt_string(char, offset_rotate.first)
        offset_rotate.rotate!
        new_char
      end
    list[:encryption] = split_message.join
    list[:key] = key
    list[:date] = date
    list
  end
end
#end

