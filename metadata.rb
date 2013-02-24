name             'casperjs'
maintainer       'Jenkins Law Library'
maintainer_email 'webmaster@jenkinslaw.org'
license          'Apache 2.0'
description      'Installs/Configures casperjs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

recipe 'casperjs::default' , "Choose casperjs install method."
recipe 'casperjs::archive' , "Install casperjs from archive."

depends "phantomjs"

attribute 'version',
  :display_name => 'Version',
  :decsription  => 'The Version of casperjs to install',
  :default      => '1.0.2'

attribute 'install_method',
  :display_name => 'Install Method',
  :decsription  => 'Choose from the various install recipes included.',
  :default      => 'package'
