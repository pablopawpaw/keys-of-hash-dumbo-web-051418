class Hash
  def keys_of_hash(*arguments)
    array = []
    self.each do |key, value|
      arguments.each do |arg|
        if value == arg
          array << key
        end
      end
    end
    array
  end
end

hash = {
  "key1": "value1",
  "key2": "value2",
  "key3": "value3"
}

puts hash.keys_of_hash("value2","value1","value3")
