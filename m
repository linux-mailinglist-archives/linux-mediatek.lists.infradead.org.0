Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099869230A
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 14:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoYfDt+9gCJqLpUCyarPq/uz75+PIWqoZ+Cc7F6Ozj8=; b=VKi9UHUFDi0rPq
	K4jej3+5l0ajah6f3JRt9vbV5q1PUOD/Psdgo6gkWqeCfwSOOKAQ7H2LPWzOvaZSHz12aXzZDy2F9
	zK9xgLrBbkWqQwzxxeDUnkiEVyVAvldHvHTJgSndxL/60pmsNTrKsqA7glfzeGvTOpIvhwLvOEOkb
	50ECFuWfqb8uMKMXPomZO+tkPyfvB1R+vSUwgnyZfDVMKewxIhqeJvTK70DV0RMg87r/Pe0qKshZk
	YNYZa+63YsW1JaFVVQ7fHSd2UC4AtN7iRNqvQ4kr0sFmX3jb7RwhM0tx8bLPvOGRoN0Htw+HuUM/X
	NQDgjTMmr0q+0WHFvrtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgRH-0000qL-Q2; Mon, 19 Aug 2019 12:07:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgRE-0000pv-FD
 for linux-mediatek@lists.infradead.org; Mon, 19 Aug 2019 12:07:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCEC028;
 Mon, 19 Aug 2019 05:07:03 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 08B773F246; Mon, 19 Aug 2019 05:07:01 -0700 (PDT)
Subject: Re: [PATCH v2 11/11] arm64: dts: add dts nodes for MT6779
To: Mars Cheng <mars.cheng@mediatek.com>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-12-git-send-email-mars.cheng@mediatek.com>
 <adec38bf-735b-9131-2b9d-1e427d47f88d@kernel.org>
 <1566214950.17081.3.camel@mtkswgap22>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <c533371d-efcd-59dc-0172-3f5775221302@kernel.org>
Date: Mon, 19 Aug 2019 13:07:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566214950.17081.3.camel@mtkswgap22>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_050704_593974_3BA59C06 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Sean Wang <sean.wang@kernel.org>, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, mtk01761 <wendell.lin@mediatek.com>,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Mars,

