#!/bin/sh

if [ ! -d bin/module ]
then
    mkdir bin/module
else
    unlink bin/XeChat
    unlink bin/module/libXeChat.so
fi

cp Xten/bin/XtenFrame bin/XeChat
cp lib/libXeChat.so bin/module/
