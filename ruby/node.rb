class Node

  def initialize(object)
    @object = object
  end

  def element
    @object
  end

  def next=(next_object)
    @next_object = next_object if next_object
    nil
  end

  def next
    @next_object
  end

end
