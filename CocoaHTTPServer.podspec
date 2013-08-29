Pod::Spec.new do |s|
  s.name           = 'CocoaHTTPServer'
  s.version        = '2.2.1h'
  s.license        = 'BSD'
  s.summary        = 'A small, lightweight, embeddable HTTP server for Mac OS X or iOS applications.'
  s.homepage       = 'https://github.com/robbiehanson/CocoaHTTPServer'
  s.authors        = { 'Robbie Hanson' => 'cocoahttpserver@googlegroups.com' }
  s.source         = { :git => 'https://github.com/robbiehanson/CocoaHTTPServer.git', :commit => '06617003482b30a9b68ee2a5dd1a28d45fae014f' }
  s.source_files   = '{Core,Extensions}/**/*.{h,m}'


  s.ios.frameworks = 'CFNetwork', 'Security'
  s.osx.frameworks = 'CoreServices', 'Security'

  s.library        = 'xml2'
  s.xcconfig       = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  # it should point to commit 43f7e25c3a4a98ef205ab76c5d8fadb06bb5ea01 but you can't do that in Pods for now - only versions
  s.dependency "CocoaAsyncSocket"
  s.dependency "CocoaLumberjack", "~> 1.3.0"
end