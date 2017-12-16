class CommentsController < ApplicationController
  def index
    @comments = [
      Comment.new(body: 'こんにちは'),
      Comment.new(body: 'こんばんは', locked: true),
    ]

    @posts = [
      Post.new(body: '記事A'),
      Post.new(body: '記事B', created_at: Time.zone.yesterday),
    ]
  end
end
