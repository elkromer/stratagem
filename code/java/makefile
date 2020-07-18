JSDK=\Libs\j2sdk1.5

JAVAC_NOOPTS=$(JSDK)\bin\javac -d . -g:none
#JAVAC_NOOPTS=\Libs\JBuilder8\bin\bmj.exe -target 1.1 -d . -g:none
#JAVAC=$(JAVAC_NOOPTS) -myopts

JAVADOC=$(JSDK)\bin\javadoc
JAR=$(JSDK)\bin\jar

all: compile jar
  @echo JAVA completed.

compile:
  $(JAVAC_NOOPTS) Main.java

jar:
  -mkdir meta-inf
  -copy manifest.mf meta-inf\manifest.mf
  $(JAR) cvfm main.jar manifest.mf manifest.mf Main.class  

clean:
  del main.jar
  del Main.class
  rmdir /Q /S meta-inf