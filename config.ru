use Rack::Static,
  ###################
  # Regular expression to include all pages. 
  # You could also write something like ["index.html", "about_us.html"]
  ###################

  :urls => ["images", "css", "supersized"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
    'Content-Type'  => 'text/html',
    'Cache-Control' => 'public, max-age=86400'
  },
    File.open('public/index.html', File::RDONLY)
  ]
}

