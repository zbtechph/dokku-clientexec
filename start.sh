

if [ -f "/app/.heroku/php/etc/php/conf.d/00-ioncube.ini" ]; then
  echo "ioncube.ini already exists"
else
  mv 00-ioncube.ini /app/.heroku/php/etc/php/conf.d/
fi

if [ -f "/app/.heroku/php/lib/php/extensions/no-debug-non-zts-20210902/ioncube_loader_lin_8.1.so" ]; then
  echo "ioncube already exists"
else
  mv ioncube_loader_lin*.so /app/.heroku/php/lib/php/extensions/no-debug-non-zts-20210902/
fi

if [ -d "clientexec" ]; then
  echo "clientexec folder already exists"
else
  wget https://clientexec.s3.amazonaws.com/clientexec_6_6_1_ioncube.zip
  unzip clientexec_6_6_1_ioncube.zip
  rm clientexec_6_6_1_ioncube.zip
  cp clientexec/htaccess.txt clientexec/.htaccess
fi
