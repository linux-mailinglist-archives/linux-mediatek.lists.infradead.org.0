Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D991B0F3E
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 Apr 2020 17:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ia1VjDfQd6AhU4JsQJf7F/VRqdIrh6nhG6V0phpkDZU=; b=fBH
	JMtruijQpyTsK8nH6xZjNWc9Uhp1J8qyOSHSbkIDUJmOjLnZkvTaxZzbSHjGZ764P6dHKNodJ4teZ
	Rq0sEljVEPnkI3vZ0Pw0BYlqdt/tUbrKgUuVDui8nhp7mOfxdvmQR1bBlBY3QvT369iSVDr9klE3B
	T/uV/KiT/0Abgt3L4FHWNB9gQG6uWpKciSOW8eg/x28EFjN3SaaCVcF562q13XpI46iZ/X7aO03YZ
	o2JZ1EhRoO4PQU3bxCS/qkQDxq8CGuXHkoULT6QHtunX8eFDVVHqwvkjtPXo103rmpq+9VKpQzMtn
	eHi7ojmiwfu/srFm2VQhmwYKLoaKjhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXzl-00038b-A0; Mon, 20 Apr 2020 15:06:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXyy-0000yT-1s; Mon, 20 Apr 2020 15:05:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F74531B;
 Mon, 20 Apr 2020 08:05:08 -0700 (PDT)
Received: from ssg-dev-vb.arm.com (unknown [10.57.26.77])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03E073F73D;
 Mon, 20 Apr 2020 08:04:51 -0700 (PDT)
From: Hadar Gat <hadar.gat@arm.com>
To: "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Vinod Koul <vkoul@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jonathan Cameron <jic23@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Tony Lindgren <tony@atomide.com>, Lee Jones <lee.jones@linaro.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>, JC Kuo <jckuo@nvidia.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Stefan Agner <stefan@agner.ch>, Linus Walleij <linus.walleij@linaro.org>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3] of_device: removed #include that caused a recursion in
 included headers
Date: Mon, 20 Apr 2020 18:04:29 +0300
Message-Id: <1587395080-15722-1-git-send-email-hadar.gat@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_080512_250321_D1C5A085 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-iio@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mtd@lists.infradead.org, sparclinux@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Hadar Gat <hadar.gat@arm.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ofir Drang <ofir.drang@arm.com>,
 Gilad Ben-Yossef <gilad@benyossef.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 dmaengine@vger.kernel.org, freedreno@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Both of_platform.h and of_device.h were included each other.
In of_device.h, removed unneeded #include to of_platform.h
and added include to of_platform.h in the files that needs it.

Signed-off-by: Hadar Gat <hadar.gat@arm.com>
Reported-by: kbuild test robot <lkp@intel.com>
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com> #for-iio
Acked-by: Stephen Boyd <sboyd@kernel.org> # clk
---
v3: add include to of_platform.h in more files. (reported due other builds)
v2: add include to of_platform.h in more files. (reported due other builds)

 arch/sparc/kernel/pci.c                           | 1 +
 arch/sparc/kernel/pci_sabre.c                     | 1 +
 arch/sparc/kernel/pci_schizo.c                    | 1 +
 arch/sparc/kernel/sbus.c                          | 1 +
 arch/sparc/mm/io-unit.c                           | 1 +
 arch/sparc/mm/iommu.c                             | 1 +
 drivers/base/platform.c                           | 1 +
 drivers/bus/imx-weim.c                            | 1 +
 drivers/bus/vexpress-config.c                     | 1 +
 drivers/clk/mediatek/clk-mt7622-aud.c             | 1 +
 drivers/dma/at_hdmac.c                            | 1 +
 drivers/dma/stm32-dmamux.c                        | 1 +
 drivers/dma/ti/dma-crossbar.c                     | 1 +
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c             | 1 +
 drivers/gpu/drm/msm/hdmi/hdmi.c                   | 1 +
 drivers/gpu/drm/msm/msm_drv.c                     | 1 +
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 1 +
 drivers/gpu/drm/sun4i/sun4i_tcon.c                | 1 +
 drivers/iio/adc/stm32-adc-core.c                  | 1 +
 drivers/iio/adc/stm32-dfsdm-adc.c                 | 1 +
 drivers/iio/adc/stm32-dfsdm-core.c                | 1 +
 drivers/iommu/tegra-smmu.c                        | 1 +
 drivers/media/platform/coda/coda-common.c         | 1 +
 drivers/memory/atmel-ebi.c                        | 1 +
 drivers/mfd/palmas.c                              | 1 +
 drivers/mfd/ssbi.c                                | 1 +
 drivers/mtd/nand/raw/omap2.c                      | 1 +
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 1 +
 drivers/net/ethernet/ti/cpsw.c                    | 1 +
 drivers/phy/tegra/xusb.c                          | 1 +
 drivers/pinctrl/freescale/pinctrl-imx1-core.c     | 1 +
 drivers/pinctrl/nomadik/pinctrl-nomadik.c         | 1 +
 drivers/soc/samsung/exynos-pmu.c                  | 1 +
 drivers/soc/sunxi/sunxi_sram.c                    | 1 +
 include/linux/of_device.h                         | 2 --
 lib/genalloc.c                                    | 1 +
 36 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/arch/sparc/kernel/pci.c b/arch/sparc/kernel/pci.c
