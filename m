Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D876A115FB1
	for <lists+linux-mediatek@lfdr.de>; Sat,  7 Dec 2019 23:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryS+G0wKPNAM+thxwfJ1nZTwwoIHPQdkbAQAgEJubS4=; b=mhVQRxwtgIZkq6
	8cCD0IPphuqt4aigt0WHHVpml291YBkyjAOtUWZG1fdB3BOt6qQG9+Tb/ZFrmDliyX1j7HOc1LX5i
	u5+e/0f8xc/zGik4QLwoFVZJewxe507pMya/3YA5r8gmIlb+6itYPcm3bgDCa7CxNxpZnCXl/X1G8
	pMe+JNCiS0A/00MK26F6BuD3WwTb0ZbN+qz+6ndqibEXUkmQ26aqHBDfGo5B1dUCD8ZIhn6DZdgb7
	xU4w6W+RXq0zt+8Jkc9hl6xjoaJyAuBGSKkdTH/3+RuJoCtYxblSYL5U7yeaAuSSm8e37UR5WO3k5
	GEY9GrYGUvLU/MWNDG5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idiuZ-0006vZ-78; Sat, 07 Dec 2019 22:50:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idisW-0003bL-2L; Sat, 07 Dec 2019 22:48:45 +0000
Received: from ziggy.de (unknown [95.169.229.25])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A49C924683;
 Sat,  7 Dec 2019 22:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575758923;
 bh=TiW6KdtW/ar4YbEgXwuzvM2malWSh9JMEZcRb2LrTeE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Hux5QYpp3mkEwbFwe+Kii29sd+ioU4lhHyQ0rKFT5mU4jtTxwGU6AFkcyMdeEhuFX
 xDCs4tBbHV59MO1GJZUGjjegMqsYKGlbC8MQ/+UOWmAUvNKT7omB0+gblSCmjcY/f4
 PaSo7GrV/K88iRpIRWGzTfueHmuv7BhxtvWYtEDo=
From: matthias.bgg@kernel.org
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com, enric.balletbo@collabora.com
Subject: [resend PATCH v6 08/12] clk: mediatek: mt6779: switch mmsys to
 platform device probing
Date: Sat,  7 Dec 2019 23:47:36 +0100
Message-Id: <20191207224740.24536-9-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191207224740.24536-1-matthias.bgg@kernel.org>
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_144844_201480_4470AF6A 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: matthias.bgg@kernel.org, devicetree@vger.kernel.org, rdunlap@infradead.org,
 frank-w@public-files.de, sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sean.wang@kernel.org, wens@csie.org,
 drinkcat@chromium.org, linux-mediatek@lists.infradead.org, mbrugger@suse.com,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

Switch probing for the MMSYS to support invocation to a
plain paltform device. The driver will be probed by the DRM subsystem.

Singed-off-by: Matthias Brugger <mbrugger@suse.com>
---
 drivers/clk/mediatek/clk-mt6779-mm.c | 41 +++++++++++++++++++---------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt6779-mm.c b/drivers/clk/mediatek/clk-mt6779-mm.c
index fb5fbb8e3e41..439ec460c166 100644
--- a/drivers/clk/mediatek/clk-mt6779-mm.c
+++ b/drivers/clk/mediatek/clk-mt6779-mm.c
@@ -4,13 +4,19 @@
  * Author: Wendell Lin <wendell.lin@mediatek.com>
  */
 
+#include <linux/module.h>
 #include <linux/clk-provider.h>
 #include <linux/platform_device.h>
 #include <dt-bindings/clock/mt6779-clk.h>
+#include <linux/slab.h>
 
 #include "clk-mtk.h"
 #include "clk-gate.h"
 
+struct clk_mt6779_mm_priv {
+	struct clk_onecell_data *clk_data;
+};
+
 static const struct mtk_gate_regs mm0_cg_regs = {
 	.set_ofs = 0x0104,
 	.clr_ofs = 0x0108,
@@ -84,30 +90,39 @@ static const struct mtk_gate mm_clks[] = {
 	GATE_MM1(CLK_MM_DISP_OVL_FBDC, "mm_disp_ovl_fbdc", "mm_sel", 16),
 };
 
-static const struct of_device_id of_match_clk_mt6779_mm[] = {
-	{ .compatible = "mediatek,mt6779-mmsys", },
-	{}
-};
-
 static int clk_mt6779_mm_probe(struct platform_device *pdev)
 {
-	struct clk_onecell_data *clk_data;
-	struct device_node *node = pdev->dev.of_node;
+	struct clk_mt6779_mm_priv *private;
+	struct device_node *node = pdev->dev.parent->of_node;
+
+	private = devm_kzalloc(&pdev->dev, sizeof(*private), GFP_KERNEL);
+	if (!private)
+		return -ENOMEM;
 
-	clk_data = mtk_alloc_clk_data(CLK_MM_NR_CLK);
+	private->clk_data = mtk_alloc_clk_data(CLK_MM_NR_CLK);
+	platform_set_drvdata(pdev, private);
 
 	mtk_clk_register_gates(node, mm_clks, ARRAY_SIZE(mm_clks),
-			       clk_data);
+			       private->clk_data);
 
-	return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
+	return of_clk_add_provider(node, of_clk_src_onecell_get,
+						private->clk_data);
+}
+
+static int clk_mt6779_mm_remove(struct platform_device *pdev)
+{
+	struct clk_mt6779_mm_priv *private = platform_get_drvdata(pdev);
+
+	kfree(private->clk_data);
+
+	return 0;
 }
 
 static struct platform_driver clk_mt6779_mm_drv = {
 	.probe = clk_mt6779_mm_probe,
+	.remove = clk_mt6779_mm_remove,
 	.driver = {
 		.name = "clk-mt6779-mm",
-		.of_match_table = of_match_clk_mt6779_mm,
 	},
 };
-
-builtin_platform_driver(clk_mt6779_mm_drv);
+module_platform_driver(clk_mt6779_mm_drv);
-- 
2.24.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
