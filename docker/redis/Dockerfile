FROM redis:4.0.1-alpine

ARG TMP_CONFIG="/tmp/config"

COPY config ${TMP_CONFIG}

RUN set -x \
  && mkdir -p /etc/redis \
  && rm -rf /usr/local/bin/docker-entrypoint.sh \
  && cp -rf "${TMP_CONFIG}/redis.conf" /etc/redis/redis.conf \
  && cp -rf "${TMP_CONFIG}/docker-entrypoint.sh" /usr/local/bin/docker-entrypoint.sh \
  && chmod +x /usr/local/bin/docker-entrypoint.sh \
  && rm -rf "${TMP_CONFIG}"

EXPOSE 6379

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["redis-server", "/etc/redis/redis.conf"]
