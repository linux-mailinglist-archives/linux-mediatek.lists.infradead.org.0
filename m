Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0468795397
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 03:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/3mzGmeHTCakFcmDZ+n1ZRk+Q5HjWudFwTAaH/JVqo=; b=kpdbkR9JVivZ5P
	tdvcQUf2V/xl2rhhboHpE4kB5jzmvkTL955PaoLlWMeu1cJbmj9FFN7KAAzImfl1qjeqAXF3TRbJk
	oSgzMSce2fQwwsS9o0w68nbzeoRje7duqWMdTBsYXncWQLfpMwpOwE85zitJ3hiuijnK+HXpcvV/C
	wUFg/B4wuEgOGatVPDcntM4Ac1TB1jN3r0eidyHiOB91nm6B4Z3ax3g8b/kB+5RtwLl/fCTlL7stY
	ysMqK+B4q06bzF6uU5okoHKuVDV0SowiToQw4Qo3nCJttCOPW0UL1YeBojJS7piGV1+NR3ZfVK40y
	HZclZpoVCuKmDHK4ADbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hztAh-0007eZ-6i; Tue, 20 Aug 2019 01:42:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hztAd-0007cd-Hl
 for linux-mediatek@lists.infradead.org; Tue, 20 Aug 2019 01:42:49 +0000
X-UUID: f5f311028d9640438a2494240c1ae58a-20190819
X-UUID: f5f311028d9640438a2494240c1ae58a-20190819
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 185644490; Mon, 19 Aug 2019 17:42:01 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 18:42:00 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 20 Aug 2019 09:41:58 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 20 Aug 2019 09:41:58 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v4 3/10] pwm: mediatek: allocate the clks array dynamically
 and fix mt7628 pwm
Date: Tue, 20 Aug 2019 09:40:18 +0800
Message-ID: <1566265225-27452-4-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566265225-27452-1-git-send-email-sam.shih@mediatek.com>
References: <1566265225-27452-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_184247_593224_028E3515 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Instead of using fixed size of arrays, allocate the memory for them
based on the information we get from the chips.

Also fix mt7628 pwm during configure from userspace. The SoC
is legacy MIPS and has no complex clock tree. This patch add property
clock-frequency to the SoC specific data and legacy MIPS SoC need to
configure it in DT. This property is use for period calculation.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
Changes since v4:
- Follow reviewers's comments
1. use pc->soc->has_clks to check clocks exist or not.
2. Add error message when probe() unable to get clks
- Fixes bug when SoC is old mips which has no complex clock tree.
if clocks not exist, use the new property from DT to apply period caculation;
otherwise, use clk_get_rate to get clock frequency and apply period caculation.
---
 drivers/pwm/pwm-mediatek.c | 94 +++++++++++++++++++++++---------------
 1 file changed, 56 insertions(+), 38 deletions(-)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index f9d67fb66adb..a70b69a975c1 100644
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
@@ -64,12 +45,17 @@ struct mtk_pwm_platform_data {
  * struct mtk_pwm_chip - struct representing PWM chip
  * @chip: linux PWM chip representation
  * @regs: base address of PWM chip
- * @clks: list of clocks
+ * @clk_top: the top clock generator
+ * @clk_main: the clock used by PWM core
+ * @clk_pwms: the clock used by each PWM channel
  */
 struct mtk_pwm_chip {
 	struct pwm_chip chip;
 	void __iomem *regs;
-	struct clk *clks[MTK_CLK_MAX];
+	struct clk *clk_top;
+	struct clk *clk_main;
+	struct clk **clk_pwms;
+	unsigned int clk_freq;
 	const struct mtk_pwm_platform_data *soc;
 };
 
@@ -90,24 +76,24 @@ static int mtk_pwm_clk_enable(struct pwm_chip *chip, struct pwm_device *pwm)
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
@@ -119,9 +105,9 @@ static void mtk_pwm_clk_disable(struct pwm_chip *chip, struct pwm_device *pwm)
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
@@ -141,19 +127,24 @@ static int mtk_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 			  int duty_ns, int period_ns)
 {
 	struct mtk_pwm_chip *pc = to_mtk_pwm_chip(chip);
-	struct clk *clk = pc->clks[MTK_CLK_PWM1 + pwm->hwpwm];
+	unsigned int clk_freq;
 	u32 clkdiv = 0, cnt_period, cnt_duty, reg_width = PWMDWIDTH,
 	    reg_thres = PWMTHRES;
 	u64 resolution;
 	int ret;
 
+	if (pc->soc->has_clks)
+		clk_freq = clk_get_rate(pc->clk_pwms[pwm->hwpwm]);
+	else
+		clk_freq = pc->clk_freq;
+
 	ret = mtk_pwm_clk_enable(chip, pwm);
 	if (ret < 0)
 		return ret;
 
 	/* Using resolution in picosecond gets accuracy higher */
 	resolution = (u64)NSEC_PER_SEC * 1000;
-	do_div(resolution, clk_get_rate(clk));
+	do_div(resolution, clk_freq);
 
 	cnt_period = DIV_ROUND_CLOSEST_ULL((u64)period_ns * 1000, resolution);
 	while (cnt_period > 8191) {
@@ -229,7 +220,8 @@ static int mtk_pwm_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct mtk_pwm_chip *pc;
 	struct resource *res;
-	unsigned int i, npwms;
+	unsigned int npwms;
+	unsigned int clk_freq;
 	int ret;
 
 	pc = devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
@@ -255,13 +247,40 @@ static int mtk_pwm_probe(struct platform_device *pdev)
 		}
 	}
 
-	for (i = 0; i < npwms + 2 && pc->soc->has_clks; i++) {
-		pc->clks[i] = devm_clk_get(&pdev->dev, mtk_pwm_clk_name[i]);
-		if (IS_ERR(pc->clks[i])) {
-			dev_err(&pdev->dev, "clock: %s fail: %ld\n",
-				mtk_pwm_clk_name[i], PTR_ERR(pc->clks[i]));
-			return PTR_ERR(pc->clks[i]);
+	if (pc->soc->has_clks) {
+		int i;
+
+		pc->clk_pwms = devm_kcalloc(&pdev->dev, npwms,
+					    sizeof(*pc->clk_pwms), GFP_KERNEL);
+		if (!pc->clk_pwms)
+			return -ENOMEM;
+
+		pc->clk_top = devm_clk_get(&pdev->dev, "top");
+		if (IS_ERR(pc->clk_top))
+			return PTR_ERR(pc->clk_top);
+
+		pc->clk_main = devm_clk_get(&pdev->dev, "main");
+		if (IS_ERR(pc->clk_main))
+			return PTR_ERR(pc->clk_main);
+
+		for (i = 0; i < npwms; i++) {
+			char name[8];
+
+			snprintf(name, sizeof(name), "pwm%d", i + 1);
+			pc->clk_pwms[i] = devm_clk_get(&pdev->dev, name);
+			if (IS_ERR(pc->clk_pwms[i])) {
+				dev_err(&pdev->dev, "failed to get %s\n", name);
+				return PTR_ERR(pc->clk_pwms[i]);
+			}
+		}
+	} else {
+		ret = of_property_read_u32(np, "clock-frequency",
+						&clk_freq);
+		if (ret < 0) {
+			dev_err(&pdev->dev, "failed to get clk_freq\n");
+			return ret;
 		}
+		pc->clk_freq = clk_freq;
 	}
 
 	platform_set_drvdata(pdev, pc);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
