class FavoriteMailer < ApplicationMailer
  default from: "tara.willman@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@frozen-earth-51231.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@frozen-earth-51231.example>"
    headers["References"] = "<post/#{post.id}@frozen-earth-51231.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
