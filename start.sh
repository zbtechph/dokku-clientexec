
mv 00-ioncube.ini /app/.heroku/php/etc/php/conf.d/
mv ioncube_loader_lin*.so /app/.heroku/php/lib/php/extensions/no-debug-non-zts-20210902/
wget https://clientexec.s3.amazonaws.com/clientexec_6_6_1_ioncube.zip
unzip clientexec_6_6_1_ioncube.zip
cp clientexec/htaccess.txt clientexec/.htaccess
