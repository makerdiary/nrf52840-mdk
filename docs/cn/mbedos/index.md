# Arm Mbed OS <br><small>Arm 开源、面向物联网小型设备的实时操作系统</small>

[![](../../mbedos/images/mbedos-logo.png)](https://www.mbed.com/en/platform/mbed-os/)

## 简介

[Arm Mbed OS](https://www.mbed.com/) 是 Arm 专门为物联网设备而设计的开源嵌入式操作系统，主要面向 ARM Cortex-M 系列微控制器，非常适合涉及智能城市、智能家庭和穿戴式设备等领域的应用程序。

相比于其他嵌入式操作系统，Arm Mbed OS 的主要优势在于：

* 安全性：提供 mbed TLS 和 mbed uVisor 安全机制
* 连接性：支持多种协议栈，包括 Bluetooth LE, Wi-Fi, 6LoWPAN, Thread, Lora等等
* 完整的工具链支持：提供在线 IDE, mbed CLI 以及 第三方 IDE
* 良好的社区生态

!!! info
	Arm Mbed OS 已经获得 Thread 组件认证，可以使用 Thread 创建低功耗、基于 6LoWPAN 的 mesh 网络。

了解更多内容，可以直接访问 [Mbed OS 开发者网站](https://os.mbed.com/).

## 使用 Arm Mbed CLI

Arm 为 Mbed OS 提供了离线开发工具 Mbed CLI，该工具支持跨平台，可以运行在 Windows，Linux 和 macOS 平台上。

### 安装 Mbed CLI

在 Windows 上，最简单的方法是使用 [Mbed CLI Windows .exe 安装包](https://mbed-media.mbed.com/filer_public/50/38/5038849b-16a8-42f3-be7a-43d98c7a3af3/mbed_installer_v043.exe)。

在 Linux 和 macOS系统，可以使用 `pip` 进行安装：

``` sh
$ pip install mbed-cli
```

安装完成后，可以使用 `mbed help` 验证是否正确安装。

### 设置开发环境

接着，需要添加工具链路径配置：

``` sh
$ mbed config -G GCC_ARM_PATH "<path to GNU Arm bin>"
[mbed] <path to GNU Arm bin> now set as global GCC_ARM_PATH

$ mbed config --list
[mbed] Global config:
GCC_ARM_PATH=<path to GNU Arm bin>
```

## 添加 nRF52840-MDK 支持

首先，从 Arm Mbed 官方仓库克隆 Mbed OS 源码：

``` sh
$ git clone https://github.com/ARMmbed/mbed-os.git
```

在 `mbed-os\targets\targets.json` 文件中添加以下目标描述：

``` json
    "NRF52840_MDK": {
        "inherits": ["MCU_NRF52840"],
        "release_versions": ["5"],
        "device_name": "nRF52840_xxAA"
    },
```

另外需要在 `mbed-os/targets/TARGET_NORDIC/TARGET_NRF5x/TARGET_NRF52/TARGET_MCU_NRF52840/TARGET_NRF52840_MDK/` 增加 `PinNames.h` 和 `device.h` 文件：

``` c
// PinNames.h
#ifndef MBED_PINNAMES_H
#define MBED_PINNAMES_H

#include "cmsis.h"
#include "nrf_gpio.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    PIN_INPUT,
    PIN_OUTPUT
} PinDirection;

#define PORT_SHIFT  3

///> define macro producing for example Px_y = NRF_GPIO_PIN_MAP(x, y)
#define PinDef(port_num, pin_num) P##port_num##_##pin_num = NRF_GPIO_PIN_MAP(port_num, pin_num)


typedef enum {    
    PinDef(0 , 0), // P0_0 = 0...
    PinDef(0 , 1),
    PinDef(0 , 2),
    PinDef(0 , 3),
    PinDef(0 , 4),
    PinDef(0 , 5),
    PinDef(0 , 6),
    PinDef(0 , 7),
    PinDef(0 , 8),
    PinDef(0 , 9),
    PinDef(0 , 10),
    PinDef(0 , 11),
    PinDef(0 , 12),
    PinDef(0 , 13),
    PinDef(0 , 14),
    PinDef(0 , 15),
    PinDef(0 , 16),
    PinDef(0 , 17),
    PinDef(0 , 18),
    PinDef(0 , 19),
    PinDef(0 , 20),
    PinDef(0 , 21),
    PinDef(0 , 22),
    PinDef(0 , 23),
    PinDef(0 , 24),
    PinDef(0 , 25),
    PinDef(0 , 26),
    PinDef(0 , 27),
    PinDef(0 , 28),
    PinDef(0 , 29),
    PinDef(0 , 30),
    PinDef(0 , 31),    
    
    PinDef(1 , 0), //P1_1 = 32...
	PinDef(1 , 1),
	PinDef(1 , 2),
	PinDef(1 , 3),
	PinDef(1 , 4),
	PinDef(1 , 5),
	PinDef(1 , 6),
	PinDef(1 , 7),
	PinDef(1 , 8),
	PinDef(1 , 9),
	PinDef(1 , 10),
	PinDef(1 , 11),
	PinDef(1 , 12),
	PinDef(1 , 13),
	PinDef(1 , 14),
	PinDef(1 , 15),

    // Port0
    p0  = P0_0,
    p1  = P0_1,
    p2  = P0_2,
    p3  = P0_3,
    p4  = P0_4,
    p5  = P0_5,
    p6  = P0_6,
    p7  = P0_7,
    p8  = P0_8,
    p9  = P0_9,
    p10 = P0_10,
    p11 = P0_11,
    p12 = P0_12,
    p13 = P0_13,
    p14 = P0_14,
    p15 = P0_15,
    p16 = P0_16,
    p17 = P0_17,
    p18 = P0_18,
    p19 = P0_19,
    p20 = P0_20,
    p21 = P0_21,
    p22 = P0_22,
    p23 = P0_23,
    p24 = P0_24,
    p25 = P0_25,
    p26 = P0_26,
    p27 = P0_27,
    p28 = P0_28,
    p29 = P0_29,
    p30 = P0_30,
    p31 = P0_31,
    
    // Port1
    p32 = P1_0,
    p33 = P1_1,
    p34 = P1_2,
    p35 = P1_3,
    p36 = P1_4,
    p37 = P1_5,
    p38 = P1_6,
    p39 = P1_7,
    p40 = P1_8,
    p41 = P1_9,
    p42 = P1_10,
    p43 = P1_11,
    p44 = P1_12,
    p45 = P1_13,
    p46 = P1_14,
    p47 = P1_15,

    // Not connected
    NC = (int)0xFFFFFFFF,  
    
    LED1    = p22,
    LED2    = p23,
    LED3    = p24,

    BUTTON1 = p32,

    RX_PIN_NUMBER  = p19,
    TX_PIN_NUMBER  = p20,
    CTS_PIN_NUMBER = NC,
    RTS_PIN_NUMBER = NC,

    // mBed interface Pins
    USBTX = TX_PIN_NUMBER,
    USBRX = RX_PIN_NUMBER,
    STDIO_UART_TX = TX_PIN_NUMBER,
    STDIO_UART_RX = RX_PIN_NUMBER,
    STDIO_UART_CTS = CTS_PIN_NUMBER,
    STDIO_UART_RTS = RTS_PIN_NUMBER

} PinName;

typedef enum {
    PullNone = 0,
    PullDown = 1,
    PullUp = 3,
    PullDefault = PullUp
} PinMode;

#ifdef __cplusplus
}
#endif

#endif
```


``` c
// device.h

#ifndef MBED_DEVICE_H
#define MBED_DEVICE_H

#include "objects.h"

#endif
```

最后，需要提交修改：

``` sh
$ git add *
$ git commit -m "add support for nRF52840-MDK"
```

## 编译运行第一个示例

现在可以开始尝试编译第一个示例，这里以 `mbed-os-example-blinky` 为例：

打开命令行终端，切换到示例目录：

``` sh
$ cd ./nrf52840-mdk/examples/mbedos5/mbed-os-example-blinky/
```

添加 Mbed OS 库：

``` sh
mbed-os-example-blinky$ mbed config root .
mbed-os-example-blinky$ mbed add <path to mbed-os repository>
```

使用 `mbed compile` 进行编译：

``` sh
mbed-os-example-blinky$ mbed compile --target NRF52840_MDK --toolchain GCC_ARM --flash
``` 

增加 `--flash` 参数，将会在编译完成后自动将固件下载到 nRF52840-MDK 硬件上。

如果 `mbed detect` 无法检测到板子，可以运行以下命令添加：

``` sh
$ mbedls --mock=1026:nRF52840-MDK
```

!!! tip "提示"
    你也可以参考前面的内容 “[如何下载固件？](../getting-started/#_3)” 下载固件。

观察运行结果：

![](../../mbedos/images/mbed_os_example_blinky_demo.gif)

## 低功耗蓝牙示例

Mbed OS 对低功耗蓝牙支持非常友好，这里提供一些低功耗蓝牙示例：

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

可以切换到示例目录，例如，`BLE_BatteryLevel`:

``` sh
$ cd BLE_BatteryLevel
```

添加 Mbed OS 库：

``` sh
BLE_BatteryLevel$ mbed add <path to mbed-os repository>
```

编译下载：

``` sh
BLE_BatteryLevel$ mbed compile --target NRF52840_MDK --toolchain GCC_ARM --flash
```

打开 **nRF Connect** app，找到名为 `BATTERY` 的设备，连接设备，可发现 UUID 为 `0x180F` 的电池服务，该服务包含 UUID 为 `0x2A19` 的 `Battery level` 属性。

[![](../../mbedos/images/mbed-os-example-ble-battery.jpg)](../../mbedos/images/mbed-os-example-ble-battery.jpg)

其他低功耗蓝牙示例使用方法类似，你可以自行验证。

## 更多示例

我们还会不断增加一些新的示例到 [nrf52840-mdk](https://github.com/makerdiary/nrf52840-mdk) 仓库中，敬请关注！

## 参考资源

* [Arm Mbed OS developer site](https://os.mbed.com/)
* [Mbed OS Documentation](https://os.mbed.com/docs/)
* [ARMmbed/mbed-os repository](https://github.com/ARMmbed/mbed-os)

## 问题反馈

如果在开发过程遇到任何问题，可以通过 [GitHub Issue](https://github.com/makerdiary/nrf52840-mdk/issues) 寻求解决。

<a href="https://github.com/makerdiary/nrf52840-mdk/issues/new"><button data-md-color-primary="marsala"><i class="fa fa-github"></i> 创建 Issue</button></a>



