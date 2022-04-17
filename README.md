# PICOLORA

This project will be used for implementation of Lora Library EBYTE E22 Module. Currently, the project contains build script that uses docker to build any Raspberry PI PICO project -> you don't need to set up RPi PICO build env on your linux machine, just use `build.sh` to build the project in docker.
A big thanks to [xingrz](https://github.com/xingrz) for the docker image.

## How to use this?
* `git clone --recursive https://github.com/mbalug7/picolora.git`
* `cd ./picolora`
* `git submodule update`
* `cd pico-sdk && git submodule update --init`

## How to make and build new project?

1. Go to `src`
2. Create a new directory with new project name (`blink` project has been included already)
3. In `src/CMakeLists.txt` add new line: `add_subdirectory(NEW_PROJECT_NAME)`
4. Create `CMakeLists.txt` in `src/NEW_PROJECT_NAME`. Check `CMakeLists.txt` file in `blink` example.
5. Write some code and build it with `./build.sh` script
6. If you can't run it, try: `sudo chmod +x build.sh`
7. After building, you will get new folder `src/build`
8. Copy `src/build/NEW_PROJECT_NAME/new_project_name.uf2` to RPI Pico drive. Official documentation: [RPI PICO OFFICIAL LINK](https://github.com/raspberrypi/pico-sdk#quick-start-your-own-project)
