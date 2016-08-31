class Blog

    def initialize
       @all_blog_posts = []
    end
    
    def create_blog_post
        puts "Time to create a new blog post!"
        new_blog_post = BlogPost.new
        @all_blog_posts << new_blog_post
        puts "Do you want to create another post? [Y/N]"
        create if gets.chomp.downcase == 'y'
    end
    
    def collect_all_posts
        return @all_blog_posts
    end
    
    def publish(all_blog_posts)
        all_blog_posts.each do |post|
            puts "\n #{post.get_title}"
            puts "#{post.get_time_stamp} \n"
            puts post.get_content
        end
    end
        

end


class BlogPost
    
   def set_title=(post_title)
       @post_title=post_title
   end

   def get_title
       return @post_title
   end

  def set_content=(post_content)
        @post_content=post_content
   end

   def get_content
       return @post_content
   end
    
   def initialize

       def get_time_stamp
           @time_stamp = Time.now
           return @time_stamp
       end
        
    puts "Enter your blog post title:"
    self.set_title = gets.chomp
    @title = self.get_title
        
    puts "Enter your post\'s content:"
    self.set_content = gets.chomp
    @content = self.get_content
        
    end

end

my_blog = Blog.new
my_first_post = my_blog.create_blog_post
my_second_post = my_blog.create_blog_post
all_blog_posts = my_blog.collect_all_posts

my_blog.publish(all_blog_posts)