index 5ed4382..89ea658 100644
--- a/arch/sparc/kernel/pci.c
+++ b/arch/sparc/kernel/pci.c
@@ -21,6 +21,7 @@
 #include <linux/init.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 
 #include <linux/uaccess.h>
 #include <asm/pgtable.h>
diff --git a/arch/sparc/kernel/pci_sabre.c b/arch/sparc/kernel/pci_sabre.c
index 3c38ca4..16761d0 100644
--- a/arch/sparc/kernel/pci_sabre.c
+++ b/arch/sparc/kernel/pci_sabre.c
@@ -14,6 +14,7 @@
 #include <linux/slab.h>
 #include <linux/interrupt.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 
 #include <asm/apb.h>
 #include <asm/iommu.h>
diff --git a/arch/sparc/kernel/pci_schizo.c b/arch/sparc/kernel/pci_schizo.c
index 421aba0..733f069 100644
--- a/arch/sparc/kernel/pci_schizo.c
+++ b/arch/sparc/kernel/pci_schizo.c
@@ -12,6 +12,7 @@
 #include <linux/export.h>
 #include <linux/interrupt.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/numa.h>
 
 #include <asm/iommu.h>
diff --git a/arch/sparc/kernel/sbus.c b/arch/sparc/kernel/sbus.c
index 32141e1..2f4051f 100644
--- a/arch/sparc/kernel/sbus.c
+++ b/arch/sparc/kernel/sbus.c
@@ -15,6 +15,7 @@
 #include <linux/interrupt.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/numa.h>
 
 #include <asm/page.h>
diff --git a/arch/sparc/mm/io-unit.c b/arch/sparc/mm/io-unit.c
index 289276b..5638399 100644
--- a/arch/sparc/mm/io-unit.c
+++ b/arch/sparc/mm/io-unit.c
@@ -15,6 +15,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 
 #include <asm/pgalloc.h>
 #include <asm/pgtable.h>
diff --git a/arch/sparc/mm/iommu.c b/arch/sparc/mm/iommu.c
index b00dde1..9cbb2e7 100644
--- a/arch/sparc/mm/iommu.c
+++ b/arch/sparc/mm/iommu.c
@@ -16,6 +16,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 
 #include <asm/pgalloc.h>
 #include <asm/pgtable.h>
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 5255550..f549274b 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -12,6 +12,7 @@
 #include <linux/string.h>
 #include <linux/platform_device.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/of_irq.h>
 #include <linux/module.h>
 #include <linux/init.h>
diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 28bb65a..8c786da 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -11,6 +11,7 @@
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
 #include <linux/regmap.h>
diff --git a/drivers/bus/vexpress-config.c b/drivers/bus/vexpress-config.c
index ff70575..12b8b0b 100644
--- a/drivers/bus/vexpress-config.c
+++ b/drivers/bus/vexpress-config.c
@@ -8,6 +8,7 @@
 #include <linux/init.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/vexpress.h>
 
 
diff --git a/drivers/clk/mediatek/clk-mt7622-aud.c b/drivers/clk/mediatek/clk-mt7622-aud.c
index 2bd4295..8cbb68f 100644
--- a/drivers/clk/mediatek/clk-mt7622-aud.c
+++ b/drivers/clk/mediatek/clk-mt7622-aud.c
@@ -9,6 +9,7 @@
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/platform_device.h>
 
 #include "clk-mtk.h"
