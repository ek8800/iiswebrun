FROM eclipse-temurin:17-jdk-focal

ADD webAPI-0.0.1-SNAPSHOT.jar webAPI-0.0.1-SNAPSHOT.jar

ENV TZ=America/New_York
#ENV TZ=EST
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8080
ENTRYPOINT ["java", "-jar",  "webAPI-0.0.1-SNAPSHOT.jar"] 
#CMD ["iisurl=https://app-5412a6d3-741d-4c1a-87ae-6761a8efe407.cleverapps.io", "dbloadbalanceflag", "php_4_mysqlflag", "logRemoteDBflag"] 
#CMD ["iisurl=https://app-5412a6d3-741d-4c1a-87ae-6761a8efe407.cleverapps.io", "timerurl=https://app-5412a6d3-741d-4c1a-87ae-6761a8efe407.cleverapps.io", "directpgsqlflag", "logRemoteDBflag"] 
#CMD ["iisurl=https://app-5412a6d3-741d-4c1a-87ae-6761a8efe407.cleverapps.io", "timerurl=https://app-5412a6d3-741d-4c1a-87ae-6761a8efe407.cleverapps.io", "directpgsqlflag", "Client_CltSrvFlag"] 
#CMD ["iisurl=https://app-5412a6d3-741d-4c1a-87ae-6761a8efe407.cleverapps.io", "timerurl=https://app-5412a6d3-741d-4c1a-87ae-6761a8efe407.cleverapps.io", "php_10_pgsqlflag", "Client_CltSrvFlag"] 
CMD ["iisurl=https://app-5412a6d3-741d-4c1a-87ae-6761a8efe407.cleverapps.io", "timerurl=https://app-5412a6d3-741d-4c1a-87ae-6761a8efe407.cleverapps.io", "php_12_pgsqlflag", "Client_CltSrvFlag"] 

