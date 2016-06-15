class NotificationMailer < ApplicationMailer
  default from: "notifications@test.com"

  def forum_post_notification(user, forum_post)
    @user = user
    @forum_post =forum_post

    mail(
        to: "#{user.email}",
        subject: "[TestSite] New Post in #{forum_post.forum_thread.subject}"
    )
  end

end
