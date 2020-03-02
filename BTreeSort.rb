class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload)
    @payload = payload
  end

  def push(value)
    if value <= @payload
      if @left.nil?
        @left = BinaryTree.new(value)
      else
        @left.push(value)
      end
    else
      if @right.nil?
        @right = BinaryTree.new(value)
      else
        @right.push(value)
      end
    end
  end

  def sort
    sort_impl([])
  end

  protected

  def sort_impl(array)
    @left.sort_impl(array) if @left
      array.push(@payload)
    @right.sort_impl(array) if @right
    return array
  end

end
