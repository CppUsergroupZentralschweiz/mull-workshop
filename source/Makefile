export CC=clang-9
export CXX=clang++-9

SOURCE_DIR=/source
BUILD_DIR=/workspace

INCLUDES=\
 -isystem /usr/include/c++/7.5.0 \
 -isystem /usr/include/x86_64-linux-gnu/c++/7.5.0 \
 -isystem /usr/include/c++/7.5.0/backward \
 -isystem /usr/local/include \
 -isystem /usr/lib/llvm-9/lib/clang/9.0.0/include \
 -isystem /usr/include/x86_64-linux-gnu \
 -isystem /usr/include \
 -isystem $(BUILD_DIR)/_deps/googletest-src/googletest/include \
 -isystem $(BUILD_DIR)/_deps/googletest-src/googlemock/include \
 -isystem $(BUILD_DIR)/_deps/googletest-src/googletest \
 -isystem $(BUILD_DIR)/_deps/googletest-src/googlemock

LD_SEARCH_PATHS=\
 --ld-search-path /lib/x86_64-linux-gnu/ \
 --ld-search-path /usr/lib/x86_64-linux-gnu/

OPTIONS=\
 --compdb-path=$(BUILD_DIR)/compile_commands.json \
 -ide-reporter-show-killed \
 --mutators cxx_all \
 --compilation-flags="$(INCLUDES)" \
 $(LD_SEARCH_PATHS)

all: build

roman: build
	mull-cxx --test-framework GoogleTest $(OPTIONS) $(BUILD_DIR)/roman/roman-test

rose: build
	mull-cxx --test-framework GoogleTest $(OPTIONS) $(BUILD_DIR)/gilded_rose/GildedRose-test

build: $(BUILD_DIR)/CMakeCache.txt
	cmake --build $(BUILD_DIR)

$(BUILD_DIR)/CMakeCache.txt:
	cd $(BUILD_DIR) && cmake -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_CXX_FLAGS="-fembed-bitcode -g -O0" $(SOURCE_DIR)
