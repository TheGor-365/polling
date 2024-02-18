1.upto(10) do |index|
  post = Post.create(
    title: "Post #{index}",
    body: "post body #{index}",
    views: rand(100)
  )
  puts post.title
end
