WORKING_DIR=

all: java cs cpp py
  @echo done!

cs:
  cd $(WORKING_DIR)\code\cs
  make

cpp:
  cd $(WORKING_DIR)\code\cpp
  make

java:
  cd $(WORKING_DIR)\code\java
  make

py:
 cd $(WORKING_DIR)\code\py
  make

clean:
  cd $(WORKING_DIR)\code\cs
  make clean
  cd $(WORKING_DIR)\code\cpp
  make clean
  cd $(WORKING_DIR)\code\java
  make clean
  cd $(WORKING_DIR)\code\py
  make clean
  @echo finished cleaning!
