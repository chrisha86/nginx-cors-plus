FROM nginx

COPY default.conf /etc/nginx/conf.d/default.conf
COPY start.sh /
RUN chmod +x /start.sh
RUN mkdir -p /data
ENTRYPOINT /start.sh
