Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F65C9FC1
	for <lists+linux-mediatek@lfdr.de>; Thu,  3 Oct 2019 15:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KVEZNx81iCpIKKB9E6nAp2/m/1vW3n2wgESmSvAmMl8=; b=G3urS+qWAco61r
	/wImn6AO9oS4v9zLZqjpjfS3oD2X7DvfpwdY2CQs8u0DMFnGAdbcpryKhbKpzubWXne5n5ItVHXGk
	np7ecvmstaehxsA50sSrJyyn0MafNVvUnYMD9HxLQnUjsmM9xNkdrE03trHuIfsk/knI+eWfj/SUY
	RwekP6EvecXldS6Si6B6NybrFGz6Q8L5nJSWNn+j+wxdMDgj/2ERMFZznT2cC0kktla822h4zDs1O
	ZUO26o8xeSfg8WUk1tsiKIRNwXkd3bkMoB2w+R7cIxCtfqPyjrDhorYrtObiEznQIG+ta64Om4M6L
	7aoeoAKv5EzgFjP8RZhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG1OF-0000gH-GO; Thu, 03 Oct 2019 13:43:31 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG1Nq-0000LG-1c
 for linux-mediatek@lists.infradead.org; Thu, 03 Oct 2019 13:43:14 +0000
Received: by mail-vk1-xa41.google.com with SMTP id o137so615162vka.13
 for <linux-mediatek@lists.infradead.org>; Thu, 03 Oct 2019 06:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+hLrm3EbFaQrg5vaPeNE+3p8D3YQID+UmYOUEd+yaZw=;
 b=dVsnBvzL63NfcsTK0v1ydS38Zv9r5/DwHKAEY2e4OdHpoYlobudrjZN7Ex30GhvQ3Q
 O8ehPAmrMhDx8oye+i6HOIomQc5bhxp3o9wSzp+Dl6/eNzi1kq0ppbVd6sb+8HvxDH1U
 IwEEdOe7SSFV5oqqSlhuYbyQjA6/c77qd5h4Vvy3IUGCOhPheOSzRclafveeqW3Iq/3q
 6Q0HTz858u/tV0AhqV9J4Qr09qTlrFknURLpV8G4UXElNEq3Fy2kgSLualvWNSzHePuQ
 rlpdh620yiiDk4Ms++ZG2i+RpuRYNw7ydvd8AeUpSy4b0SzoXOnf/q8XrCCIz6iiubrx
 KfrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+hLrm3EbFaQrg5vaPeNE+3p8D3YQID+UmYOUEd+yaZw=;
 b=bcL/Oiu/CEc7esqTgNONPZjDfqhi2X1oO5N6JK9IGiHU6F4sQx5D/Cvm8HGph6Ctb1
 DHt17ZDltomo7uIoE1vf7xATqNKDmUKZf802xIBtqzP3oQfoU3Ee8c/0YoXmNVCEYhjA
 mj45pIX2QH8LbWMz5WL26sT/DP22Hk8HHAulH54iLAftTKfi7T8gRCkafwAC0k5A1+HQ
 eJL9DHyG9QZIJpl6B7dV2A7apGjXrglRpn+lNhfgSmCJedSO4Vc6NPji+bBa050Tzbcj
 bc6vhorqBPqY847HRUuqY3j926mL2PI37/gJON4OyXydToSTpCTy6YxCz3f+NnOTmGiu
 aHRQ==
X-Gm-Message-State: APjAAAVxB6PYQyL1jki2BRxDb5SN8LdSvnafEveVBeFdeifmB1V5cCy3
 cCpEUjWfLHfWZSgLDV4VaN0ItFHcosyYI2mIqmyW6A==
X-Google-Smtp-Source: APXvYqyi8T6eM5+9z3pgc6GgsQ0EZxq78rLdX+KyC/i78RGimK8q6ifDwkgFmItSm4lWao+sFnI6SDKQA1ksyCKVq2I=
X-Received: by 2002:a1f:bfcf:: with SMTP id p198mr118666vkf.101.1570110180494; 
 Thu, 03 Oct 2019 06:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191002160632.11140-1-krzk@kernel.org>
In-Reply-To: <20191002160632.11140-1-krzk@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 3 Oct 2019 15:42:24 +0200
Message-ID: <CAPDyKFqaLYE8afDkOu8xbXw9H088A5eyh8_PKhwN21MmU=qTSQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: power: Convert Generic Power Domain
 bindings to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_064306_114385_8DF8FF0C 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PCI <linux-pci@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-media@vger.kernel.org, DTML <devicetree@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, etnaviv@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org,
 linux-tegra <linux-tegra@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, Linux USB List <linux-usb@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 freedreno <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2 Oct 2019 at 18:06, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Convert Generic Power Domain bindings to DT schema format using
> json-schema.  The consumer bindings are split to separate file.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks for working on this, it looks good to me! Although, I have to
admit that I am still learning about the DT json-schema. So, FWIW:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