diff --git a/drivers/dma/at_hdmac.c b/drivers/dma/at_hdmac.c
index 73a2078..388f8e10 100644
--- a/drivers/dma/at_hdmac.c
+++ b/drivers/dma/at_hdmac.c
@@ -20,6 +20,7 @@
 #include <linux/slab.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/of_dma.h>
 
 #include "at_hdmac_regs.h"
diff --git a/drivers/dma/stm32-dmamux.c b/drivers/dma/stm32-dmamux.c
index 12f7637..b704896 100644
--- a/drivers/dma/stm32-dmamux.c
+++ b/drivers/dma/stm32-dmamux.c
@@ -16,6 +16,7 @@
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/of_dma.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
diff --git a/drivers/dma/ti/dma-crossbar.c b/drivers/dma/ti/dma-crossbar.c
index 4ba8fa5..2c0fd44 100644
--- a/drivers/dma/ti/dma-crossbar.c
+++ b/drivers/dma/ti/dma-crossbar.c
@@ -10,6 +10,7 @@
 #include <linux/io.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/of_dma.h>
 
 #define TI_XBAR_DRA7		0
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index c4e71ab..f523254 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
@@ -6,6 +6,7 @@
 #include <linux/interconnect.h>
 #include <linux/pm_domain.h>
 #include <linux/pm_opp.h>
+#include <linux/of_platform.h>
 #include <soc/qcom/cmd-db.h>
 
 #include "a6xx_gpu.h"
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 737453b..5034d40 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -7,6 +7,7 @@
 
 #include <linux/of_irq.h>
 #include <linux/of_gpio.h>
+#include <linux/of_platform.h>
 
 #include <sound/hdmi-codec.h>
 #include "hdmi.h"
diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
index 29295de..ddc9e85 100644
--- a/drivers/gpu/drm/msm/msm_drv.c
+++ b/drivers/gpu/drm/msm/msm_drv.c
@@ -8,6 +8,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/kthread.h>
 #include <linux/uaccess.h>
+#include <linux/of_platform.h>
 #include <uapi/linux/sched/types.h>
 
 #include <drm/drm_drv.h>
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 6e1270e..d038bae 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/phy/phy.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 624437b..aa35757 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -11,6 +11,7 @@
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/of_irq.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
index 2df88d2..3dc3453 100644
--- a/drivers/iio/adc/stm32-adc-core.c
+++ b/drivers/iio/adc/stm32-adc-core.c
@@ -17,6 +17,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index 76a60d9..e83848cb 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -20,6 +20,7 @@
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
diff --git a/drivers/iio/adc/stm32-dfsdm-core.c b/drivers/iio/adc/stm32-dfsdm-core.c
index 26e2011..f6a53ab 100644
--- a/drivers/iio/adc/stm32-dfsdm-core.c
+++ b/drivers/iio/adc/stm32-dfsdm-core.c
@@ -12,6 +12,7 @@
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
diff --git a/drivers/iommu/tegra-smmu.c b/drivers/iommu/tegra-smmu.c
index 63a147b..3797caa 100644
--- a/drivers/iommu/tegra-smmu.c
+++ b/drivers/iommu/tegra-smmu.c
@@ -10,6 +10,7 @@
 #include <linux/kernel.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/dma-mapping.h>
diff --git a/drivers/media/platform/coda/coda-common.c b/drivers/media/platform/coda/coda-common.c
index d0d093d..0874824 100644
--- a/drivers/media/platform/coda/coda-common.c
+++ b/drivers/media/platform/coda/coda-common.c
@@ -20,6 +20,7 @@
 #include <linux/kfifo.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/slab.h>
diff --git a/drivers/memory/atmel-ebi.c b/drivers/memory/atmel-ebi.c
index 14386d0..272b1a8 100644
--- a/drivers/memory/atmel-ebi.c
+++ b/drivers/memory/atmel-ebi.c
@@ -13,6 +13,7 @@
 #include <linux/mfd/syscon/atmel-smc.h>
 #include <linux/init.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/regmap.h>
 #include <soc/at91/atmel-sfr.h>
 
