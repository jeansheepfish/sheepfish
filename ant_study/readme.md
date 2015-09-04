sayHelloWorld
	ant sayHelloWorld

default&basedir
	sayBaseDir:
		[echo] The base dir is: /root/ant_study

target
	[root@localhost target]# ant targetB
		Buildfile: /root/ant_study/target/build.xml
		targetA:
			[echo] Java Version: 1.7

		targetB:
			[echo] The base dir is: /root/ant_study/target

property
	example:
		[echo] name: amigo, age: 25
		
compile&run
	clean:
	   [delete] Deleting directory /root/ant_study/compile&run/build
	compile:
		[mkdir] Created dir: /root/ant_study/compile&run/build/classes
		[javac] /root/ant_study/compile&run/build.xml:9: warning: 'includeantruntime' was not set, defaulting to build.sysclasspath=last; set to false for repeatable builds
		[javac] Compiling 1 source file to /root/ant_study/compile&run/build/classes
	run:
		 [java] Hello,Amigo


jar
	java -jar helloworld.jar
	Hello,Amigo

java -Djava.ext.dirs=../lib getGyomuData/getGyomuData

