FROM sonarqube:6.5

ENV PLUGIN_DIR=/opt/sonarqube/extensions/plugins/

RUN mkdir -p ${PLUGIN_DIR}

WORKDIR ${PLUGIN_DIR}

# download plugins from:
# - http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/
# - https://sonarsource.bintray.com/Distribution/
# - https://github.com/SonarQubeCommunity/

RUN wget https://github.com/QualInsight/qualinsight-plugins-sonarqube-badges/releases/download/qualinsight-plugins-sonarqube-badges-3.0.1/qualinsight-sonarqube-badges-3.0.1.jar && \
  wget https://sonarsource.bintray.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-1.2.jar && \
  wget https://github.com/InfoSec812/sonar-auth-google/releases/download/1.6.1/sonar-auth-googleoauth-plugin-1.6.1.jar && \
  wget https://sonarsource.bintray.com/Distribution/sonar-java-plugin/sonar-java-plugin-4.9.0.9858.jar && \ 
  wget https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-3.1.1.5128.jar && \
  wget https://sonarsource.bintray.com/Distribution/sonar-php-plugin/sonar-php-plugin-2.9.2.1744.jar && \
  wget https://sonarsource.bintray.com/Distribution/sonar-github-plugin/sonar-github-plugin-1.4.1.822.jar && \
  wget https://sonarsource.bintray.com/Distribution/sonar-xml-plugin/sonar-xml-plugin-1.4.3.1027.jar && \
  wget https://sonarsource.bintray.com/Distribution/sonar-groovy-plugin/sonar-groovy-plugin-1.4.jar

WORKDIR $SONARQUBE_HOME

