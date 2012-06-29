require 'rubygems'
require 'rack'
require 'rack-rewrite'
require 'thin'

use Rack::Static, :urls => ['/index.html', '/about.html', '/services.html', '/work.html', '/home.html', '/stylesheets', '/images', '/javascripts'], :root => 'public'

use Rack::Rewrite do
rewrite '/', '/index.html'
end

run Rack::Directory.new('public')
