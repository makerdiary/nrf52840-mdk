# Arm Mbed OS <br><small>An open-source platform operating system designed for the internet of things</small>

[![](images/mbedos-logo.png)](https://www.mbed.com/en/platform/mbed-os/)

## Introduction

[Arm Mbed OS](https://www.mbed.com/) is an open source embedded operating system designed specifically for the "things" in the Internet of Things. It includes all the features you need to develop a connected product based on an Arm Cortex-M microcontroller, including security, connectivity, an RTOS and drivers for sensors and I/O devices.

Mbed OS provides a platform that includes:

* Security foundations.
* Cloud management services.
* Drivers for sensors, I/O devices and connectivity.

Arm Mbed OS lets you write applications that run on embedded devices, by providing the layer that interprets your application's code in a way the hardware can understand.

Your application code is written in C and C++. It uses the application programming interfaces (APIs) that Mbed OS provides. These APIs allow your code to work on different microcontrollers in a uniform way. This reduces the challenges of getting started with Arm-based microcontrollers and integrating large software projects.

!!! info
	Mbed OS is now a Thread Certified Component. Using IPv6 with 6LoWPAN as the foundation, Thread technology provides a low-power, self-healing mesh network designed for the home.

For more information, please visit the [Mbed OS developer site](https://os.mbed.com/).

## Using Arm Mbed CLI

In the Arm Mbed ecosystem, you have a choice in how you want to develop, Online and Offline. For offline development, Arm Mbed CLI is provided. Mbed CLI is compatible with Windows, Linux and macOS. This option provides more configuration options but also requires slightly more setup.

### Install Mbed CLI

The setup process for Arm Mbed CLI depends on your operating system. Please choose your host operating system. The setup instructions for each operating system walk you through how to install Mbed CLI locally.

On Windows the easiest way to install Mbed CLI to run the [Mbed CLI Windows .exe installer](https://mbed-media.mbed.com/filer_public/50/38/5038849b-16a8-42f3-be7a-43d98c7a3af3/mbed_installer_v043.exe).

!!! note 
	The Windows installer only installs the GNU Arm embedded toolchain. If you want to compile using Arm Compiler 5 or IAR, visit the [supported compilers page](https://os.mbed.com/docs/v5.8/tools/index.html#compiler-versions).

On Linux and macOS, you can use Python and Pip:

``` sh
$ pip install mbed-cli

# if you have installed mbed-cli, you can update it with:
$ pip install mbed-cli --upgrade
```

You can ensure Mbed CLI installed correctly by running `mbed help` from your command-line.

### Setup environment

For any installed toolchain, be sure to add the Mbed CLI global configuration:

``` sh
$ mbed config -G GCC_ARM_PATH "<path to GNU Arm bin>"
[mbed] <path to GNU Arm bin> now set as global GCC_ARM_PATH

$ mbed config --list
[mbed] Global config:
GCC_ARM_PATH=<path to GNU Arm bin>
```

!!! note 
	You can also apply the same configuration to the IAR and ARM toolchains using `IAR_PATH` or `ARM_PATH`.

## Compile and program the board

Now you can try to compile one of the examples. Will use the `mbed-os-example-blinky` example here to keep it simple.

Open terminal and change directory to:

``` sh
$ cd ./nrf52840-mdk/examples/mbedos5/mbed-os-example-blinky/
```

Add mbed-os library to the example directory:

``` sh
mbed-os-example-blinky$ mbed config root .
mbed-os-example-blinky$ mbed add https://github.com/makerdiary/mbed-os.git
```

Invoke `mbed compile`, and specify the name of your platform and your installed toolchain (GCC_ARM, ARM, IAR). For example, for the NRF52840_MDK platform and GNU Arm embedded toolchain:

``` sh
mbed-os-example-blinky$ mbed compile --target NRF52840_MDK --toolchain GCC_ARM
```

![](images/compile_mbed_os_example_blinky.png)

You can add locally manufacturers id and platform name for nRF52840-MDK and see which boards are connected with `mbed detect`:

``` sh
$ mbedls --mock=1026:nRF52840_MDK
```

Adding the `--flash` argument will automatically flash the compiled program onto your board if it is connected to your computer.

``` sh
mbed-os-example-blinky$ mbed compile --target NRF52840_MDK --toolchain GCC_ARM --flash
``` 
Observe that the Green LED is blinking:

![](images/mbed_os_example_blinky_demo.gif)

!!! tip
    You can also follow the '[How to program your nRF52840-MDK](../getting-started/#how-to-program-your-nrf52840-mdk)' section to flash the compiled program.

## Bluetooth Low Energy examples

The `nrf52840-mdk` repository contains a collection of Bluetooth Low Energy example applications based on mbed OS and built with Arm Mbed CLI.

``` sh
./nrf52840-mdk/examples/mbedos5/mbed-os-example-ble
├── BLE_BatteryLevel
├── BLE_Beacon
├── BLE_Button
├── BLE_EddystoneObserver
├── BLE_EddystoneService
├── BLE_GAPButton
├── BLE_HeartRate
├── BLE_LED
├── BLE_LEDBlinker
├── BLE_Thermometer
└── README.md
```

Using a command-line tool, navigate to any of the example directories, like `BLE_BatteryLevel`:

``` sh
$ cd BLE_BatteryLevel
```

Add mbed-os library to the example directory:

``` sh
BLE_BatteryLevel$ mbed add https://github.com/makerdiary/mbed-os.git
```

Compile and run the example application on your board:

``` sh
BLE_BatteryLevel$ mbed compile --target NRF52840_MDK --toolchain GCC_ARM --flash
```

Open the **nRF Connect** app on your phone. Find your device which should be named `BATTERY`.

Then establish a connection with your device. Discover the services and the characteristics on the device. The `Battery service` has the UUID `0x180F` and includes the `Battery level characteristic` which has the UUID `0x2A19`.

[![](images/mbed-os-example-ble-battery.jpg)](images/mbed-os-example-ble-battery.jpg)

Now you can try other BLE examples on your board. Have fun!

## More examples

Over time, more example applications will be added to the repository. You can star or watch the [nrf52840-mdk](https://github.com/makerdiary/nrf52840-mdk) repository to stay up to date.

## Reference

* [Arm Mbed OS developer site](https://os.mbed.com/)
* [Mbed OS Documentation](https://os.mbed.com/docs/)
* [ARMmbed/mbed-os repository](https://github.com/ARMmbed/mbed-os)

## Create an Issue

Interested in contributing to this project? Want to report a bug? Feel free and click here:

<a href="https://github.com/makerdiary/nrf52840-mdk/issues/new"><button data-md-color-primary="marsala"><i class="fa fa-github"></i> Create an Issue</button></a>
