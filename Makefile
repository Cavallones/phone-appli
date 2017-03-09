TARGET_DIR := target
SRC_DIR := src

export ANDROID_HOME := /usr/lib/android-sdk/

JAVA_FILES := $(shell find $(SRC_DIR)/ -type f -name '*.java')
ORIG_FILES := $(shell find $(SRC_DIR)/ -type f -name '*.orig')
CLASS_FILES := $(shell find $(SRC_DIR)/ -type f -name '*.class')

MAVEN := mvn
GRADLE := gradle

FORMATTER := astyle
FORMATTER_FLAGS := --style=java --indent=spaces=4 -S -N -L -w -Y -m2 -M120 -f -p -H -E -k1 -W3 -j -v -z2 -xn -xc -xw

default: build

format: $(JAVA_FILES)
	$(FORMATTER) $(FORMATTER_FLAGS) $(JAVA_FILES)

build: format
	$(MAVEN) compile
	$(MAVEN) package
	$(GRADLE) build

clean:
	rm -f $(ORIG_FILES) $(CLASS_FILES)
	$(GRADLE) clean
	$(MAVEN) clean

mrproper: clean
