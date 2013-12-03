Pod::Spec.new do |s|
  s.name         = 'NSharpDate'
  s.version      = '1.0.0'
  s.summary      = 'a NSDate Category that adds convenient methods and properties for converting to NSString for IOS and OSX'
  s.description  = <<-DESC
  
* a NSDate Category that adds convenient methods and properties for converting to NSString and also 
* to create new NSDate objects with for example a day added or get the name of the day.
                   DESC

  s.homepage     = 'http://www.nsdatetostring.com/'
  s.license      = 'MIT'
  s.author       = { "Christian Engvall" => "crilleengvall@gmail.com" }
  s.social_media_url = 'https://twitter.com/crilleengvall'
  s.source       = { :git => "https://github.com/crilleengvall/NSharpDate.git", :tag => "1.0" }
  s.source_files  = 'NSharpDate', 'NSharpDate/*.{h,m}'
  s.exclude_files = 'NSharpDateExampleApplication'
  s.requires_arc = true

end