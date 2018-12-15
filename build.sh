#!/bin/bash
yum install -y php71-pdo php71-intl php71-mysqlnd php71-mbstring

mkdir -p /tmp/layer/
cd /tmp/layer

mkdir -p lib/php/7.1/modules

for lib in intl.so pdo.so mysqlnd.so pdo_mysql.so mbstring.so; do
  cp "/usr/lib64/php/7.1/modules/${lib}" lib/php/7.1/modules
done

zip -r /opt/layer/eccube_ext.zip .