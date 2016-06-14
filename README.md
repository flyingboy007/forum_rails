# Database Structure

1. User- Devise

* email
* password

has_many :forum_threads
has_many :forum_posts

2. ForumThread

* user_id:integer
* subject:string

belongs_to :user
has_many :forum_posts

3. ForumPost

* forum_thread_id:integer
* user_id:integer
* body:text

belongs_to :user
belongs_to :forum_thread


