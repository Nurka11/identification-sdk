Pod::Spec.new do |s|
  s.name                = 'IdentificationSDK'
  s.version             = '2.1.0'
  s.summary             = 'Identification SDK'
  s.description         = <<-DESC
Idetification SDK pod
                       DESC
  s.homepage            = 'https://digital-id.kz'
  s.license             = 'MIT'
  s.author              = { 'DigitalID' => 'sergey.frolov@btsdigital.kz' }
  s.source              = { :git => 'https://github.com/btsdigital/identification-sdk.git', :tag => "v#{s.version}" }
  s.source_files        = 'IdentificationSDK/**/*.{h,m,swift}'
  s.vendored_frameworks = 'FaceTecSDK.xcframework'
  s.dependency          'Cordova', '6.2.0'
  s.ios.deployment_target = '11.0'
  s.swift_version         = '5.0'
end
