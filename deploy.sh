#!/bin/bash

cd ..
rsync -e ssh -lutr --exclude='.build' --exclude='.DS_Store' lubnin2024.ru linodew:/home/webserver/
cd lubnin2024.ru

ssh linodew << EOF
	export PATH=/home/webserver/swift/usr/bin:"${PATH}"
  	cd lubnin2024.ru
  	swift build -c release
EOF


ssh linode << EOF
	systemctl restart lubnin2024.service
	systemctl status lubnin2024.service
EOF
