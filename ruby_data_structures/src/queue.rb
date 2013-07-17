class Queue
  def initialize
    @length = 0
    @storage = []
  end

  def length
    @length
  end

  def add item
    @storage[@length]=item
    @length+=1
  end

  def remove
    if @length >= 0
      @length-=1
      @storage.shift
    end
  end

end