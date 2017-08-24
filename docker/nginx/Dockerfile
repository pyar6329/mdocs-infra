FROM nginx:1.13.3-alpine

ARG TMP_CONFIG="/tmp/config"

COPY config ${TMP_CONFIG}

RUN set -x \
  && cp -rf ${TMP_CONFIG}/nginx.conf /etc/nginx/nginx.conf \
  && cp -rf ${TMP_CONFIG}/default.conf /etc/nginx/conf.d/default.conf \
  && cp -rf ${TMP_CONFIG}/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh \
  && chmod u+x /usr/local/bin/docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]

