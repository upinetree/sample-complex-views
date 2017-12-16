class Comment
  attr_accessor :body, :locked

  def initialize(body: '', locked: false)
    @body = body
    @locked = locked
  end

  def locked?
    locked
  end
end
