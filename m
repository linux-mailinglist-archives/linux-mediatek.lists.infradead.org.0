Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E908FC1F
	for <lists+linux-mediatek@lfdr.de>; Fri, 16 Aug 2019 09:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+8KL2Ta6xPEZF2zZrTU7kmPFKA8woZbcJC9AVrApAI=; b=rKnmaTbCi62wkS
	2jGUpyK3xI4FyAOmOj7ZOqwByPXK48ZhoDE3dycKfPYNW9phpB3D633/mhqCEPBUrlMMd8P85YBB9
	zkouKO9kEnt/2dVZGI+trxcJmpLoaBOQqcpkJrwWgdFm3sAu0k9Dk6lvNgytcy5Op6B2VVF64J+Z8
	XL3M/ig9GFd9BgU8/NPdlxYiDDOVuaDHgjBBhLX4iiHH6en5yZahKIl3Sp9FIvuc4O/2bkPiVtQzd
	zsevbCkzmm0QRgLwJk5ap7IS7HP0d24TfgP3vfz949CJV9lx6mK+dpFJrKy34V6TpxzAF0+BskJy4
	LE4UgDSVV7Cpm5P+BO2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyWa6-0003nw-0s; Fri, 16 Aug 2019 07:23:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyWZf-0003NX-H5
 for linux-mediatek@lists.infradead.org; Fri, 16 Aug 2019 07:23:02 +0000
X-UUID: fe5f7125509c41719bea4dfb3ff7a8c3-20190815
X-UUID: fe5f7125509c41719bea4dfb3ff7a8c3-20190815
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1012052605; Thu, 15 Aug 2019 23:22:35 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 16 Aug 2019 00:22:33 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 16 Aug 2019 15:22:32 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 16 Aug 2019 15:22:32 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v3 3/10] pwm: mediatek: use pwm_mediatek as common prefix
Date: Fri, 16 Aug 2019 15:21:21 +0800
Message-ID: <1565940088-845-4-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565940088-845-1-git-send-email-sam.shih@mediatek.com>
References: <1565940088-845-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_002259_705188_E7A6E0B4 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 devicetree@vger.kernel.org, Sam
 Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ryder Lee <ryder.lee@mediatek.com>

Use pwm_mediatek as common prefix to match the filename.
No functional change intended.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
 drivers/pwm/pwm-mediatek.c | 119 +++++++++++++++++++------------------
 1 file changed, 60 insertions(+), 59 deletions(-)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index 47585b68483d..d696df7a58fa 100644
--- a/drivers/pwm/pwm-mediatek.c
+++ b/drivers/pwm/pwm-mediatek.c
@@ -1,12 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
- * Mediatek Pulse Width Modulator driver
+ * MediaTek Pulse Width Modulator driver
  *
  * Copyright (C) 2015 John Crispin <blogic@openwrt.org>
  * Copyright (C) 2017 Zhi Mao <zhi.mao@mediatek.com>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/err.h>
@@ -35,41 +33,43 @@
 
 #define PWM_CLK_DIV_MAX		7
 
