Based on [OpenJDK jigsaw quick-start guide](http://openjdk.java.net/projects/jigsaw/quick-start)

[OpenJDK jigsaw specifications](http://openjdk.java.net/projects/jigsaw/spec/sotms/)

What's in the box:

- `start-java.sh` start a container using `openjdk:9-b177-jdk`
- `start-centos.sh` start a container using latest `centos` (for now, [it's not possible to (easily) use the jre produced by jlink in Alpine](https://github.com/anapsix/docker-alpine-java/issues/38) but [a solution exists](https://blog.jdriven.com/2017/11/modular-java-9-runtime-docker-alpine/))
- `compile.sh` is used to compile all modules, create corresponding jar files and create a JRE using jlink
- `run.sh` run the demo using the jre produced by `jlink`
- `clean.sh` clean all `.class`, `.jar` and the jre

How to use:

1. Read [the tutorial](http://openjdk.java.net/projects/jigsaw/quick-start)
2. Have a quick look at src directory
3. Read [the tutorial](http://openjdk.java.net/projects/jigsaw/quick-start)
4. Have a deeper look at src directory
5. `./start-java.sh`
6. `./compile.sh`
7. `exit`
8. `./start-centos.sh`
9. `./run.sh`
10. `./clean.sh`
11. `exit`
