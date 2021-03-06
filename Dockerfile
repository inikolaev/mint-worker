FROM registry.opensource.zalan.do/stups/openjdk:8-42

MAINTAINER Zalando SE

COPY target/mint-worker.jar /

CMD java $JAVA_OPTS $(java-dynamic-memory-opts) $(newrelic-agent) $(appdynamics-agent) -jar /mint-worker.jar

ADD target/scm-source.json /scm-source.json
