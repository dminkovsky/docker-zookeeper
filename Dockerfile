FROM dminkovsky/java
RUN curl -L http://mirror.nexcess.net/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz | tar zx
RUN mv zookeeper-3.4.6 zookeeper
RUN mv zookeeper/conf/zoo_sample.cfg zookeeper/conf/zoo.cfg
EXPOSE 2181
ENTRYPOINT ["/root/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]
