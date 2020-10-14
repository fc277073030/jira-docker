FROM atlassian/jira-servicedesk
USER root
ENV CATALINA_OPTS="-javaagent:/opt/atlassian/jira/atlassian-agent.jar ${CATALINA_OPTS}"
COPY atlassian-agent.jar /opt/atlassian/jira/
COPY mysql-connector-java-8.0.21.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib
