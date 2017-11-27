#!/bin/sh
set -e

echo "compile"
javac -d mods --module-source-path src $(find src -name "*.java")

echo "build jars"
test -d mlib || mkdir mlib
jar --create --file=mlib/org.astro@1.0.jar --module-version=1.0 -C mods/org.astro .
jar --create --file=mlib/com.greetings.jar --main-class=com.greetings.Main -C mods/com.greetings .
jar --create --file=mlib/com.socket.jar -C mods/com.socket .
jar --create --file=mlib/org.fastsocket.jar -C mods/org.fastsocket .

echo "create jre"
jlink --module-path /usr/lib/jvm/java-9-openjdk-amd64/jmods:mlib --add-modules com.greetings --output greetingsapp
echo "done, jre size:" $(du -skh greetingsapp/ | awk '{print $1}')
