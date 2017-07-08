FROM frolvlad/alpine-oraclejdk8:cleaned

RUN   apk update \
&&   apk add ca-certificates wget \
&&   update-ca-certificates  


RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip"


RUN unzip jce_policy-8.zip

RUN mv UnlimitedJCEPolicyJDK8/*.jar $JAVA_HOME/jre/lib/security/