diff --git a/drivers/mfd/palmas.c b/drivers/mfd/palmas.c
index f5b3fa9..cca44bc 100644
--- a/drivers/mfd/palmas.c
+++ b/drivers/mfd/palmas.c
@@ -19,6 +19,7 @@
 #include <linux/mfd/core.h>
 #include <linux/mfd/palmas.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 
 static const struct regmap_config palmas_regmap_config[PALMAS_NUM_CLIENTS] = {
 	{
diff --git a/drivers/mfd/ssbi.c b/drivers/mfd/ssbi.c
index 94f60df..72cd45a 100644
--- a/drivers/mfd/ssbi.c
+++ b/drivers/mfd/ssbi.c
@@ -20,6 +20,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 
 /* SSBI 2.0 controller registers */
 #define SSBI2_CMD			0x0008
diff --git a/drivers/mtd/nand/raw/omap2.c b/drivers/mtd/nand/raw/omap2.c
index ad77c11..d851ec7 100644
--- a/drivers/mtd/nand/raw/omap2.c
+++ b/drivers/mtd/nand/raw/omap2.c
@@ -22,6 +22,7 @@
 #include <linux/slab.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 
 #include <linux/mtd/nand_bch.h>
 #include <linux/platform_data/elm.h>
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 58e0511..d704d57 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/of_mdio.h>
 #include <linux/of_net.h>
 #include <linux/phy.h>
diff --git a/drivers/net/ethernet/ti/cpsw.c b/drivers/net/ethernet/ti/cpsw.c
index c2c5bf8..6932945 100644
--- a/drivers/net/ethernet/ti/cpsw.c
+++ b/drivers/net/ethernet/ti/cpsw.c
@@ -28,6 +28,7 @@
 #include <linux/of_mdio.h>
 #include <linux/of_net.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/if_vlan.h>
 #include <linux/kmemleak.h>
 #include <linux/sys_soc.h>
diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index de4a46f..0eac1b8 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -9,6 +9,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/phy/phy.h>
 #include <linux/phy/tegra/xusb.h>
 #include <linux/platform_device.h>
diff --git a/drivers/pinctrl/freescale/pinctrl-imx1-core.c b/drivers/pinctrl/freescale/pinctrl-imx1-core.c
index c00d002..d1c171e 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx1-core.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx1-core.c
@@ -16,6 +16,7 @@
 #include <linux/io.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/pinctrl/machine.h>
 #include <linux/pinctrl/pinconf.h>
 #include <linux/pinctrl/pinctrl.h>
diff --git a/drivers/pinctrl/nomadik/pinctrl-nomadik.c b/drivers/pinctrl/nomadik/pinctrl-nomadik.c
index ca7bbe4..44974ac 100644
--- a/drivers/pinctrl/nomadik/pinctrl-nomadik.c
+++ b/drivers/pinctrl/nomadik/pinctrl-nomadik.c
@@ -19,6 +19,7 @@
 #include <linux/interrupt.h>
 #include <linux/slab.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/of_address.h>
 #include <linux/bitops.h>
 #include <linux/pinctrl/machine.h>
diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
index 17304fa..25129b0 100644
--- a/drivers/soc/samsung/exynos-pmu.c
+++ b/drivers/soc/samsung/exynos-pmu.c
@@ -8,6 +8,7 @@
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/mfd/syscon.h>
 #include <linux/platform_device.h>
 #include <linux/delay.h>
diff --git a/drivers/soc/sunxi/sunxi_sram.c b/drivers/soc/sunxi/sunxi_sram.c
index 1b0d50f..423cec3 100644
--- a/drivers/soc/sunxi/sunxi_sram.c
+++ b/drivers/soc/sunxi/sunxi_sram.c
@@ -16,6 +16,7 @@
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 
diff --git a/include/linux/of_device.h b/include/linux/of_device.h
index 8d31e39..752999b 100644
--- a/include/linux/of_device.h
+++ b/include/linux/of_device.h
@@ -4,8 +4,6 @@
 
 #include <linux/cpu.h>
 #include <linux/platform_device.h>
-#include <linux/of_platform.h> /* temporary until merge */
-
 #include <linux/of.h>
 #include <linux/mod_devicetable.h>
 
diff --git a/lib/genalloc.c b/lib/genalloc.c
index 7f1244b..08e21eeb 100644
--- a/lib/genalloc.c
+++ b/lib/genalloc.c
@@ -33,6 +33,7 @@
 #include <linux/interrupt.h>
 #include <linux/genalloc.h>
 #include <linux/of_device.h>
+#include <linux/of_platform.h>
 #include <linux/vmalloc.h>
 
 static inline size_t chunk_size(const struct gen_pool_chunk *chunk)
-- 
2.7.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
