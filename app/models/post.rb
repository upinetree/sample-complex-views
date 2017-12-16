class Post
  attr_accessor :body, :created_at

  def initialize(body: '', created_at: Time.current)
    @body = body
    @created_at = created_at
  end
end