-struct mtk_pwm_platform_data {
+struct pwm_mediatek_of_data {
 	unsigned int fallback_npwms;
 	bool pwm45_fixup;
 	bool has_clks;
 };
 
 /**
- * struct mtk_pwm_chip - struct representing PWM chip
+ * struct pwm_mediatek_chip - struct representing PWM chip
  * @chip: linux PWM chip representation
  * @regs: base address of PWM chip
  * @clk_top: the top clock generator
  * @clk_main: the clock used by PWM core
  * @clk_pwms: the clock used by each PWM channel
  */
-struct mtk_pwm_chip {
+struct pwm_mediatek_chip {
 	struct pwm_chip chip;
 	void __iomem *regs;
 	struct clk *clk_top;
 	struct clk *clk_main;
 	struct clk **clk_pwms;
-	const struct mtk_pwm_platform_data *soc;
+	const struct pwm_mediatek_of_data *soc;
 };
 
-static const unsigned int mtk_pwm_reg_offset[] = {
+static const unsigned int pwm_mediatek_reg_offset[] = {
 	0x0010, 0x0050, 0x0090, 0x00d0, 0x0110, 0x0150, 0x0190, 0x0220
 };
 
-static inline struct mtk_pwm_chip *to_mtk_pwm_chip(struct pwm_chip *chip)
+static inline struct pwm_mediatek_chip *
+to_pwm_mediatek_chip(struct pwm_chip *chip)
 {
-	return container_of(chip, struct mtk_pwm_chip, chip);
+	return container_of(chip, struct pwm_mediatek_chip, chip);
 }
 
-static int mtk_pwm_clk_enable(struct pwm_chip *chip, struct pwm_device *pwm)
+static int pwm_mediatek_clk_enable(struct pwm_chip *chip,
+				   struct pwm_device *pwm)
 {
-	struct mtk_pwm_chip *pc = to_mtk_pwm_chip(chip);
+	struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
 	int ret;
 
 	if (!pc->soc->has_clks)
@@ -97,9 +97,10 @@ static int mtk_pwm_clk_enable(struct pwm_chip *chip, struct pwm_device *pwm)
 	return ret;
 }
 
-static void mtk_pwm_clk_disable(struct pwm_chip *chip, struct pwm_device *pwm)
+static void pwm_mediatek_clk_disable(struct pwm_chip *chip,
+				     struct pwm_device *pwm)
 {
-	struct mtk_pwm_chip *pc = to_mtk_pwm_chip(chip);
+	struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
 
 	if (!pc->soc->has_clks)
 		return;
@@ -109,30 +110,30 @@ static void mtk_pwm_clk_disable(struct pwm_chip *chip, struct pwm_device *pwm)
 	clk_disable_unprepare(pc->clk_top);
 }
 
-static inline u32 mtk_pwm_readl(struct mtk_pwm_chip *chip, unsigned int num,
-				unsigned int offset)
+static inline u32 pwm_mediatek_readl(struct pwm_mediatek_chip *chip,
+				     unsigned int num, unsigned int offset)
 {
-	return readl(chip->regs + mtk_pwm_reg_offset[num] + offset);
+	return readl(chip->regs + pwm_mediatek_reg_offset[num] + offset);
 }
 
-static inline void mtk_pwm_writel(struct mtk_pwm_chip *chip,
-				  unsigned int num, unsigned int offset,
-				  u32 value)
+static inline void pwm_mediatek_writel(struct pwm_mediatek_chip *chip,
+				       unsigned int num, unsigned int offset,
+				       u32 value)
 {
-	writel(value, chip->regs + mtk_pwm_reg_offset[num] + offset);
+	writel(value, chip->regs + pwm_mediatek_reg_offset[num] + offset);
 }
 
-static int mtk_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
-			  int duty_ns, int period_ns)
+static int pwm_mediatek_config(struct pwm_chip *chip, struct pwm_device *pwm,
+			       int duty_ns, int period_ns)
 {
-	struct mtk_pwm_chip *pc = to_mtk_pwm_chip(chip);
+	struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
 	struct clk *clk = pc->soc->has_clks ? pc->clk_pwms[pwm->hwpwm] : NULL;
 	u32 clkdiv = 0, cnt_period, cnt_duty, reg_width = PWMDWIDTH,
 	    reg_thres = PWMTHRES;
 	u64 resolution;
 	int ret;
 
-	ret = mtk_pwm_clk_enable(chip, pwm);
+	ret = pwm_mediatek_clk_enable(chip, pwm);
 	if (ret < 0)
 		return ret;
 
@@ -149,7 +150,7 @@ static int mtk_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 	}
 
 	if (clkdiv > PWM_CLK_DIV_MAX) {
-		mtk_pwm_clk_disable(chip, pwm);
+		pwm_mediatek_clk_disable(chip, pwm);
 		dev_err(chip->dev, "period %d not supported\n", period_ns);
 		return -EINVAL;
 	}
@@ -164,22 +165,22 @@ static int mtk_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 	}
 
 	cnt_duty = DIV_ROUND_CLOSEST_ULL((u64)duty_ns * 1000, resolution);
-	mtk_pwm_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | clkdiv);
-	mtk_pwm_writel(pc, pwm->hwpwm, reg_width, cnt_period);
-	mtk_pwm_writel(pc, pwm->hwpwm, reg_thres, cnt_duty);
+	pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | clkdiv);
+	pwm_mediatek_writel(pc, pwm->hwpwm, reg_width, cnt_period);
+	pwm_mediatek_writel(pc, pwm->hwpwm, reg_thres, cnt_duty);
 
-	mtk_pwm_clk_disable(chip, pwm);
+	pwm_mediatek_clk_disable(chip, pwm);
 
 	return 0;
 }
 
-static int mtk_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
+static int pwm_mediatek_enable(struct pwm_chip *chip, struct pwm_device *pwm)
 {
-	struct mtk_pwm_chip *pc = to_mtk_pwm_chip(chip);
+	struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
 	u32 value;
 	int ret;
 
-	ret = mtk_pwm_clk_enable(chip, pwm);
+	ret = pwm_mediatek_clk_enable(chip, pwm);
 	if (ret < 0)
 		return ret;
 
@@ -190,29 +191,29 @@ static int mtk_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
 	return 0;
 }
 
