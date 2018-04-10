$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'metaxa'

class Entity
  include Metaxa

  def extend_with(params)
    params.each do |k, v|
      introduce k, with_value: v
    end
    self
  end
end

entity = Entity.new.extend_with(name: 'John', age: rand(100), sex: 'M')

puts entity.name # => John
puts entity.age # => 0..100
puts entity.sex # => M
