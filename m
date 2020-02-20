Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB27166483
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Feb 2020 18:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phlTklfe/6a0mN+Gk93w4bM56rqZDMo8xK3MDVhkN+g=; b=m7MFS+hMTcFQd2
	OU3pvmCShi+AMr7URSMFrha+dGMotDqw44hKWL32gyyAhjBEqvnKE8iPdkWnjhKougOn4bL3RthTH
	PvYXkR6Mv2Hyk3aRKHdZ0nxbiXmMCnyL+GgBtD6UFXXEsvLEW+NxqovH+HbMWysCu9IthbKhXLAce
	3U90k/ykbw3DeTHiumGfkr4ymh4Y2ZnAjov/5tRtJlVCtZMOpeWiN7aR4ytPSy91wVkLWGUGJVB5V
	bZiPX9PhQ/DaCk9rP6BZK6eUlvSDXsiniEUkNjXUwUd6c/0qOMTiHg2U/grGN0HmMOssnWOHX7NPy
	BBUKBw0lfMNOryfYYwmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pYx-0004l3-6q; Thu, 20 Feb 2020 17:24:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pWl-0002Xl-Ib; Thu, 20 Feb 2020 17:22:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 93ECD295293
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH v8 6/6] clk/drm: mediatek: Fix mediatek-drm device probing
Date: Thu, 20 Feb 2020 18:21:47 +0100
Message-Id: <20200220172147.919996-7-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200220172147.919996-1-enric.balletbo@collabora.com>
References: <20200220172147.919996-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092220_295589_1464D467 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In the actual implementation the same compatible string
"mediatek,<chip>-mmsys" is used to bind the clock drivers
(drivers/clk/mediatek) as well as to the gpu driver
(drivers/gpu/drm/mediatek/mtk_drm_drv.c). This ends with the problem
that the only probed driver is the clock driver and there is no display
at all.

In any case having the same compatible string for two drivers is not
correct and should be fixed. To fix this, and maintain backward
compatibility, we can consider that the clk-<chip>-mm driver is the
top-level entry point for the MMSYS subsystem, so is not a pure clock
controller but a system controller, and the drm driver is instantiated
by that MMSYS driver.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

Changes in v8:
- New patch introduced in this series.

Changes in v7: None

 drivers/clk/mediatek/clk-mt2701-mm.c   |  30 ++++++++
 drivers/clk/mediatek/clk-mt2712-mm.c   |  44 +++++++++++
 drivers/clk/mediatek/clk-mt8173-mm.c   |  35 +++++++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 102 ++-----------------------
 4 files changed, 115 insertions(+), 96 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt2701-mm.c b/drivers/clk/mediatek/clk-mt2701-mm.c
index 054b597d4a73..b1281680d5bf 100644
--- a/drivers/clk/mediatek/clk-mt2701-mm.c
+++ b/drivers/clk/mediatek/clk-mt2701-mm.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/clk-provider.h>
+#include <linux/platform_data/mtk_mmsys.h>
 #include <linux/platform_device.h>
 
 #include "clk-mtk.h"
@@ -79,6 +80,27 @@ static const struct mtk_gate mm_clks[] = {
 	GATE_DISP1(CLK_MM_TVE_FMM, "mm_tve_fmm", "mm_sel", 14),
 };
 
