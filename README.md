# nRF52840-MDK 

> An Open-Source, Micro Development Kit for IoT Applications using the nRF52840 SoC

## Description

The nRF52840-MDK is a versatile, easy-to-use IoT hardware platform for *Bluetooth 5*, *Bluetooth Mesh*, *Thread*, *IEEE 802.15.4*, *ANT* and 2.4GHz proprietary applications using the nRF52840 SoC.

The development kit comes with a fully integrated debugger (also known as [DAPLink](https://os.mbed.com/docs/latest/tools/daplink.html)) that provides USB drag-and-drop programming, USB Virtual COM port and CMSIS-DAP interface.

The kit contains a Microchip USB 2.0 Hi-Speed hub controller with two downstream ports: one for DAPLink interface and one for nRF52840 USB device controller. The kit also features ultra-low power 64-Mb QSPI FLASH memory, programmable user button, RGB LED, up to 24 GPIOs, antenna selection for custom applications.

It supports the standard Nordic Software Development Tool-chain using GCC, Keil and IAR. It can also be used to play with many popular frameworks, such as nRF5 SDK, nRF5 SDK for Mesh, OpenThread, ZigBee 3.0, Mbed OS 5, Zephyr, Mynewt, Web Bluetooth, iBeacon, Eddystone, and more.

![](docs/images/nrf52940-mdk-plus-cable.jpg)

## Hardware Features

* Nordic nRF52840 System-on-Chip
	- ARM® Cortex®-M4F processor optimized for ultra-low power operation
	- Combining *Bluetooth 5*, *Bluetooth Mesh*, *Thread*, *IEEE 802.15.4*, *ANT* and *2.4GHz proprietary*
	- On-chip NFC-A tag
	- On-chip USB 2.0 (Full speed) controller
	- ARM TrustZone® Cryptocell 310 security subsystem
	- 1 MB FLASH and 256 kB RAM
* Program/Debug options with DAPLink
	- MSC - drag-n-drop programming flash memory
	- CDC - virtual com port for log, trace and terminal emulation
	- HID - CMSIS-DAP compliant debug channel
	- WEBUSB HID - CMSIS-DAP compliant debug channel
* Microchip 2-Port USB 2.0 Hi-Speed Hub Controller
* External ultra-low power 64-Mb QSPI FLASH memory
* Up to 24 GPIOs available via headers
* IF Boot/Reset Button
* User programmable Button and RGB LED
* On-board 2.4G chip antenna 
* U.FL connector selectable for external antenna
* 3.3V regulator with 1A peak current output
* VBUS & VIN Power-Path Management
* Reversible USB 3.1 Type-C Connector
* Breadboard-friendly with dual 18-Pin headers
* Measures 1.97" x 0.9" x 0.51" (50mm x 23mm x 13mm) with headers soldered in

## Pinout Diagram

[![](docs/images/nrf52840-mdk-pinout.jpg)](docs/images/nrf52840-mdk-pinout.jpg)

## Documentation

We have provided develeopment docs to make it a pleasure to work with nRF52840-MDK. 
Get what you need here or visit [https://wiki.makerdiary.com/nrf52840-mdk](https://wiki.makerdiary.com/nrf52840-mdk).

* [Getting Started](https://wiki.makerdiary.com/nrf52840-mdk/getting-started/)
* [Using nRF5 SDK](https://wiki.makerdiary.com/nrf52840-mdk/nrf5-sdk/)
* [Using nRF5 SDK for Mesh](https://wiki.makerdiary.com/nrf52840-mdk/mesh/)
* [Using OpenThread](https://wiki.makerdiary.com/nrf52840-mdk/openthread/)
* [Using Arm Mbed OS](https://wiki.makerdiary.com/nrf52840-mdk/mbedos/)
* [Using Zephyr](https://wiki.makerdiary.com/nrf52840-mdk/zephyr/)
* [Using Mynewt](https://wiki.makerdiary.com/nrf52840-mdk/mynewt/)
* [Using DAPLink](https://wiki.makerdiary.com/nrf52840-mdk/daplink/)

## Hardware Resource

| Releases | Design Files                   |
| -------- | ------------------------------ |
| V1.0     | [nRF52840-MDK V1.0 Pinout Diagram](docs/hardware/nrf52840-mdk-pinout-diagram-v1_0.pdf)<br/>[nRF52840-MDK V1.0 Schematic](docs/hardware/nrf52840-mdk-schematic_v1_0.pdf)<br/>[nRF52840-MDK V1.0 Board File](docs/hardware/nrf52840-mdk-board-file_v1_0.pdf)<br/>[nRF52840-MDK V1.0 3D STEP](docs/hardware/nrf52840-mdk-3d-step-v1_0.step)|

## How to get nRF52840-MDK

nRF52840-MDK is available on the following channels (click to go directly to the product):

[![makerdiary store](docs/images/makerdiary-store-logo.png)](https://store.makerdiary.com)

[![SeeedStudio](docs/images/seeed_logo_2018_horizontal.png)](https://www.seeedstudio.com/nRF52840-Micro-Development-Kit-p-3079.html)

[![Tindie](docs/images/tindie-logo.png)](https://www.tindie.com/stores/Zelin/)

## Contributing

We would love for you to contribute to this project and help make it even better than it is today! See our [Contributing Guidelines](https://wiki.makerdiary.com/nrf52840-mdk/CONTRIBUTING) for more information.

## License

**MIT License**

Copyright (c) 2018 [makerdiary.com](https://makerdiary.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

