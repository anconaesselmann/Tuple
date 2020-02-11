Pod::Spec.new do |s|
  s.name             = 'Tuple'
  s.version          = '0.1.1'
  s.summary          = 'Tuple is a collection of utilities for working with ntuples.'
  s.swift_version    = '5.0'

  s.description      = <<-DESC
Tupple supports appending and prepending values to ntuples, turning ntuples into arrays, and turning arrays into ntuples.
                       DESC

  s.homepage         = 'https://github.com/anconaesselmann/Tuple'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ancona-esselmann' => 'axel@anconaesselmann.com' }
  s.source           = { :git => 'https://github.com/anconaesselmann/Tuple.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'Tuple/Classes/**/*'

end
