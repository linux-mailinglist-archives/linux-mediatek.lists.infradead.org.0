Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7F698BFC
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 09:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuOXYRaXp4oeQIU9l6TKcF+LiX1e+LsKzn8PzdiET8k=; b=L9w3pYJ2SZBLSF
	Tyq2Uc5Kr0yboawtOHjeRv2a1H/azUlIcxVQigSx2eUoSG8DboXIeA+JoDqHxmyL0p0X+G+7f6c6t
	fuWP78WufHswrmf4BdVbjXpFjDRp3w7ciYbd+fJwkWkVr1QBbIQO7S6g3kLCLtiA9B3KjnMCKa5wf
	TnupIrLcuqGMtX7h6WTOTYgAbp7nm79amYc1k8OV6doGFKl+zgAZ7PIdvasnp5R2rRC/QHlgzAC/9
	wJCHuM42L8ZgpK8Lkc843cnzxAFMNn7P026Q1PTTpBzIs70sdIiPCqhnCkC2ZW62Q8+wY3BtKMuN7
	t9SYQeK6zwje2mVX7fXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h6N-0003zK-IY; Thu, 22 Aug 2019 07:01:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h6H-0003yI-VS
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 07:01:39 +0000
X-UUID: a2421cc38c3c41b889d5d4c458ae232e-20190821
X-UUID: a2421cc38c3c41b889d5d4c458ae232e-20190821
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 927637314; Wed, 21 Aug 2019 23:01:29 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 00:01:27 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 15:01:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 22 Aug 2019 15:01:19 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v5 04/13] pwm: mediatek: allocate the clks array dynamically
Date: Thu, 22 Aug 2019 14:58:34 +0800
Message-ID: <1566457123-20791-5-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_000138_141025_3E4F6348 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Instead of using fixed size of arrays, allocate the memory for them
based on the information we get from the DT.

Also remove the check for num_pwms, due to dynamically allocate pwm
should not cause array index out of bound.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
Changes since v5:
- Follow reviewers's comments
Make the changes of allocate the clks array dynamically as a single patch

Changes since v4:
- Follow reviewers's comments
1. use pc->soc->has_clks to check clocks exist or not.
2. Add error message when probe() unable to get clks
- Fixes bug when SoC is old mips which has no complex clock tree.
if clocks not exist, use the new property from DT to apply period caculation;
otherwise, use clk_get_rate to get clock frequency and apply period caculation.

Change-Id: I42edf07548fd604a5a4f689b45e945809057e3e3
---
 drivers/pwm/pwm-mediatek.c | 96 ++++++++++++++++++--------------------
 1 file changed, 46 insertions(+), 50 deletions(-)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index 1f18bff4800c..8d1fd8163f15 100644
--- a/drivers/pwm/pwm-mediatek.c
+++ b/drivers/pwm/pwm-mediatek.c
@@ -35,25 +35,6 @@
 
 #define PWM_CLK_DIV_MAX		7
 