>
> ---
>
> Changes since v1:
> 1. Select all nodes for consumers,
> 2. Remove from consumers duplicated properties with dt-schema,
> 3. Fix power domain pattern,
> 4. Remove unneeded types.
> ---
>  .../devicetree/bindings/arm/arm,scmi.txt      |   2 +-
>  .../devicetree/bindings/arm/arm,scpi.txt      |   2 +-
>  .../bindings/arm/freescale/fsl,scu.txt        |   2 +-
>  .../bindings/clock/clk-exynos-audss.txt       |   2 +-
>  .../bindings/clock/exynos5433-clock.txt       |   4 +-
>  .../bindings/clock/renesas,cpg-mssr.txt       |   2 +-
>  .../clock/renesas,r8a7778-cpg-clocks.txt      |   2 +-
>  .../clock/renesas,r8a7779-cpg-clocks.txt      |   2 +-
>  .../clock/renesas,rcar-gen2-cpg-clocks.txt    |   2 +-
>  .../bindings/clock/renesas,rz-cpg-clocks.txt  |   2 +-
>  .../bindings/clock/ti/davinci/psc.txt         |   2 +-
>  .../bindings/display/etnaviv/etnaviv-drm.txt  |   2 +-
>  .../devicetree/bindings/display/msm/dpu.txt   |   2 +-
>  .../devicetree/bindings/display/msm/mdp5.txt  |   2 +-
>  .../devicetree/bindings/dsp/fsl,dsp.yaml      |   2 +-
>  .../firmware/nvidia,tegra186-bpmp.txt         |   2 +-
>  .../bindings/media/imx7-mipi-csi2.txt         |   3 +-
>  .../bindings/media/mediatek-jpeg-decoder.txt  |   3 +-
>  .../bindings/media/mediatek-mdp.txt           |   3 +-
>  .../bindings/opp/qcom-nvmem-cpufreq.txt       |   2 +-
>  .../devicetree/bindings/pci/pci-keystone.txt  |   2 +-
>  .../bindings/phy/ti,phy-am654-serdes.txt      |   2 +-
>  .../bindings/power/amlogic,meson-gx-pwrc.txt  |   2 +-
>  .../devicetree/bindings/power/fsl,imx-gpc.txt |   2 +-
>  .../bindings/power/fsl,imx-gpcv2.txt          |   2 +-
>  .../power/power-domain-consumers.yaml         | 105 +++++++++
>  .../bindings/power/power-domain.yaml          | 134 ++++++++++++
>  .../bindings/power/power_domain.txt           | 205 ------------------
>  .../devicetree/bindings/power/qcom,rpmpd.txt  |   2 +-
>  .../bindings/power/renesas,rcar-sysc.txt      |   2 +-
>  .../bindings/power/renesas,sysc-rmobile.txt   |   2 +-
>  .../bindings/power/xlnx,zynqmp-genpd.txt      |   2 +-
>  .../bindings/soc/bcm/brcm,bcm2835-pm.txt      |   2 +-
>  .../bindings/soc/mediatek/scpsys.txt          |   2 +-
>  .../bindings/soc/ti/sci-pm-domain.txt         |   2 +-
>  .../bindings/usb/nvidia,tegra124-xusb.txt     |   4 +-
>  MAINTAINERS                                   |   2 +-
>  37 files changed, 278 insertions(+), 241 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/power-domain-consumers.yaml
>  create mode 100644 Documentation/devicetree/bindings/power/power-domain.yaml
>  delete mode 100644 Documentation/devicetree/bindings/power/power_domain.txt
>
> diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> index 083dbf96ee00..f493d69e6194 100644
> --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> @@ -100,7 +100,7 @@ Required sub-node properties:
>
>  [0] http://infocenter.arm.com/help/topic/com.arm.doc.den0056a/index.html
>  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> -[2] Documentation/devicetree/bindings/power/power_domain.txt
> +[2] Documentation/devicetree/bindings/power/power-domain.yaml
>  [3] Documentation/devicetree/bindings/thermal/thermal.txt
>  [4] Documentation/devicetree/bindings/sram/sram.txt
>  [5] Documentation/devicetree/bindings/reset/reset.txt
> diff --git a/Documentation/devicetree/bindings/arm/arm,scpi.txt b/Documentation/devicetree/bindings/arm/arm,scpi.txt
> index 401831973638..7b83ef43b418 100644
> --- a/Documentation/devicetree/bindings/arm/arm,scpi.txt
> +++ b/Documentation/devicetree/bindings/arm/arm,scpi.txt
> @@ -110,7 +110,7 @@ Required properties:
>  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
>  [2] Documentation/devicetree/bindings/thermal/thermal.txt
>  [3] Documentation/devicetree/bindings/sram/sram.txt
> -[4] Documentation/devicetree/bindings/power/power_domain.txt
> +[4] Documentation/devicetree/bindings/power/power-domain.yaml
>
>  Example:
>
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> index c149fadc6f47..6c8a61b971f1 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -124,7 +124,7 @@ Required properties for Pinctrl sub nodes:
>                         CONFIG settings.
>
>  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> -[2] Documentation/devicetree/bindings/power/power_domain.txt
> +[2] Documentation/devicetree/bindings/power/power-domain.yaml
>  [3] Documentation/devicetree/bindings/pinctrl/fsl,imx-pinctrl.txt
>
>  RTC bindings based on SCU Message Protocol
> diff --git a/Documentation/devicetree/bindings/clock/clk-exynos-audss.txt b/Documentation/devicetree/bindings/clock/clk-exynos-audss.txt
> index 6030afb10b5c..fda095e1fa7a 100644
> --- a/Documentation/devicetree/bindings/clock/clk-exynos-audss.txt
> +++ b/Documentation/devicetree/bindings/clock/clk-exynos-audss.txt
> @@ -36,7 +36,7 @@ Required Properties:
>  Optional Properties:
>
>    - power-domains: a phandle to respective power domain node as described by
> -    generic PM domain bindings (see power/power_domain.txt for more
> +    generic PM domain bindings (see power/power-domain-consumers.yaml for more
>      information).
>
>  The following is the list of clocks generated by the controller. Each clock is
> diff --git a/Documentation/devicetree/bindings/clock/exynos5433-clock.txt b/Documentation/devicetree/bindings/clock/exynos5433-clock.txt
> index 183c327a7d6b..52880914228d 100644
> --- a/Documentation/devicetree/bindings/clock/exynos5433-clock.txt
> +++ b/Documentation/devicetree/bindings/clock/exynos5433-clock.txt
> @@ -178,8 +178,8 @@ Required Properties:
>
>  Optional properties:
>    - power-domains: a phandle to respective power domain node as described by
> -       generic PM domain bindings (see power/power_domain.txt for more
> -       information).
> +       generic PM domain bindings (see power/power-domain-consumers.yaml
> +       for more information).
>
>  Each clock is assigned an identifier and client nodes can use this identifier
>  to specify the clock which they consume.
> diff --git a/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt b/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt
> index 916a601b76a7..2def42096886 100644
> --- a/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt
> +++ b/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt
> @@ -59,7 +59,7 @@ Required Properties:
>         power-managed through Module Standby should refer to the CPG device
>         node in their "power-domains" property, as documented by the generic PM
>         Domain bindings in
> -       Documentation/devicetree/bindings/power/power_domain.txt.
> +       Documentation/devicetree/bindings/power/power-domain.yaml.
>
>    - #reset-cells: Must be 1
>        - The single reset specifier cell must be the module number, as defined
> diff --git a/Documentation/devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt b/Documentation/devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt
> index 7cc4c0330b53..be24c2c023a2 100644
> --- a/Documentation/devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt
> +++ b/Documentation/devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt
> @@ -17,7 +17,7 @@ Required Properties:
>  SoC devices that are part of the CPG/MSTP Clock Domain and can be power-managed
>  through an MSTP clock should refer to the CPG device node in their
>  "power-domains" property, as documented by the generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain-consumers.yaml.
>
>
>  Examples
> diff --git a/Documentation/devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt b/Documentation/devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt
> index 8c81547c29f5..263d7ef2e6de 100644
> --- a/Documentation/devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt
> +++ b/Documentation/devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt
> @@ -19,7 +19,7 @@ Required Properties:
>  SoC devices that are part of the CPG/MSTP Clock Domain and can be power-managed
>  through an MSTP clock should refer to the CPG device node in their
>  "power-domains" property, as documented by the generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain-consumers.yaml.
>
>
>  Examples
> diff --git a/Documentation/devicetree/bindings/clock/renesas,rcar-gen2-cpg-clocks.txt b/Documentation/devicetree/bindings/clock/renesas,rcar-gen2-cpg-clocks.txt
> index f8c05bb4116e..8c06a93ab730 100644
> --- a/Documentation/devicetree/bindings/clock/renesas,rcar-gen2-cpg-clocks.txt
> +++ b/Documentation/devicetree/bindings/clock/renesas,rcar-gen2-cpg-clocks.txt
> @@ -28,7 +28,7 @@ Required Properties:
>  SoC devices that are part of the CPG/MSTP Clock Domain and can be power-managed
>  through an MSTP clock should refer to the CPG device node in their
>  "power-domains" property, as documented by the generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain-consumers.yaml.
>
>
>  Examples
> diff --git a/Documentation/devicetree/bindings/clock/renesas,rz-cpg-clocks.txt b/Documentation/devicetree/bindings/clock/renesas,rz-cpg-clocks.txt
> index 8ff3e2774ed8..56d632165030 100644
> --- a/Documentation/devicetree/bindings/clock/renesas,rz-cpg-clocks.txt
> +++ b/Documentation/devicetree/bindings/clock/renesas,rz-cpg-clocks.txt
> @@ -21,7 +21,7 @@ Required Properties:
>  SoC devices that are part of the CPG/MSTP Clock Domain and can be power-managed
>  through an MSTP clock should refer to the CPG device node in their
>  "power-domains" property, as documented by the generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain-consumers.yaml.
>
>
>  Examples
> diff --git a/Documentation/devicetree/bindings/clock/ti/davinci/psc.txt b/Documentation/devicetree/bindings/clock/ti/davinci/psc.txt
> index dae4ad8e198c..5f746ebf7a2c 100644
> --- a/Documentation/devicetree/bindings/clock/ti/davinci/psc.txt
> +++ b/Documentation/devicetree/bindings/clock/ti/davinci/psc.txt
> @@ -67,5 +67,5 @@ Examples:
>
>  Also see:
>  - Documentation/devicetree/bindings/clock/clock-bindings.txt
> -- Documentation/devicetree/bindings/power/power_domain.txt
> +- Documentation/devicetree/bindings/power/power-domain.yaml
>  - Documentation/devicetree/bindings/reset/reset.txt
> diff --git a/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt b/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> index 8def11b16a24..6067ef3f108a 100644
> --- a/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> +++ b/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> @@ -20,7 +20,7 @@ Required properties:
>
>  Optional properties:
>  - power-domains: a power domain consumer specifier according to
> -  Documentation/devicetree/bindings/power/power_domain.txt
> +  Documentation/devicetree/bindings/power/power-domain-consumers.yaml
>
>  example:
>
> diff --git a/Documentation/devicetree/bindings/display/msm/dpu.txt b/Documentation/devicetree/bindings/display/msm/dpu.txt
> index a61dd40f3792..002a3a1270f9 100644
> --- a/Documentation/devicetree/bindings/display/msm/dpu.txt
> +++ b/Documentation/devicetree/bindings/display/msm/dpu.txt
> @@ -13,7 +13,7 @@ Required properties:
>  - reg-names: register region names. The following region is required:
>    * "mdss"
>  - power-domains: a power domain consumer specifier according to
> -  Documentation/devicetree/bindings/power/power_domain.txt
> +  Documentation/devicetree/bindings/power/power-domain-consumers.yaml
>  - clocks: list of clock specifiers for clocks needed by the device.
>  - clock-names: device clock names, must be in same order as clocks property.
>    The following clocks are required:
> diff --git a/Documentation/devicetree/bindings/display/msm/mdp5.txt b/Documentation/devicetree/bindings/display/msm/mdp5.txt
> index 4e11338548aa..9cbfcdfa46b4 100644
> --- a/Documentation/devicetree/bindings/display/msm/mdp5.txt
> +++ b/Documentation/devicetree/bindings/display/msm/mdp5.txt
> @@ -19,7 +19,7 @@ Required properties:
>  - #interrupt-cells: specifies the number of cells needed to encode an interrupt
>    source, should be 1.
>  - power-domains: a power domain consumer specifier according to
> -  Documentation/devicetree/bindings/power/power_domain.txt
> +  Documentation/devicetree/bindings/power/power-domain-consumers.yaml
>  - clocks: device clocks. See ../clocks/clock-bindings.txt for details.
>  - clock-names: the following clocks are required.
>    * "iface"
> diff --git a/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> index 3248595dc93c..d7680b7fbe19 100644
> --- a/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> +++ b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> @@ -36,7 +36,7 @@ properties:
>    power-domains:
>      description:
>        List of phandle and PM domain specifier as documented in
> -      Documentation/devicetree/bindings/power/power_domain.txt
> +      Documentation/devicetree/bindings/power/power-domain-consumers.yaml
>      maxItems: 4
>
>    mboxes:
> diff --git a/Documentation/devicetree/bindings/firmware/nvidia,tegra186-bpmp.txt b/Documentation/devicetree/bindings/firmware/nvidia,tegra186-bpmp.txt
> index ff380dadb5f9..e44a13bc06ed 100644
> --- a/Documentation/devicetree/bindings/firmware/nvidia,tegra186-bpmp.txt
> +++ b/Documentation/devicetree/bindings/firmware/nvidia,tegra186-bpmp.txt
> @@ -32,7 +32,7 @@ implemented by this node:
>
>  - .../clock/clock-bindings.txt
>  - <dt-bindings/clock/tegra186-clock.h>
> -- ../power/power_domain.txt
> +- ../power/power-domain.yaml
>  - <dt-bindings/power/tegra186-powergate.h>
>  - .../reset/reset.txt
>  - <dt-bindings/reset/tegra186-reset.h>
> diff --git a/Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt b/Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt
> index 71fd74ed3ec8..7a7a8b672983 100644
> --- a/Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt
> +++ b/Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt
> @@ -17,7 +17,8 @@ Required properties:
>  - clock-names   : must contain "pclk", "wrap" and "phy" entries, matching
>                    entries in the clock property;
>  - power-domains : a phandle to the power domain, see
> -          Documentation/devicetree/bindings/power/power_domain.txt for details.
> +          Documentation/devicetree/bindings/power/power-domain-consumers.yaml
> +          for details.
>  - reset-names   : should include following entry "mrst";
>  - resets        : a list of phandle, should contain reset entry of
>                    reset-names;
> diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.txt b/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.txt
> index 044b11913c49..04c46adaa460 100644
> --- a/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.txt
> +++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.txt
> @@ -14,7 +14,8 @@ Required properties:
>    Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
>  - clock-names: must contain "jpgdec-smi" and "jpgdec".
>  - power-domains: a phandle to the power domain, see
> -  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +  Documentation/devicetree/bindings/power/power-domain-consumers.yaml
> +  for details.
>  - mediatek,larb: must contain the local arbiters in the current Socs, see
>    Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
>    for details.
> diff --git a/Documentation/devicetree/bindings/media/mediatek-mdp.txt b/Documentation/devicetree/bindings/media/mediatek-mdp.txt
> index 0d03e3ae2be2..5a8c9ab9b3bd 100644
> --- a/Documentation/devicetree/bindings/media/mediatek-mdp.txt
> +++ b/Documentation/devicetree/bindings/media/mediatek-mdp.txt
> @@ -17,7 +17,8 @@ Required properties (all function blocks, child node):
>  - clocks: device clocks, see
>    Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
>  - power-domains: a phandle to the power domain, see
> -  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +  Documentation/devicetree/bindings/power/power-domain-consumers.yaml
> +  for details.
>
>  Required properties (DMA function blocks, child node):
>  - compatible: Should be one of
> diff --git a/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt b/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
> index 4751029b9b74..cb091b2ce5db 100644
> --- a/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
> +++ b/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
> @@ -27,7 +27,7 @@ In 'cpu' nodes:
>  - power-domains: A phandle pointing to the PM domain specifier which provides
>                 the performance states available for active state management.
>                 Please refer to the power-domains bindings
> -               Documentation/devicetree/bindings/power/power_domain.txt
> +               Documentation/devicetree/bindings/power/power-domain-consumers.yaml
>                 and also examples below.
>  - power-domain-names: Should be
>         - 'cpr' for qcs404.
> diff --git a/Documentation/devicetree/bindings/pci/pci-keystone.txt b/Documentation/devicetree/bindings/pci/pci-keystone.txt
> index 47202a2938f2..5ee0bf171ce6 100644
> --- a/Documentation/devicetree/bindings/pci/pci-keystone.txt
> +++ b/Documentation/devicetree/bindings/pci/pci-keystone.txt
> @@ -88,7 +88,7 @@ num-ob-windows: As specified in
>  num-lanes: As specified in
>            Documentation/devicetree/bindings/pci/designware-pcie.txt
>  power-domains: As documented by the generic PM domain bindings in
> -              Documentation/devicetree/bindings/power/power_domain.txt.
> +              Documentation/devicetree/bindings/power/power-domain-consumers.yaml.
>  ti,syscon-pcie-mode: phandle to the device control module required to configure
>                       PCI in either RC mode or EP mode.
>
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt
> index 64b286d2d398..b5f17a3e8dba 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt
> @@ -17,7 +17,7 @@ Required properties:
>                 1 - PCIe0 Lane1
>                 2 - ICSS2 SGMII Lane1
>   - power-domains: As documented by the generic PM domain bindings in
> -       Documentation/devicetree/bindings/power/power_domain.txt.
> +       Documentation/devicetree/bindings/power/power-domain-consumers.yaml.
>   - clocks: List of clock-specifiers representing the input to the SERDES.
>         Should have 3 items representing the left input clock, external
>         reference clock and right input clock in that order.
> diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
> index 0fdc3dd1125e..99b5b10cda31 100644
> --- a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
> +++ b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
> @@ -10,7 +10,7 @@ The Video Processing Unit power domain is controlled by this power controller,
>  but the domain requires some external resources to meet the correct power
>  sequences.
>  The bindings must respect the power domain bindings as described in the file
> -power_domain.txt
> +power-domain.yaml
>
>  Device Tree Bindings:
>  ---------------------
> diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt b/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt
> index 726ec2875223..f0f5553a9e74 100644
> --- a/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt
> +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt
> @@ -19,7 +19,7 @@ Required properties:
>    - ipg
>
>  The power domains are generic power domain providers as documented in
> -Documentation/devicetree/bindings/power/power_domain.txt. They are described as
> +Documentation/devicetree/bindings/power/power-domain.yaml. They are described as
>  subnodes of the power gating controller 'pgc' node of the GPC and should
>  contain the following:
>
> diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
> index 7c7e972aaa42..61649202f6f5 100644
> --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
> +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
> @@ -17,7 +17,7 @@ Required properties:
>
>  Power domains contained within GPC node are generic power domain
>  providers, documented in
> -Documentation/devicetree/bindings/power/power_domain.txt, which are
> +Documentation/devicetree/bindings/power/power-domain.yaml, which are
>  described as subnodes of the power gating controller 'pgc' node,
>  which, in turn, is expected to contain the following:
>
> diff --git a/Documentation/devicetree/bindings/power/power-domain-consumers.yaml b/Documentation/devicetree/bindings/power/power-domain-consumers.yaml
> new file mode 100644
> index 000000000000..f65078e1260e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/power-domain-consumers.yaml
> @@ -0,0 +1,105 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/power-domain-consumers.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: PM domain consumers
> +
> +maintainers:
> +  - Rafael J. Wysocki <rjw@rjwysocki.net>
> +  - Kevin Hilman <khilman@kernel.org>
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +
> +description: |+
> +  See power-domain.yaml
> +
> +select: true
> +
> +allOf:
> +  - $ref: /schemas/power-domain/power-domain-consumer.yaml
> +
> +properties:
> +  required-opps:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      This contains phandle to an OPP node in another device's OPP table.
> +      It may contain an array of phandles, where each phandle points to an OPP
> +      of a different device. It should not contain multiple phandles to the OPP
> +      nodes in the same OPP table. This specifies the minimum required OPP
> +      of the device(s), whose OPP's phandle is present in this property,
> +      for the functioning of the current device at the current OPP (where this
> +      property is present).
> +
> +examples:
> +  - |
> +    leaky-device@12350000 {
> +      compatible = "foo,i-leak-current";
> +      reg = <0x12350000 0x1000>;
> +      power-domains = <&power 0>;
> +      power-domain-names = "io";
> +    };
> +
> +    leaky-device@12351000 {
> +      compatible = "foo,i-leak-current";
> +      reg = <0x12351000 0x1000>;
> +      power-domains = <&power 0>, <&power 1> ;
> +      power-domain-names = "io", "clk";
> +    };
> +
> +    // The first example above defines a typical PM domain consumer device, which is
> +    // located inside a PM domain with index 0 of a power controller represented by a
> +    // node with the label "power".
> +    // In the second example the consumer device are partitioned across two PM domains,
> +    // the first with index 0 and the second with index 1, of a power controller that
> +    // is represented by a node with the label "power".
> +
> +  - |
> +    // Example with  OPP table for domain provider that provides two domains:
> +
> +    domain0_opp_table: opp-table0 {
> +      compatible = "operating-points-v2";
> +
> +      domain0_opp_0: opp-1000000000 {
> +        opp-hz = /bits/ 64 <1000000000>;
> +        opp-microvolt = <975000 970000 985000>;
> +      };
> +      domain0_opp_1: opp-1100000000 {
> +        opp-hz = /bits/ 64 <1100000000>;
> +        opp-microvolt = <1000000 980000 1010000>;
> +      };
> +    };
> +
> +    domain1_opp_table: opp-table1 {
> +      compatible = "operating-points-v2";
> +
> +      domain1_opp_0: opp-1200000000 {
> +        opp-hz = /bits/ 64 <1200000000>;
> +        opp-microvolt = <975000 970000 985000>;
> +      };
> +      domain1_opp_1: opp-1300000000 {
> +        opp-hz = /bits/ 64 <1300000000>;
> +        opp-microvolt = <1000000 980000 1010000>;
> +      };
> +    };
> +
> +    power: power-controller@12340000 {
> +      compatible = "foo,power-controller";
> +      reg = <0x12340000 0x1000>;
> +      #power-domain-cells = <1>;
> +      operating-points-v2 = <&domain0_opp_table>, <&domain1_opp_table>;
> +    };
> +
> +    leaky-device0@12350000 {
> +      compatible = "foo,i-leak-current";
> +      reg = <0x12350000 0x1000>;
> +      power-domains = <&power 0>;
> +      required-opps = <&domain0_opp_0>;
> +    };
> +
> +    leaky-device1@12350000 {
> +      compatible = "foo,i-leak-current";
> +      reg = <0x12350000 0x1000>;
> +      power-domains = <&power 1>;
> +      required-opps = <&domain1_opp_1>;
> +    };
> diff --git a/Documentation/devicetree/bindings/power/power-domain.yaml b/Documentation/devicetree/bindings/power/power-domain.yaml
> new file mode 100644
> index 000000000000..dd1376cff51b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/power-domain.yaml
> @@ -0,0 +1,134 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/power-domain.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic PM domains
> +
> +maintainers:
> +  - Rafael J. Wysocki <rjw@rjwysocki.net>
> +  - Kevin Hilman <khilman@kernel.org>
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +
> +description: |+
> +  System on chip designs are often divided into multiple PM domains that can be
> +  used for power gating of selected IP blocks for power saving by reduced leakage
> +  current.
> +
> +  This device tree binding can be used to bind PM domain consumer devices with
> +  their PM domains provided by PM domain providers. A PM domain provider can be
> +  represented by any node in the device tree and can provide one or more PM
> +  domains. A consumer node can refer to the provider by a phandle and a set of
> +  phandle arguments (so called PM domain specifiers) of length specified by the
> +  \#power-domain-cells property in the PM domain provider node.
> +
> +properties:
> +  $nodename:
> +    pattern: "^(power-controller|power-domain)(@.*)?$"
> +
> +  domain-idle-states:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      A phandle of an idle-state that shall be soaked into a generic domain
> +      power state. The idle state definitions are compatible with
> +      domain-idle-state specified in
> +      Documentation/devicetree/bindings/power/domain-idle-state.txt
> +      phandles that are not compatible with domain-idle-state will be ignored.
> +      The domain-idle-state property reflects the idle state of this PM domain
> +      and not the idle states of the devices or sub-domains in the PM domain.
> +      Devices and sub-domains have their own idle-states independent
> +      of the parent domain's idle states. In the absence of this property,
> +      the domain would be considered as capable of being powered-on
> +      or powered-off.
> +
> +  operating-points-v2:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandles to the OPP tables of power domains provided by a power domain
> +      provider. If the provider provides a single power domain only or all
> +      the power domains provided by the provider have identical OPP tables,
> +      then this shall contain a single phandle. Refer to ../opp/opp.txt
> +      for more information.
> +
> +  "#power-domain-cells":
> +    description:
> +      Number of cells in a PM domain specifier. Typically 0 for nodes
> +      representing a single PM domain and 1 for nodes providing multiple PM
> +      domains (e.g. power controllers), but can be any value as specified
> +      by device tree binding documentation of particular provider.
> +
> +  power-domains:
> +    description:
> +       A phandle and PM domain specifier as defined by bindings of the power
> +       controller specified by phandle. Some power domains might be powered
> +       from another power domain (or have other hardware specific
> +       dependencies). For representing such dependency a standard PM domain
> +       consumer binding is used. When provided, all domains created
> +       by the given provider should be subdomains of the domain specified
> +       by this binding. More details about power domain specifier are
> +       available in the power-domain-consumers.yaml.
> +
> +required:
> +  - "#power-domain-cells"
> +
> +examples:
> +  - |
> +    power: power-controller@12340000 {
> +      compatible = "foo,power-controller";
> +      reg = <0x12340000 0x1000>;
> +      #power-domain-cells = <1>;
> +    };
> +
> +    // The node above defines a power controller that is a PM domain provider and
> +    // expects one cell as its phandle argument.
> +
> +  - |
> +    parent2: power-controller@12340000 {
> +      compatible = "foo,power-controller";
> +      reg = <0x12340000 0x1000>;
> +      #power-domain-cells = <1>;
> +    };
> +
> +    child2: power-controller@12341000 {
> +      compatible = "foo,power-controller";
> +      reg = <0x12341000 0x1000>;
> +      power-domains = <&parent2 0>;
> +      #power-domain-cells = <1>;
> +    };
> +
> +    // The nodes above define two power controllers: 'parent' and 'child'.
> +    // Domains created by the 'child' power controller are subdomains of '0' power
> +    // domain provided by the 'parent' power controller.
> +
> +  - |
> +    parent3: power-controller@12340000 {
> +      compatible = "foo,power-controller";
> +      reg = <0x12340000 0x1000>;
> +      #power-domain-cells = <0>;
> +      domain-idle-states = <&DOMAIN_RET>, <&DOMAIN_PWR_DN>;
> +    };
> +
> +    child3: power-controller@12341000 {
> +      compatible = "foo,power-controller";
> +      reg = <0x12341000 0x1000>;
> +      power-domains = <&parent3>;
> +      #power-domain-cells = <0>;
> +      domain-idle-states = <&DOMAIN_PWR_DN>;
> +    };
> +
> +    DOMAIN_RET: state@0 {
> +      compatible = "domain-idle-state";
> +      reg = <0x0 0x0>;
> +      entry-latency-us = <1000>;
> +      exit-latency-us = <2000>;
> +      min-residency-us = <10000>;
> +    };
> +
> +    DOMAIN_PWR_DN: state@1 {
> +      compatible = "domain-idle-state";
> +      reg = <0x1 0x0>;
> +      entry-latency-us = <5000>;
> +      exit-latency-us = <8000>;
> +      min-residency-us = <7000>;
> +    };
> diff --git a/Documentation/devicetree/bindings/power/power_domain.txt b/Documentation/devicetree/bindings/power/power_domain.txt
> deleted file mode 100644
> index 8f8b25a24b8f..000000000000
> --- a/Documentation/devicetree/bindings/power/power_domain.txt
> +++ /dev/null
> @@ -1,205 +0,0 @@
> -* Generic PM domains
> -
> -System on chip designs are often divided into multiple PM domains that can be
> -used for power gating of selected IP blocks for power saving by reduced leakage
> -current.
> -
> -This device tree binding can be used to bind PM domain consumer devices with
> -their PM domains provided by PM domain providers. A PM domain provider can be
> -represented by any node in the device tree and can provide one or more PM
> -domains. A consumer node can refer to the provider by a phandle and a set of
> -phandle arguments (so called PM domain specifiers) of length specified by the
> -#power-domain-cells property in the PM domain provider node.
> -
> -==PM domain providers==
> -
> -Required properties:
> - - #power-domain-cells : Number of cells in a PM domain specifier;
> -   Typically 0 for nodes representing a single PM domain and 1 for nodes
> -   providing multiple PM domains (e.g. power controllers), but can be any value
> -   as specified by device tree binding documentation of particular provider.
> -
> -Optional properties:
> - - power-domains : A phandle and PM domain specifier as defined by bindings of
> -                   the power controller specified by phandle.
> -   Some power domains might be powered from another power domain (or have
> -   other hardware specific dependencies). For representing such dependency
> -   a standard PM domain consumer binding is used. When provided, all domains
> -   created by the given provider should be subdomains of the domain
> -   specified by this binding. More details about power domain specifier are
> -   available in the next section.
> -
> -- domain-idle-states : A phandle of an idle-state that shall be soaked into a
> -                generic domain power state. The idle state definitions are
> -                compatible with domain-idle-state specified in [1]. phandles
> -                that are not compatible with domain-idle-state will be
> -                ignored.
> -  The domain-idle-state property reflects the idle state of this PM domain and
> -  not the idle states of the devices or sub-domains in the PM domain. Devices
> -  and sub-domains have their own idle-states independent of the parent
> -  domain's idle states. In the absence of this property, the domain would be
> -  considered as capable of being powered-on or powered-off.
> -
> -- operating-points-v2 : Phandles to the OPP tables of power domains provided by
> -  a power domain provider. If the provider provides a single power domain only
> -  or all the power domains provided by the provider have identical OPP tables,
> -  then this shall contain a single phandle. Refer to ../opp/opp.txt for more
> -  information.
> -
> -Example:
> -
> -       power: power-controller@12340000 {
> -               compatible = "foo,power-controller";
> -               reg = <0x12340000 0x1000>;
> -               #power-domain-cells = <1>;
> -       };
> -
> -The node above defines a power controller that is a PM domain provider and
> -expects one cell as its phandle argument.
> -
> -Example 2:
> -
> -       parent: power-controller@12340000 {
> -               compatible = "foo,power-controller";
> -               reg = <0x12340000 0x1000>;
> -               #power-domain-cells = <1>;
> -       };
> -
> -       child: power-controller@12341000 {
> -               compatible = "foo,power-controller";
> -               reg = <0x12341000 0x1000>;
> -               power-domains = <&parent 0>;
> -               #power-domain-cells = <1>;
> -       };
> -
> -The nodes above define two power controllers: 'parent' and 'child'.
> -Domains created by the 'child' power controller are subdomains of '0' power
> -domain provided by the 'parent' power controller.
> -
> -Example 3:
> -       parent: power-controller@12340000 {
> -               compatible = "foo,power-controller";
> -               reg = <0x12340000 0x1000>;
> -               #power-domain-cells = <0>;
> -               domain-idle-states = <&DOMAIN_RET>, <&DOMAIN_PWR_DN>;
> -       };
> -
> -       child: power-controller@12341000 {
> -               compatible = "foo,power-controller";
> -               reg = <0x12341000 0x1000>;
> -               power-domains = <&parent>;
> -               #power-domain-cells = <0>;
> -               domain-idle-states = <&DOMAIN_PWR_DN>;
> -       };
> -
> -       DOMAIN_RET: state@0 {
> -               compatible = "domain-idle-state";
> -               reg = <0x0>;
> -               entry-latency-us = <1000>;
> -               exit-latency-us = <2000>;
> -               min-residency-us = <10000>;
> -       };
> -
> -       DOMAIN_PWR_DN: state@1 {
> -               compatible = "domain-idle-state";
> -               reg = <0x1>;
> -               entry-latency-us = <5000>;
> -               exit-latency-us = <8000>;
> -               min-residency-us = <7000>;
> -       };
> -
> -==PM domain consumers==
> -
> -Required properties:
> - - power-domains : A list of PM domain specifiers, as defined by bindings of
> -               the power controller that is the PM domain provider.
> -
> -Optional properties:
> - - power-domain-names : A list of power domain name strings sorted in the same
> -               order as the power-domains property. Consumers drivers will use
> -               power-domain-names to match power domains with power-domains
> -               specifiers.
> -
> -Example:
> -
> -       leaky-device@12350000 {
> -               compatible = "foo,i-leak-current";
> -               reg = <0x12350000 0x1000>;
> -               power-domains = <&power 0>;
> -               power-domain-names = "io";
> -       };
> -
> -       leaky-device@12351000 {
> -               compatible = "foo,i-leak-current";
> -               reg = <0x12351000 0x1000>;
> -               power-domains = <&power 0>, <&power 1> ;
> -               power-domain-names = "io", "clk";
> -       };
> -
> -The first example above defines a typical PM domain consumer device, which is
> -located inside a PM domain with index 0 of a power controller represented by a
> -node with the label "power".
> -In the second example the consumer device are partitioned across two PM domains,
> -the first with index 0 and the second with index 1, of a power controller that
> -is represented by a node with the label "power".
> -
> -Optional properties:
> -- required-opps: This contains phandle to an OPP node in another device's OPP
> -  table. It may contain an array of phandles, where each phandle points to an
> -  OPP of a different device. It should not contain multiple phandles to the OPP
> -  nodes in the same OPP table. This specifies the minimum required OPP of the
> -  device(s), whose OPP's phandle is present in this property, for the
> -  functioning of the current device at the current OPP (where this property is
> -  present).
> -
> -Example:
> -- OPP table for domain provider that provides two domains.
> -
> -       domain0_opp_table: opp-table0 {
> -               compatible = "operating-points-v2";
> -
> -               domain0_opp_0: opp-1000000000 {
> -                       opp-hz = /bits/ 64 <1000000000>;
> -                       opp-microvolt = <975000 970000 985000>;
> -               };
> -               domain0_opp_1: opp-1100000000 {
> -                       opp-hz = /bits/ 64 <1100000000>;
> -                       opp-microvolt = <1000000 980000 1010000>;
> -               };
> -       };
> -
> -       domain1_opp_table: opp-table1 {
> -               compatible = "operating-points-v2";
> -
> -               domain1_opp_0: opp-1200000000 {
> -                       opp-hz = /bits/ 64 <1200000000>;
> -                       opp-microvolt = <975000 970000 985000>;
> -               };
> -               domain1_opp_1: opp-1300000000 {
> -                       opp-hz = /bits/ 64 <1300000000>;
> -                       opp-microvolt = <1000000 980000 1010000>;
> -               };
> -       };
> -
> -       power: power-controller@12340000 {
> -               compatible = "foo,power-controller";
> -               reg = <0x12340000 0x1000>;
> -               #power-domain-cells = <1>;
> -               operating-points-v2 = <&domain0_opp_table>, <&domain1_opp_table>;
> -       };
> -
> -       leaky-device0@12350000 {
> -               compatible = "foo,i-leak-current";
> -               reg = <0x12350000 0x1000>;
> -               power-domains = <&power 0>;
> -               required-opps = <&domain0_opp_0>;
> -       };
> -
> -       leaky-device1@12350000 {
> -               compatible = "foo,i-leak-current";
> -               reg = <0x12350000 0x1000>;
> -               power-domains = <&power 1>;
> -               required-opps = <&domain1_opp_1>;
> -       };
> -
> -[1]. Documentation/devicetree/bindings/power/domain-idle-state.txt
> diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.txt b/Documentation/devicetree/bindings/power/qcom,rpmpd.txt
> index eb35b22f9e23..386eeed6a887 100644
> --- a/Documentation/devicetree/bindings/power/qcom,rpmpd.txt
> +++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.txt
> @@ -12,7 +12,7 @@ Required Properties:
>   - #power-domain-cells: number of cells in Power domain specifier
>         must be 1.
>   - operating-points-v2: Phandle to the OPP table for the Power domain.
> -       Refer to Documentation/devicetree/bindings/power/power_domain.txt
> +       Refer to Documentation/devicetree/bindings/power/power-domain-consumers.yaml
>         and Documentation/devicetree/bindings/opp/opp.txt for more details
>
>  Refer to <dt-bindings/power/qcom-rpmpd.h> for the level values for
> diff --git a/Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt b/Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt
> index eae2a880155a..8cd804980119 100644
> --- a/Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt
> +++ b/Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt
> @@ -43,7 +43,7 @@ Example:
>
>  Devices residing in a power area must refer to that power area, as documented
>  by the generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain-consumers.yaml.
>
>  Required properties:
>    - power-domains: A phandle and symbolic PM domain specifier, as defined in
> diff --git a/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.txt b/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.txt
> index beda7d2efc30..49aba15dff8b 100644
> --- a/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.txt
> +++ b/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.txt
> @@ -29,7 +29,7 @@ Optional nodes:
>
>  Each of the PM domain nodes represents a PM domain, as documented by the
>  generic PM domain bindings in
> -Documentation/devicetree/bindings/power/power_domain.txt.
> +Documentation/devicetree/bindings/power/power-domain.yaml.
>
>  The nodes should be named by the real power area names, and thus their names
>  should be unique.
> diff --git a/Documentation/devicetree/bindings/power/xlnx,zynqmp-genpd.txt b/Documentation/devicetree/bindings/power/xlnx,zynqmp-genpd.txt
> index 8d1b8200ebd0..54b9f9d0f90f 100644
> --- a/Documentation/devicetree/bindings/power/xlnx,zynqmp-genpd.txt
> +++ b/Documentation/devicetree/bindings/power/xlnx,zynqmp-genpd.txt
> @@ -4,7 +4,7 @@ Device Tree Bindings for the Xilinx Zynq MPSoC PM domains
>  The binding for zynqmp-power-controller follow the common
>  generic PM domain binding[1].
>
> -[1] Documentation/devicetree/bindings/power/power_domain.txt
> +[1] Documentation/devicetree/bindings/power/power-domain.yaml
>
>  == Zynq MPSoC Generic PM Domain Node ==
>
> diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
> index 3b7d32956391..72ff033565e5 100644
> --- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
> +++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
> @@ -26,7 +26,7 @@ Optional properties:
>      system power.  This node follows the power controller bindings[3].
>
>  [1] Documentation/devicetree/bindings/reset/reset.txt
> -[2] Documentation/devicetree/bindings/power/power_domain.txt
> +[2] Documentation/devicetree/bindings/power/power-domain.yaml
>  [3] Documentation/devicetree/bindings/power/power-controller.txt
>
>  Example:
> diff --git a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> index 876693a7ada5..8f469d85833b 100644
> --- a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> +++ b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> @@ -8,7 +8,7 @@ The System Power Manager (SPM) inside the SCPSYS is for the MTCMOS power
>  domain control.
>
>  The driver implements the Generic PM domain bindings described in
> -power/power_domain.txt. It provides the power domains defined in
> +power/power-domain.yaml. It provides the power domains defined in
>  - include/dt-bindings/power/mt8173-power.h
>  - include/dt-bindings/power/mt6797-power.h
>  - include/dt-bindings/power/mt2701-power.h
> diff --git a/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt b/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
> index f541d1f776a2..6217e64309de 100644
> --- a/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
> +++ b/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
> @@ -12,7 +12,7 @@ PM Domain Node
>  ==============
>  The PM domain node represents the global PM domain managed by the PMMC, which
>  in this case is the implementation as documented by the generic PM domain
> -bindings in Documentation/devicetree/bindings/power/power_domain.txt.  Because
> +bindings in Documentation/devicetree/bindings/power/power-domain.yaml.  Because
>  this relies on the TI SCI protocol to communicate with the PMMC it must be a
>  child of the pmmc node.
>
> diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra124-xusb.txt b/Documentation/devicetree/bindings/usb/nvidia,tegra124-xusb.txt
> index 5bfcc0b4d6b9..ee0d6c28978f 100644
> --- a/Documentation/devicetree/bindings/usb/nvidia,tegra124-xusb.txt
> +++ b/Documentation/devicetree/bindings/usb/nvidia,tegra124-xusb.txt
> @@ -64,12 +64,12 @@ For Tegra210:
>  For Tegra210 and Tegra186:
>  - power-domains: A list of PM domain specifiers that reference each power-domain
>    used by the xHCI controller. This list must comprise of a specifier for the
> -  XUSBA and XUSBC power-domains. See ../power/power_domain.txt and
> +  XUSBA and XUSBC power-domains. See ../power/power-domain-consumers.yaml and
>    ../arm/tegra/nvidia,tegra20-pmc.txt for details.
>  - power-domain-names: A list of names that represent each of the specifiers in
>    the 'power-domains' property. Must include 'xusb_ss' and 'xusb_host' which
>    represent the power-domains XUSBA and XUSBC, respectively. See
> -  ../power/power_domain.txt for details.
> +  ../power/power-domain-consumers.yaml for details.
>
>  Optional properties:
>  --------------------
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 296de2b51c83..a1a2237c1cc6 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6883,7 +6883,7 @@ L:        linux-pm@vger.kernel.org
>  S:     Supported
>  F:     drivers/base/power/domain*.c
>  F:     include/linux/pm_domain.h
> -F:     Documentation/devicetree/bindings/power/power_domain.txt
> +F:     Documentation/devicetree/bindings/power/power-domain*.yaml
>
>  GENERIC RESISTIVE TOUCHSCREEN ADC DRIVER
>  M:     Eugen Hristev <eugen.hristev@microchip.com>
> --
> 2.17.1
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
