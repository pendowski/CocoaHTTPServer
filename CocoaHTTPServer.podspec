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

  # it should point to 10.6 tags in those repos in Podfile in forked repos - cocoapods doesn't support this in Podspec 
  s.dependency "CocoaAsyncSocket"
  s.dependency "CocoaLumberjack"
end