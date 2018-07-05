# nRF52840-MDK <br><small>开源、面向多协议无线物联网应用的开发套件</small>

## 简介

nRF52840-MDK 是一个小巧而功能丰富、开箱即用的物联网开发套件，基于 [Nordic](https://www.nordicsemi.com/) 高端系统级芯片 [nRF52840](http://www.nordicsemi.com/eng/Products/nRF52840)，可支持 *Bluetooth 5*、*Bluetooth Mesh*、*Thread*、*IEEE 802.15.4*、*ANT* 等无线协议，同时带有片上 Arm CryptoCell 加密子系统，是目前面向多协议无线物联网的理想解决方案。

nRF52840-MDK 集成了多功能调试器 [Arm Mbed DAPLink](https://os.mbed.com/docs/latest/tools/daplink.html)，提供“拖放式”下载固件、USB CDC 虚拟串口、CMSIS-DAP 仿真等功能。

nRF52840-MDK 还板载了来自 Microchip 的两端口 USB 2.0 高速集线器，只需一个 USB 接口即可同时使用 DAPLink 和 nRF52840 的 USB 设备控制器。同时还搭载了 64Mbit 超低功耗 QSPI FLASH、可编程按键、RGB LED、晶片天线及外部天线连接器等硬件资源。

nRF52840-MDK 支持跨平台开发，可以玩转多种开源软件框架（如：nRF5 SDK, Mesh, OpenThread, ZigBee 3.0, Mbed OS 5, Zephyr, Mynewt, iBeacon, Eddystone, Web Bluetooth 等等），并且提供丰富的在线文档及示例，帮助你加速物联网应用开发。

![](../images/nrf52940-mdk-plus-cable.jpg)


## 硬件规格

* Nordic 高端系统级芯片 nRF52840
	- ARM® Cortex®-M4F 内核
	- 1MB FLASH，256kB RAM
	- 支持 *Bluetooth 5*、*Bluetooth Mesh*、*Thread*、*IEEE 802.15.4*、*ANT* 等无线协议
	- 片上 NFC-A 标签
	- USB 2.0 设备控制器
	- ARM TrustZone® Cryptocell 310 加密子系统
* 板载 Arm Mbed DAPLink 多功能调工具：
	- MSC - 支持“拖放式”下载固件
	- CDC - 提供虚拟串口工具
	- HID - 兼容 CMSIS-DAP 仿真功能

* Microchip 两端口 USB 2.0 高速集线器
* 板载 64Mbit 超低功耗 QSPI FLASH 
* 拥有 多达 24 个可编程 GPIO
* IF Boot/Reset 按钮
* 用户可编程按钮和 RGB LED
* 板载 2.4G 晶片天线
* U.FL 连接器可用于选择外部天线
* 3.3V 稳压器，高效率、低静态电流、可输出 1A 峰值电流
* VBUS & VIN 电源路径管理
* 可正反面连接的 USB 3.1 Type-C 接口
* 2.54mm 标准引脚间距，可直接安装在面包板上
* 尺寸小巧 50mm x 23mm x 13mm (已焊排针)

## 引脚位置图

[![](../images/nrf52840-mdk-pinout.jpg)](../images/nrf52840-mdk-pinout.jpg)

## 软件资源

nRF52840-MDK 支持多种软件框架及协议：

| 框架/协议 | 简介 |
| ---------- | ----- |
| [nRF5 SDK](nrf5-sdk/) | Nordic 官方提供的 SDK |
| [nRF5 SDK for Mesh](mesh/) | Nordic 官方提供的低功耗蓝牙 Mesh 网络 SDK |
| [OpenThread](openthread/) | Nest 开源实现的 Thread® 网络协议|
| [Arm Mbed OS](mbedos/) | Arm 开源的物联网实时操作系统 |
| [Zephyr](zephyr/) | Linux 基金会开源的物联网实时操作系统 |
| [Mynewt](mynewt/) | Apache 开源模块化的实时操作系统，专门为内存和存储都极其有限而又要以极低功耗运行非常长时间的物联网设备设计 |
| [Arm Mbed DAPLink](daplink/) | Arm Mbed 针对 Arm Cortex 系列 CPU 开源 CMSIS-DAP 多功能调试器 |
| [Web Bluetooth](https://webbluetoothcg.github.io/web-bluetooth/) | 基于 Web 的低功耗蓝牙 API |
| [iBeacon](https://developer.apple.com/ibeacon/) | Apple 实现的 Beacon 协议 |
| [Eddystone](https://github.com/google/eddystone) | Google 开源的 Beacon 协议 |

## 硬件资料

| 版本 | 设计文档                   |
| -------- | ------------------------------ |
| V1.0     | [nRF52840-MDK V1.0 Pinout Diagram](../hardware/nrf52840-mdk-pinout-diagram-v1_0.pdf)<br/>[nRF52840-MDK V1.0 Schematic](../hardware/nrf52840-mdk-schematic_v1_0.pdf)<br/>[nRF52840-MDK V1.0 Board File](../hardware/nrf52840-mdk-board-file_v1_0.pdf)<br/>[nRF52840-MDK V1.0 3D STEP](../hardware/nrf52840-mdk-3d-step-v1_0.step)|

## 问题反馈

如果在开发过程遇到任何问题，可以通过 [GitHub Issue](https://github.com/makerdiary/nrf52840-mdk/issues) 寻求解决。

<a href="https://github.com/makerdiary/nrf52840-mdk/issues/new"><button data-md-color-primary="marsala"><i class="fa fa-github"></i> 创建 Issue</button></a>




