Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0215598C05
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 09:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGCpb0I/e6YtTU13nv/Zsnel4qA+gBRxhGzEzt2maDE=; b=tlGQ2J9zQMhLO+
	XWVUHcGGP8A/aXByO6hJ3U6DZk4L68277GPRedZSpcp9rJY3VJo8VfVxbrP1xCor9z9sHolip9E7F
	NDfD9eti66b51/puiZISBCxCRSeftLkl3FjxlOFu6WYc5yklSGn5sUsDdKdr7KqAfg+BL8MCN9nc0
	j3Edb/Dhdn7WjRBplkLL9rIOQmOK9oS75XlueOAU+9XQiPmlfsJg3R+ZLZQEkQuvO9GxaW3a4S91B
	crPQSPiNWFhtIfBQwabfj/Sf1xgt++vGl+/qcRoC7O9rzjQ6QDMnMCc2uxaKJdGCWceSpX9zaJ9GS
	F39DQ1WfvLlOhgW+OtLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h70-00043G-W7; Thu, 22 Aug 2019 07:02:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h6o-00042d-CE
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 07:02:12 +0000
X-UUID: 70d7c3fe444641009309c21a0fd9df93-20190821
X-UUID: 70d7c3fe444641009309c21a0fd9df93-20190821
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1400641147; Wed, 21 Aug 2019 23:02:02 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 00:02:01 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 15:01:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 22 Aug 2019 15:01:54 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v5 05/13] pwm: mediatek: use pwm_mediatek as common prefix
Date: Thu, 22 Aug 2019 14:58:35 +0800
Message-ID: <1566457123-20791-6-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 68AAE1149948E07F912720E7E158FDCDAB942C683F5EC002C6AEB93CD982B6802000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_000210_581145_39E57E43 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Use pwm_mediatek as common prefix to match the filename.
No functional change intended.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
Changes since v5:
- Follow reviewers's comments
The license stuff is a separate change

Change-Id: I32f421d3eb26438e25edfd6e4f6da0e85c58526c
---
 drivers/pwm/pwm-mediatek.c | 112 +++++++++++++++++++------------------
 1 file changed, 57 insertions(+), 55 deletions(-)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index 8d1fd8163f15..0938beb1a3cb 100644
--- a/drivers/pwm/pwm-mediatek.c
+++ b/drivers/pwm/pwm-mediatek.c
@@ -34,15 +34,14 @@
 #define PWM45THRES_FIXUP	0x34
 
 #define PWM_CLK_DIV_MAX		7
-
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
@@ -50,28 +49,30 @@ struct mtk_pwm_platform_data {
  * @clk_pwms: the clock used by each PWM channel
  * @clk_freq: the fix clock frequency of legacy MIPS SoC
  */
-struct mtk_pwm_chip {
+struct pwm_mediatek_chip {
 	struct pwm_chip chip;
 	void __iomem *regs;
 	struct clk *clk_top;
 	struct clk *clk_main;
 	struct clk **clk_pwms;
 	unsigned int clk_freq;
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
@@ -99,9 +100,10 @@ static int mtk_pwm_clk_enable(struct pwm_chip *chip, struct pwm_device *pwm)
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
@@ -111,23 +113,23 @@ static void mtk_pwm_clk_disable(struct pwm_chip *chip, struct pwm_device *pwm)
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
 	unsigned int clk_freq;
 	u32 clkdiv = 0, cnt_period, cnt_duty, reg_width = PWMDWIDTH,
 	    reg_thres = PWMTHRES;
@@ -139,7 +141,7 @@ static int mtk_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 	else
 		clk_freq = pc->clk_freq;
 
-	ret = mtk_pwm_clk_enable(chip, pwm);
+	ret = pwm_mediatek_clk_enable(chip, pwm);
 	if (ret < 0)
 		return ret;
 
@@ -156,7 +158,7 @@ static int mtk_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 	}
 
 	if (clkdiv > PWM_CLK_DIV_MAX) {
-		mtk_pwm_clk_disable(chip, pwm);
+		pwm_mediatek_clk_disable(chip, pwm);
 		dev_err(chip->dev, "period %d not supported\n", period_ns);
 		return -EINVAL;
 	}
@@ -171,22 +173,22 @@ static int mtk_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
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
 
@@ -197,29 +199,29 @@ static int mtk_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
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
@@ -293,7 +295,7 @@ static int mtk_pwm_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, pc);
 
 	pc->chip.dev = &pdev->dev;
-	pc->chip.ops = &mtk_pwm_ops;
+	pc->chip.ops = &pwm_mediatek_ops;
 	pc->chip.base = -1;
 	pc->chip.npwm = npwms;
 
@@ -306,55 +308,55 @@ static int mtk_pwm_probe(struct platform_device *pdev)
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
 MODULE_LICENSE("GPL");
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
