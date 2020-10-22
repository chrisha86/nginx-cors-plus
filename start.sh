if [ -n "$TARGET" ] ; then
	echo "Adding $TARGET to the NGINX config"
	sed -i -e "s,___TARGET___,$TARGET,g" /etc/nginx/conf.d/default.conf
else
	echo "Adding /data to NGINX config"
	sed -i -e "s,proxy_pass ___TARGET___;,root /data;,g" /etc/nginx/conf.d/default.conf
	mkdir -p /data
fi
nginx -g 'daemon off;'
