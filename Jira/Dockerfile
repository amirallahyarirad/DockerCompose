FROM atlassian/jira-software:10.7.2
USER root

# Add agent file
COPY atlassian-agent.jar /opt/atlassian/jira/

# Add agent to env
RUN echo 'export CATALINA_OPTS="-javaagent:/opt/atlassian/jira/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/jira/bin/setenv.sh

