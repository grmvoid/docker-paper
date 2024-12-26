#!/bin/bash

if [[ -n $JVM_XMS ]]
then
    JAVA_OPTS="-Xms${JVM_XMS} $JAVA_OPTS"
fi

if [[ -n $JVM_XMX ]]
then
    JAVA_OPTS="-Xmx${JVM_XMX} $JAVA_OPTS"
fi

exec java $JAVA_OPTS -jar "${PAPER_JAR}" --nogui