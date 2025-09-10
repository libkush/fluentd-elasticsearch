FROM fluent/fluentd:edge-debian

USER root

# To connect to docker.elastic.co/elasticsearch/elasticsearch:8.x, it requires elasticsearch v8 gem
# Ref. https://github.com/elastic/elasticsearch-ruby/blob/main/README.md#compatibility
RUN ["gem", "install", "elasticsearch", "--no-document", "--version", "8.19.0"]

RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document", "--version", "5.4.3"]
USER fluent
