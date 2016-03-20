name             "site-lamp"
maintainer       "Patrick Oberdorf"
maintainer_email "patrick@oberdorf.net"
license          "Apache2"
description      "Installs/Configures lamp"
long_description "Installs/Configures lamp"
version          "1.0.11"

supports         "debian",     "> 8.0"

depends          "php-fpm",    "~> 0.7.5"
depends		 "apache2",    "~> 3.1.0"
depends		 "apt",	       "~> 3.0.0"