On 19/08/2019 12:42, Mars Cheng wrote:
> Hi Marc
> 
> On Mon, 2019-08-19 at 10:40 +0100, Marc Zyngier wrote:
>> On 19/08/2019 10:21, Mars Cheng wrote:
>>> this adds initial MT6779 dts settings fo board support,
>>> including cpu, gic, timer, ccf, pinctrl, uart...etc.
>>>
>>> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
>>> ---
>>>  arch/arm64/boot/dts/mediatek/Makefile        |    1 +
>>>  arch/arm64/boot/dts/mediatek/mt6779-evb.dtsi |   31 ++++
>>>  arch/arm64/boot/dts/mediatek/mt6779.dts      |  229 ++++++++++++++++++++++++++
>>>  3 files changed, 261 insertions(+)
>>>  create mode 100644 arch/arm64/boot/dts/mediatek/mt6779-evb.dtsi
>>>  create mode 100644 arch/arm64/boot/dts/mediatek/mt6779.dts
>>>
>>> diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
>>> index 458bbc4..53f1c61 100644
>>> --- a/arch/arm64/boot/dts/mediatek/Makefile
>>> +++ b/arch/arm64/boot/dts/mediatek/Makefile
>>> @@ -1,6 +1,7 @@
>>>  # SPDX-License-Identifier: GPL-2.0
>>>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt2712-evb.dtb
>>>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt6755-evb.dtb
>>> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt6779-evb.dtb
>>>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt6795-evb.dtb
>>>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-evb.dtb
>>>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
>>> diff --git a/arch/arm64/boot/dts/mediatek/mt6779-evb.dtsi b/arch/arm64/boot/dts/mediatek/mt6779-evb.dtsi
>>> new file mode 100644
>>> index 0000000..164f5cb
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/mediatek/mt6779-evb.dtsi
>>> @@ -0,0 +1,31 @@
>>> +// SPDX-License-Identifier: GPL-2.0+
>>> +/*
>>> + * Copyright (c) 2019 MediaTek Inc.
>>> + * Author: Mars.C <mars.cheng@mediatek.com>
>>> + *
>>> + */
>>> +
>>> +/dts-v1/;
>>> +#include "mt6779.dtsi"
>>> +
>>> +/ {
>>> +	model = "MediaTek MT6779 EVB";
>>> +	compatible = "mediatek,mt6779-evb", "mediatek,mt6779";
>>> +
>>> +	aliases {
>>> +		serial0 = &uart0;
>>> +	};
>>> +
>>> +	memory@40000000 {
>>> +		device_type = "memory";
>>> +		reg = <0 0x40000000 0 0x1e800000>;
>>> +	};
>>> +
>>> +	chosen {
>>> +		stdout-path = "serial0:921600n8";
>>> +	};
>>> +};
>>> +
>>> +&uart0 {
>>> +	status = "okay";
>>> +};
>>> diff --git a/arch/arm64/boot/dts/mediatek/mt6779.dts b/arch/arm64/boot/dts/mediatek/mt6779.dts
>>> new file mode 100644
>>> index 0000000..daa25b7
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/mediatek/mt6779.dts
>>> @@ -0,0 +1,229 @@
>>> +// SPDX-License-Identifier: GPL-2.0+
>>> +/*
>>> + * Copyright (c) 2019 MediaTek Inc.
>>> + * Author: Mars.C <mars.cheng@mediatek.com>
>>> + *
>>> + */
>>> +
>>> +#include <dt-bindings/clock/mt6779-clk.h>
>>> +#include <dt-bindings/interrupt-controller/irq.h>
>>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +
>>> +/ {
>>> +	compatible = "mediatek,mt6779";
>>> +	interrupt-parent = <&sysirq>;
>>> +	#address-cells = <2>;
>>> +	#size-cells = <2>;
>>> +
>>> +	psci {
>>> +		compatible = "arm,psci-0.2";
>>> +		method = "smc";
>>> +	};
>>> +
>>> +	cpus {
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>> +
>>> +		cpu0: cpu@0 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a55";
>>> +			enable-method = "psci";
>>> +			reg = <0x000>;
>>> +		};
>>> +
>>> +		cpu1: cpu@1 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a55";
>>> +			enable-method = "psci";
>>> +			reg = <0x100>;
>>> +		};
>>> +
>>> +		cpu2: cpu@2 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a55";
>>> +			enable-method = "psci";
>>> +			reg = <0x200>;
>>> +		};
>>> +
>>> +		cpu3: cpu@3 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a55";
>>> +			enable-method = "psci";
>>> +			reg = <0x300>;
>>> +		};
>>> +
>>> +		cpu4: cpu@4 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a55";
>>> +			enable-method = "psci";
>>> +			reg = <0x400>;
>>> +		};
>>> +
>>> +		cpu5: cpu@5 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a55";
>>> +			enable-method = "psci";
>>> +			reg = <0x500>;
>>> +		};
>>> +
>>> +		cpu6: cpu@6 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a75";
>>> +			enable-method = "psci";
>>> +			reg = <0x600>;
>>> +		};
>>> +
>>> +		cpu7: cpu@7 {
>>> +			device_type = "cpu";
>>> +			compatible = "arm,cortex-a75";
>>> +			enable-method = "psci";
>>> +			reg = <0x700>;
>>> +		};
>>> +	};
>>> +
>>> +	clk26m: oscillator@0 {
>>> +		compatible = "fixed-clock";
>>> +		#clock-cells = <0>;
>>> +		clock-frequency = <26000000>;
>>> +		clock-output-names = "clk26m";
>>> +	};
>>> +
>>> +	clk32k: oscillator@1 {
>>> +		compatible = "fixed-clock";
>>> +		#clock-cells = <0>;
>>> +		clock-frequency = <32768>;
>>> +		clock-output-names = "clk32k";
>>> +	};
>>> +
>>> +	uart_clk: dummy26m {
>>> +		compatible = "fixed-clock";
>>> +		clock-frequency = <26000000>;
>>> +		#clock-cells = <0>;
>>> +	};
>>> +
>>> +	timer {
>>> +		compatible = "arm,armv8-timer";
>>> +		interrupt-parent = <&gic>;
>>> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
>>> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
>>> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
>>> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
>>> +	};
>>> +
>>> +	soc {
>>> +		#address-cells = <2>;
>>> +		#size-cells = <2>;
>>> +		compatible = "simple-bus";
>>> +		ranges;
>>> +
>>> +		gic: interrupt-controller@0c000000 {
>>> +			compatible = "arm,gic-v3";
>>> +			#interrupt-cells = <3>;
>>
>> You also haven't described the CPU PMUs. Depending on how they are wired
>> (SPIs or PPIs), you may have to change the interrupt-cells property to
>> include a cell for the PPI partitioning.
>>
> 
> pmu nodes would be:
> 
>         pmu {
>                 compatible = "arm,armv8-pmuv3";
>                 interrupt-parent = <&gic>;
>                 interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
>         };
> 
>         dsu-pmu-0 {
>                 compatible = "arm,dsu-pmu";
>                 interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
>                 cpus = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>,
>                         <&cpu4>, <&cpu5>, <&cpu6>, <&cpu7>;
>         };
> 
> so I think interrupt-cells could be <3>, will add pmu nodes in v3.

No, that's wrong, at least for the CPU pmu node.

First, you need two of them (one for the A55s, one for the A75s).
Then you need to partition the corresponding PPI so that they can be
described as separate affinity sets.
Finally, this implies that #interrupt-cells goes up to 4, and all the
interrupts directly routed to the GIC must be updated.

You should have something like this:

	&gic {
		ppi-partitions {
			cluster0: interrupt-partition-0 {
				affinity = <&cpu0 &cpu1 &cpu2
                                            &cpu3 &cpu4 &cpu5>;
			};

			cluster1: interrupt-partition-1 {
				affinity = <&cpu6 &cpu7>;
			};
	};

	pmu_a55 {
		compatible = "arm,cortex-a55-pmu", "arm,armv8-pmuv3";
		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &cluster0>;
	};

	pmu_a75 {
		compatible = "arm,cortex-a75-pmu", "arm,armv8-pmuv3";
		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &cluster1>;
	};

Please see the rk3399 usage of the binding, as it is the canonical example.

> 
>>
>>> +			#address-cells = <2>;
>>> +			#size-cells = <2>;
>>> +			#redistributor-regions = <1>;
>>
>> This is the default, so this can be omitted.
>>
> 
> Got it, will remove it in v3.
> 
>>> +			interrupt-parent = <&gic>;
>>> +			interrupt-controller;
>>> +			reg = <0 0x0c000000 0 0x40000>,  /* GICD */
>>> +			      <0 0x0c040000 0 0x200000>, /* GICR */
>>> +			      <0 0x0c400000 0 0x2000>,   /* GICC */
>>> +			      <0 0x0c410000 0 0x1000>,   /* GICH */
>>> +			      <0 0x0c420000 0 0x2000>;   /* GICV */
>>
>> Where do the last 3 ranges come from? Neither Cortex-A55 nor A75 have
>> the memory-mapped CPU interface. It looks like a copy/paste from another
>> SoC...
>>
> 
> My bad, should remove the last 3 interfaces. will do in v3.
> 
>>> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>>> +		};
>>
>> And no ITS?
>>
> 
> No, we don't have ITS support in HW.

That's pretty sad.

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
