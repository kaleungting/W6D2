class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      define_method("#{name}=") do |set|
        self.instance_variable_set("@#{name}", set)
      end
      define_method(name) do
        self.instance_variable_get("@#{name}")
      end
    end
  end

end