+static const enum mtk_ddp_comp_id mt2701_mtk_ddp_main[] = {
+	DDP_COMPONENT_OVL0,
+	DDP_COMPONENT_RDMA0,
+	DDP_COMPONENT_COLOR0,
+	DDP_COMPONENT_BLS,
+	DDP_COMPONENT_DSI0,
+};
+
+static const enum mtk_ddp_comp_id mt2701_mtk_ddp_ext[] = {
+	DDP_COMPONENT_RDMA1,
+	DDP_COMPONENT_DPI0,
+};
+
+static struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
+	.main_path = mt2701_mtk_ddp_main,
+	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
+	.ext_path = mt2701_mtk_ddp_ext,
+	.ext_len = ARRAY_SIZE(mt2701_mtk_ddp_ext),
+	.shadow_register = true,
+};
+
 static const struct of_device_id of_match_clk_mt2701_mm[] = {
 	{ .compatible = "mediatek,mt2701-mmsys", },
 	{}
@@ -87,6 +109,7 @@ static const struct of_device_id of_match_clk_mt2701_mm[] = {
 static int clk_mt2701_mm_probe(struct platform_device *pdev)
 {
 	struct clk_onecell_data *clk_data;
+	struct platform_device *drm;
 	int r;
 	struct device_node *node = pdev->dev.of_node;
 
@@ -101,6 +124,13 @@ static int clk_mt2701_mm_probe(struct platform_device *pdev)
 			"could not register clock provider: %s: %d\n",
 			pdev->name, r);
 
+	platform_set_drvdata(pdev, &mt2701_mmsys_driver_data);
+
+	drm = platform_device_register_data(&pdev->dev, "mediatek-drm",
+					    PLATFORM_DEVID_NONE, NULL, 0);
+	if (IS_ERR(drm))
+		return PTR_ERR(drm);
+
 	return r;
 }
 
diff --git a/drivers/clk/mediatek/clk-mt2712-mm.c b/drivers/clk/mediatek/clk-mt2712-mm.c
index 1c5948be35f3..0ae971783997 100644
--- a/drivers/clk/mediatek/clk-mt2712-mm.c
+++ b/drivers/clk/mediatek/clk-mt2712-mm.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/clk-provider.h>
+#include <linux/platform_data/mtk_mmsys.h>
 #include <linux/platform_device.h>
 
 #include "clk-mtk.h"
@@ -126,9 +127,45 @@ static const struct mtk_gate mm_clks[] = {
 	GATE_MM2(CLK_MM_DSI3_DIGITAL, "mm_dsi3_digital", "dsi1_lntc", 6),
 };
 
+static const enum mtk_ddp_comp_id mt2712_mtk_ddp_main[] = {
+	DDP_COMPONENT_OVL0,
+	DDP_COMPONENT_COLOR0,
+	DDP_COMPONENT_AAL0,
+	DDP_COMPONENT_OD0,
+	DDP_COMPONENT_RDMA0,
+	DDP_COMPONENT_DPI0,
+	DDP_COMPONENT_PWM0,
+};
+
+static const enum mtk_ddp_comp_id mt2712_mtk_ddp_ext[] = {
+	DDP_COMPONENT_OVL1,
+	DDP_COMPONENT_COLOR1,
+	DDP_COMPONENT_AAL1,
+	DDP_COMPONENT_OD1,
+	DDP_COMPONENT_RDMA1,
+	DDP_COMPONENT_DPI1,
+	DDP_COMPONENT_PWM1,
+};
+
+static const enum mtk_ddp_comp_id mt2712_mtk_ddp_third[] = {
+	DDP_COMPONENT_RDMA2,
+	DDP_COMPONENT_DSI3,
+	DDP_COMPONENT_PWM2,
+};
+
+static struct mtk_mmsys_driver_data mt2712_mmsys_driver_data = {
+	.main_path = mt2712_mtk_ddp_main,
+	.main_len = ARRAY_SIZE(mt2712_mtk_ddp_main),
+	.ext_path = mt2712_mtk_ddp_ext,
+	.ext_len = ARRAY_SIZE(mt2712_mtk_ddp_ext),
+	.third_path = mt2712_mtk_ddp_third,
+	.third_len = ARRAY_SIZE(mt2712_mtk_ddp_third),
+};
+
 static int clk_mt2712_mm_probe(struct platform_device *pdev)
 {
 	struct clk_onecell_data *clk_data;
+	struct platform_device *drm;
 	int r;
 	struct device_node *node = pdev->dev.of_node;
 
@@ -143,6 +180,13 @@ static int clk_mt2712_mm_probe(struct platform_device *pdev)
 		pr_err("%s(): could not register clock provider: %d\n",
 			__func__, r);
 
+	platform_set_drvdata(pdev, &mt2712_mmsys_driver_data);
+
+	drm = platform_device_register_data(&pdev->dev, "mediatek-drm",
+					    PLATFORM_DEVID_NONE, NULL, 0);
+	if (IS_ERR(drm))
+		return PTR_ERR(drm);
+
 	return r;
 }
 
diff --git a/drivers/clk/mediatek/clk-mt8173-mm.c b/drivers/clk/mediatek/clk-mt8173-mm.c
index 83884fd5a750..9136c7f543f1 100644
--- a/drivers/clk/mediatek/clk-mt8173-mm.c
+++ b/drivers/clk/mediatek/clk-mt8173-mm.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/clk-provider.h>
+#include <linux/platform_data/mtk_mmsys.h>
 #include <linux/platform_device.h>
 
 #include "clk-mtk.h"
@@ -99,10 +100,37 @@ static const struct mtk_gate mm_clks[] = {
 	GATE_MM1(CLK_MM_HDMI_HDCP24M, "mm_hdmi_hdcp24m", "hdcp_24m_sel", 20),
 };
 
+static const enum mtk_ddp_comp_id mt8173_mtk_ddp_main[] = {
+	DDP_COMPONENT_OVL0,
+	DDP_COMPONENT_COLOR0,
+	DDP_COMPONENT_AAL0,
+	DDP_COMPONENT_OD0,
+	DDP_COMPONENT_RDMA0,
+	DDP_COMPONENT_UFOE,
+	DDP_COMPONENT_DSI0,
+	DDP_COMPONENT_PWM0,
+};
+
+static const enum mtk_ddp_comp_id mt8173_mtk_ddp_ext[] = {
+	DDP_COMPONENT_OVL1,
+	DDP_COMPONENT_COLOR1,
+	DDP_COMPONENT_GAMMA,
+	DDP_COMPONENT_RDMA1,
+	DDP_COMPONENT_DPI0,
+};
+
+static struct mtk_mmsys_driver_data mt8173_mmsys_driver_data = {
+	.main_path = mt8173_mtk_ddp_main,
+	.main_len = ARRAY_SIZE(mt8173_mtk_ddp_main),
+	.ext_path = mt8173_mtk_ddp_ext,
+	.ext_len = ARRAY_SIZE(mt8173_mtk_ddp_ext),
+};
+
 static int clk_mt8173_mm_probe(struct platform_device *pdev)
 {
 	struct device_node *node = pdev->dev.of_node;
 	struct clk_onecell_data *clk_data;
+	struct platform_device *drm;
 	int ret;
 
 	clk_data = mtk_alloc_clk_data(CLK_MM_NR_CLK);
@@ -118,6 +146,13 @@ static int clk_mt8173_mm_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	platform_set_drvdata(pdev, &mt8173_mmsys_driver_data);
+
+	drm = platform_device_register_data(&pdev->dev, "mediatek-drm",
+					    PLATFORM_DEVID_NONE, NULL, 0);
+	if (IS_ERR(drm))
+		return PTR_ERR(drm);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index b68837ea02b3..5b60f6b7d710 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -61,88 +61,6 @@ static const struct drm_mode_config_funcs mtk_drm_mode_config_funcs = {
 	.atomic_commit = drm_atomic_helper_commit,
 };
 
-static const enum mtk_ddp_comp_id mt2701_mtk_ddp_main[] = {
-	DDP_COMPONENT_OVL0,
-	DDP_COMPONENT_RDMA0,
-	DDP_COMPONENT_COLOR0,
-	DDP_COMPONENT_BLS,
-	DDP_COMPONENT_DSI0,
-};
-
-static const enum mtk_ddp_comp_id mt2701_mtk_ddp_ext[] = {
-	DDP_COMPONENT_RDMA1,
-	DDP_COMPONENT_DPI0,
-};
-
-static const enum mtk_ddp_comp_id mt2712_mtk_ddp_main[] = {
-	DDP_COMPONENT_OVL0,
-	DDP_COMPONENT_COLOR0,
-	DDP_COMPONENT_AAL0,
-	DDP_COMPONENT_OD0,
-	DDP_COMPONENT_RDMA0,
-	DDP_COMPONENT_DPI0,
-	DDP_COMPONENT_PWM0,
-};
-
-static const enum mtk_ddp_comp_id mt2712_mtk_ddp_ext[] = {
-	DDP_COMPONENT_OVL1,
-	DDP_COMPONENT_COLOR1,
-	DDP_COMPONENT_AAL1,
-	DDP_COMPONENT_OD1,
-	DDP_COMPONENT_RDMA1,
-	DDP_COMPONENT_DPI1,
-	DDP_COMPONENT_PWM1,
-};
-
-static const enum mtk_ddp_comp_id mt2712_mtk_ddp_third[] = {
-	DDP_COMPONENT_RDMA2,
-	DDP_COMPONENT_DSI3,
-	DDP_COMPONENT_PWM2,
-};
-
-static const enum mtk_ddp_comp_id mt8173_mtk_ddp_main[] = {
-	DDP_COMPONENT_OVL0,
-	DDP_COMPONENT_COLOR0,
-	DDP_COMPONENT_AAL0,
-	DDP_COMPONENT_OD0,
-	DDP_COMPONENT_RDMA0,
-	DDP_COMPONENT_UFOE,
-	DDP_COMPONENT_DSI0,
-	DDP_COMPONENT_PWM0,
-};
-
-static const enum mtk_ddp_comp_id mt8173_mtk_ddp_ext[] = {
-	DDP_COMPONENT_OVL1,
-	DDP_COMPONENT_COLOR1,
-	DDP_COMPONENT_GAMMA,
-	DDP_COMPONENT_RDMA1,
-	DDP_COMPONENT_DPI0,
-};
-
-static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
-	.main_path = mt2701_mtk_ddp_main,
-	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
-	.ext_path = mt2701_mtk_ddp_ext,
-	.ext_len = ARRAY_SIZE(mt2701_mtk_ddp_ext),
-	.shadow_register = true,
-};
-
-static const struct mtk_mmsys_driver_data mt2712_mmsys_driver_data = {
-	.main_path = mt2712_mtk_ddp_main,
-	.main_len = ARRAY_SIZE(mt2712_mtk_ddp_main),
-	.ext_path = mt2712_mtk_ddp_ext,
-	.ext_len = ARRAY_SIZE(mt2712_mtk_ddp_ext),
-	.third_path = mt2712_mtk_ddp_third,
-	.third_len = ARRAY_SIZE(mt2712_mtk_ddp_third),
-};
-
-static const struct mtk_mmsys_driver_data mt8173_mmsys_driver_data = {
-	.main_path = mt8173_mtk_ddp_main,
-	.main_len = ARRAY_SIZE(mt8173_mtk_ddp_main),
-	.ext_path = mt8173_mtk_ddp_ext,
-	.ext_len = ARRAY_SIZE(mt8173_mtk_ddp_ext),
-};
-
 static int mtk_drm_kms_init(struct drm_device *drm)
 {
 	struct mtk_drm_private *private = drm->dev_private;
@@ -425,6 +343,7 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 static int mtk_drm_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct device_node *phandle = dev->parent->of_node;
 	struct mtk_drm_private *private;
 	struct device_node *node;
 	struct component_match *match = NULL;
@@ -435,14 +354,16 @@ static int mtk_drm_probe(struct platform_device *pdev)
 	if (!private)
 		return -ENOMEM;
 
-	private->data = of_device_get_match_data(dev);
+	private->data = dev_get_drvdata(dev->parent);
+	if (!private->data)
+		return -ENODEV;
 
-	private->config_regs = syscon_node_to_regmap(dev->of_node);
+	private->config_regs = syscon_node_to_regmap(phandle);
 	if (IS_ERR(private->config_regs))
 		return PTR_ERR(private->config_regs);
 
 	/* Iterate over sibling DISP function blocks */
-	for_each_child_of_node(dev->of_node->parent, node) {
+	for_each_child_of_node(phandle->parent, node) {
 		const struct of_device_id *of_id;
 		enum mtk_ddp_comp_type comp_type;
 		int comp_id;
@@ -576,22 +497,11 @@ static int mtk_drm_sys_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(mtk_drm_pm_ops, mtk_drm_sys_suspend,
 			 mtk_drm_sys_resume);
 
-static const struct of_device_id mtk_drm_of_ids[] = {
-	{ .compatible = "mediatek,mt2701-mmsys",
-	  .data = &mt2701_mmsys_driver_data},
-	{ .compatible = "mediatek,mt2712-mmsys",
-	  .data = &mt2712_mmsys_driver_data},
-	{ .compatible = "mediatek,mt8173-mmsys",
-	  .data = &mt8173_mmsys_driver_data},
-	{ }
-};
-
 static struct platform_driver mtk_drm_platform_driver = {
 	.probe	= mtk_drm_probe,
 	.remove	= mtk_drm_remove,
 	.driver	= {
 		.name	= "mediatek-drm",
-		.of_match_table = mtk_drm_of_ids,
 		.pm     = &mtk_drm_pm_ops,
 	},
 };
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
