# docker-demo

##Docker containers are built from Dockerfiles.

A Dockerfile is like a recipe — it defines what goes in a container.

A Dockerfile consists of a sequence of commands.

You can find the full list of commands in the Dockerfile reference.

The above Dockerfile includes the following commands:

FROM defines the base layer for the container, in this case, a version of OpenJDK 11
'WORKDIR' sets the working directory to /opt/. Every subsequent instruction runs from within that folder
'ENV' is used to set an environment variable
COPY copies the jar files from the /target/ into the /opt/ directory inside the container
ENTRYPOINT executes java $JAVA_OPTS -jar app.jar inside the container

**$ docker build -t docker-demo .**

-t docker-demo defines the name ("tag") of your container — in this case, your container is just called docker-demo
. is the location of the Dockerfile and application code — in this case, it's the current directory

##What is a Docker image?

A Docker image is an archive containing all the files that go in a container.You can create many Docker containers from the same Docker image:

##You can list all the images on your system with the following command:

**$ docker images**

##Now you can run your app as follows:

**$ docker run -p 8081:8080 docker-demo**

http://localhost:8081/hello

**Kubernetes — the container orchestrator**
Container orchestrators are designed to run complex applications with large numbers of scalable components.
They work by inspecting the underlying infrastructure and determining the best server to run each container.
They can scale to thousands of computers and tens of thousands of containers and still work efficiently and reliably.
You can imagine a container orchestrator as a highly-skilled Tetris player.
Containers are the blocks, servers are the boards, and the container orchestrator is the player.


