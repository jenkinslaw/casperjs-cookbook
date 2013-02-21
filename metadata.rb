name             'casperjs'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures casperjs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

recipe 'casperjs::default' , "Install casperjs"

depends "phantomjs"

attribute 'version',
  :display_name => 'Version',
  :decsription  => 'The Version of casperjs to install',
  :default      => '1.0.2'
