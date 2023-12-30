set :markdown_engine, :redcarpet

activate :blog do |blog|
  blog.prefix = "articles"
  blog.permalink = "{title}.html"
end
activate :directory_indexes

page '/*.xml', layout: false
