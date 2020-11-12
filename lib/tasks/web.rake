namespace :web do
  desc "Get List of All images"
  task :images, [:url] => [:environment] do |t, args|
    if args[:url].present?
      doc = Nokogiri::HTML(RestClient.get(args[:url]))
      images = doc.search('img').map{ |img| img['src'] }
      puts "Image list :: #{images}"
    else
      puts "Please pass URL in arugment 'rake web:images[url_of_web]'"
    end
  end
end
