POMPATH = $GITHUB_WORKSPACE/pom.xml
cd $POMPATH && mvn help:evaluate -Dexpression=project.version