-static void mtk_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
+static void pwm_mediatek_disable(struct pwm_chip *chip, struct pwm_device *pwm)
 {
-	struct mtk_pwm_chip *pc = to_mtk_pwm_chip(chip);
+	struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
 	u32 value;
 
 	value = readl(pc->regs);
 	value &= ~BIT(pwm->hwpwm);
 	writel(value, pc->regs);
 
-	mtk_pwm_clk_disable(chip, pwm);
+	pwm_mediatek_clk_disable(chip, pwm);
 }
 
-static const struct pwm_ops mtk_pwm_ops = {
-	.config = mtk_pwm_config,
-	.enable = mtk_pwm_enable,
-	.disable = mtk_pwm_disable,
+static const struct pwm_ops pwm_mediatek_ops = {
+	.config = pwm_mediatek_config,
+	.enable = pwm_mediatek_enable,
+	.disable = pwm_mediatek_disable,
 	.owner = THIS_MODULE,
 };
 
-static int mtk_pwm_probe(struct platform_device *pdev)
+static int pwm_mediatek_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
-	struct mtk_pwm_chip *pc;
+	struct pwm_mediatek_chip *pc;
 	struct resource *res;
 	unsigned int npwms;
 	int ret;
@@ -269,7 +270,7 @@ static int mtk_pwm_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, pc);
 
 	pc->chip.dev = &pdev->dev;
-	pc->chip.ops = &mtk_pwm_ops;
+	pc->chip.ops = &pwm_mediatek_ops;
 	pc->chip.base = -1;
 	pc->chip.npwm = npwms;
 
@@ -282,55 +283,55 @@ static int mtk_pwm_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static int mtk_pwm_remove(struct platform_device *pdev)
+static int pwm_mediatek_remove(struct platform_device *pdev)
 {
-	struct mtk_pwm_chip *pc = platform_get_drvdata(pdev);
+	struct pwm_mediatek_chip *pc = platform_get_drvdata(pdev);
 
 	return pwmchip_remove(&pc->chip);
 }
 
-static const struct mtk_pwm_platform_data mt2712_pwm_data = {
+static const struct pwm_mediatek_of_data mt2712_pwm_data = {
 	.fallback_npwms = 8,
 	.pwm45_fixup = false,
 	.has_clks = true,
 };
 
-static const struct mtk_pwm_platform_data mt7622_pwm_data = {
+static const struct pwm_mediatek_of_data mt7622_pwm_data = {
 	.fallback_npwms = 6,
 	.pwm45_fixup = false,
 	.has_clks = true,
 };
 
-static const struct mtk_pwm_platform_data mt7623_pwm_data = {
+static const struct pwm_mediatek_of_data mt7623_pwm_data = {
 	.fallback_npwms = 5,
 	.pwm45_fixup = true,
 	.has_clks = true,
 };
 
-static const struct mtk_pwm_platform_data mt7628_pwm_data = {
+static const struct pwm_mediatek_of_data mt7628_pwm_data = {
 	.fallback_npwms = 4,
 	.pwm45_fixup = true,
 	.has_clks = false,
 };
 
-static const struct of_device_id mtk_pwm_of_match[] = {
+static const struct of_device_id pwm_mediatek_of_match[] = {
 	{ .compatible = "mediatek,mt2712-pwm", .data = &mt2712_pwm_data },
 	{ .compatible = "mediatek,mt7622-pwm", .data = &mt7622_pwm_data },
 	{ .compatible = "mediatek,mt7623-pwm", .data = &mt7623_pwm_data },
 	{ .compatible = "mediatek,mt7628-pwm", .data = &mt7628_pwm_data },
 	{ },
 };
-MODULE_DEVICE_TABLE(of, mtk_pwm_of_match);
+MODULE_DEVICE_TABLE(of, pwm_mediatek_of_match);
 
-static struct platform_driver mtk_pwm_driver = {
+static struct platform_driver pwm_mediatek_driver = {
 	.driver = {
-		.name = "mtk-pwm",
-		.of_match_table = mtk_pwm_of_match,
+		.name = "pwm-mediatek",
+		.of_match_table = pwm_mediatek_of_match,
 	},
-	.probe = mtk_pwm_probe,
-	.remove = mtk_pwm_remove,
+	.probe = pwm_mediatek_probe,
+	.remove = pwm_mediatek_remove,
 };
-module_platform_driver(mtk_pwm_driver);
+module_platform_driver(pwm_mediatek_driver);
 
 MODULE_AUTHOR("John Crispin <blogic@openwrt.org>");
-MODULE_LICENSE("GPL");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