-enum {
-	MTK_CLK_MAIN = 0,
-	MTK_CLK_TOP,
-	MTK_CLK_PWM1,
-	MTK_CLK_PWM2,
-	MTK_CLK_PWM3,
-	MTK_CLK_PWM4,
-	MTK_CLK_PWM5,
-	MTK_CLK_PWM6,
-	MTK_CLK_PWM7,
-	MTK_CLK_PWM8,
-	MTK_CLK_MAX,
-};
-
-static const char * const mtk_pwm_clk_name[MTK_CLK_MAX] = {
-	"main", "top", "pwm1", "pwm2", "pwm3", "pwm4", "pwm5", "pwm6", "pwm7",
-	"pwm8"
-};
-
 struct mtk_pwm_platform_data {
 	unsigned int fallback_npwms;
 	bool pwm45_fixup;
@@ -64,13 +45,17 @@ struct mtk_pwm_platform_data {
  * struct mtk_pwm_chip - struct representing PWM chip
  * @chip: linux PWM chip representation
  * @regs: base address of PWM chip
- * @clks: list of clocks
+ * @clk_top: the top clock generator
+ * @clk_main: the clock used by PWM core
+ * @clk_pwms: the clock used by each PWM channel
  * @clk_freq: the fix clock frequency of legacy MIPS SoC
  */
 struct mtk_pwm_chip {
 	struct pwm_chip chip;
 	void __iomem *regs;
-	struct clk *clks[MTK_CLK_MAX];
+	struct clk *clk_top;
+	struct clk *clk_main;
+	struct clk **clk_pwms;
 	unsigned int clk_freq;
 	const struct mtk_pwm_platform_data *soc;
 };
@@ -92,24 +77,24 @@ static int mtk_pwm_clk_enable(struct pwm_chip *chip, struct pwm_device *pwm)
 	if (!pc->soc->has_clks)
 		return 0;
 
-	ret = clk_prepare_enable(pc->clks[MTK_CLK_TOP]);
+	ret = clk_prepare_enable(pc->clk_top);
 	if (ret < 0)
 		return ret;
 
-	ret = clk_prepare_enable(pc->clks[MTK_CLK_MAIN]);
+	ret = clk_prepare_enable(pc->clk_main);
 	if (ret < 0)
 		goto disable_clk_top;
 
-	ret = clk_prepare_enable(pc->clks[MTK_CLK_PWM1 + pwm->hwpwm]);
+	ret = clk_prepare_enable(pc->clk_pwms[pwm->hwpwm]);
 	if (ret < 0)
 		goto disable_clk_main;
 
 	return 0;
 
 disable_clk_main:
-	clk_disable_unprepare(pc->clks[MTK_CLK_MAIN]);
+	clk_disable_unprepare(pc->clk_main);
 disable_clk_top:
-	clk_disable_unprepare(pc->clks[MTK_CLK_TOP]);
+	clk_disable_unprepare(pc->clk_top);
 
 	return ret;
 }
@@ -121,9 +106,9 @@ static void mtk_pwm_clk_disable(struct pwm_chip *chip, struct pwm_device *pwm)
 	if (!pc->soc->has_clks)
 		return;
 
-	clk_disable_unprepare(pc->clks[MTK_CLK_PWM1 + pwm->hwpwm]);
-	clk_disable_unprepare(pc->clks[MTK_CLK_MAIN]);
-	clk_disable_unprepare(pc->clks[MTK_CLK_TOP]);
+	clk_disable_unprepare(pc->clk_pwms[pwm->hwpwm]);
+	clk_disable_unprepare(pc->clk_main);
+	clk_disable_unprepare(pc->clk_top);
 }
 
 static inline u32 mtk_pwm_readl(struct mtk_pwm_chip *chip, unsigned int num,
@@ -149,13 +134,10 @@ static int mtk_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 	u64 resolution;
 	int ret;
 
-	if (pc->soc->has_clks) {
-		struct clk *clk = pc->clks[MTK_CLK_PWM1 + pwm->hwpwm];
-
-		clk_freq = clk_get_rate(clk);
-	} else {
+	if (pc->soc->has_clks)
+		clk_freq = clk_get_rate(pc->clk_pwms[pwm->hwpwm]);
+	else
 		clk_freq = pc->clk_freq;
-	}
 
 	ret = mtk_pwm_clk_enable(chip, pwm);
 	if (ret < 0)
@@ -239,7 +221,7 @@ static int mtk_pwm_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct mtk_pwm_chip *pc;
 	struct resource *res;
-	unsigned int i, npwms;
+	unsigned int npwms;
 	int ret;
 
 	pc = devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
@@ -265,22 +247,36 @@ static int mtk_pwm_probe(struct platform_device *pdev)
 		}
 	}
 
-	/* MAIN + TOP + NPWM < MTK_CLK_MAX */
-	if ((npwms + 2) > MTK_CLK_MAX) {
-		dev_warn(&pdev->dev, "number of PWMs is larger than %d\n",
-			 MTK_CLK_MAX - 2);
-		npwms = MTK_CLK_MAX - 2;
-	}
-
 	if (pc->soc->has_clks) {
-		for (i = 0; i < npwms + 2 ; i++) {
-			pc->clks[i] = devm_clk_get(&pdev->dev,
-						  mtk_pwm_clk_name[i]);
-			if (IS_ERR(pc->clks[i])) {
+		int i;
+
+		pc->clk_pwms = devm_kcalloc(&pdev->dev, npwms,
+					    sizeof(*pc->clk_pwms), GFP_KERNEL);
+		if (!pc->clk_pwms)
+			return -ENOMEM;
+
+		pc->clk_top = devm_clk_get(&pdev->dev, "top");
+		if (IS_ERR(pc->clk_top)) {
+			dev_err(&pdev->dev, "clock: top fail: %ld\n",
+				PTR_ERR(pc->clk_top));
+			return PTR_ERR(pc->clk_top);
+		}
+
+		pc->clk_main = devm_clk_get(&pdev->dev, "main");
+		if (IS_ERR(pc->clk_main)) {
+			dev_err(&pdev->dev, "clock: main fail: %ld\n",
+				PTR_ERR(pc->clk_main));
+			return PTR_ERR(pc->clk_main);
+		}
+		for (i = 0; i < npwms; i++) {
+			char name[8];
+
+			snprintf(name, sizeof(name), "pwm%d", i + 1);
+			pc->clk_pwms[i] = devm_clk_get(&pdev->dev, name);
+			if (IS_ERR(pc->clk_pwms[i])) {
 				dev_err(&pdev->dev, "clock: %s fail: %ld\n",
-					mtk_pwm_clk_name[i],
-					PTR_ERR(pc->clks[i]));
-				return PTR_ERR(pc->clks[i]);
+					name, PTR_ERR(pc->clk_pwms[i]));
+				return PTR_ERR(pc->clk_pwms[i]);
 			}
 		}
 	} else {
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
