name             'casperjs'
maintainer       'Jenkins Law Library'
maintainer_email 'webmaster@jenkinslaw.org'
license          'Apache 2.0'
description      'Installs/Configures casperjs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

recipe 'casperjs::default' , "Choose casperjs install method."
recipe 'casperjs::archive' , "Install casperjs from archive."
recipe 'casperjs::git' , "Install casperjs from a Git repository."

depends "phantomjs"
depends 'git'
recommends 'ruby'

attribute 'version',
  :display_name => 'Version',
  :description  => 'The Version of casperjs to install',
  :default      => '1.0.2'

attribute 'casperjs/install_method',
  :display_name => 'Install Method',
  :description  => 'Choose from the various install recipes included.',
  :default      => 'package'

attribute 'casperjs/archive/url_prefix',
  :display_name => 'Archive URL prefix',
  :description  => 'Configure where the archive is downloaded from.',
  :default      => 'https://codeload.github.com/n1k0/casperjs/zip/'

attribute 'casperjs/archive/url_suffix',
  :display_name => 'Archive URL suffix',
  :description  => 'Configure where the archive is downloaded from.',
  :default      => ''

attribute 'casperjs/git/source_dir',
  :display_name => 'CasperJs Source Directory',
  :description  => 'Where to install the casperjs source repository.',
  :default      => '/usr/local/src'

attribute 'casperjs/git/source_url',
  :display_name => 'CasperJs Git Repo URL',
  :description  => 'The URL for the CasperJs repository.',
  :default      => 'https://github.com/n1k0/casperjs.git'

