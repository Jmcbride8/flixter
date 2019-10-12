%w[
  .ruby-version
  .rbenv-vars
  tmp/restart.txt
  tmp/caching-dev.txt
  config/*.rb
].each { |path| Spring.watch(path) }
