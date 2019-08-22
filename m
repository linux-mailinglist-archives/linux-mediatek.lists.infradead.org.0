Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE4E98BF6
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 09:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ki975zwfqNk+4KGrDuaJvKoYOESwx7M1e5OmFW2zuc0=; b=klkDOnnvYFFYOi
	1ZV8GlCAR2DuW27v8Khgv+2lK6eOuhhLPnM+RwaeO9HSVI3RhRl2Rlnovg002icACcleM14+v6ate
	XHFy5VFnQTTkoMg5qPlzpGr2HkHcYUcnOy7THFqakJRWt6AolIv/aE3m4jmnxQSPV9DWUR0MUQz7L
	i1o+nAmzxlQBK5Y4KmIxmou6GYAl+ZX9sQ2xA1mA9+sjt1jRHwWOvv5Dd/kEwM1chKqVP8pJnXYM9
	4cY4Is11TL55q0zPoqqzW27ZRzBTtK1EK/+UwoR5ntlBRsdi1s+HedBrIEQW+xSR/42M6BKmbTojl
	Hd6q8YvsbTA19XageGnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h5m-0003v6-Rc; Thu, 22 Aug 2019 07:01:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h5e-0003u1-Uh
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 07:01:00 +0000
X-UUID: 4fad003cf740428caf62f23426926001-20190821
X-UUID: 4fad003cf740428caf62f23426926001-20190821
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1228130555; Wed, 21 Aug 2019 23:00:37 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 00:00:36 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 15:00:38 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 22 Aug 2019 15:00:34 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v5 03/13] pwm: mediatek: add a property "clock-frequency"
Date: Thu, 22 Aug 2019 14:58:33 +0800
Message-ID: <1566457123-20791-4-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_000059_172132_6A0E1EC0 
X-CRM114-Status: GOOD (  16.97  )
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

This fix mt7628 pwm during configure from userspace. The SoC
is legacy MIPS and has no complex clock tree. This patch add property
clock-frequency to the SoC specific data and legacy MIPS SoC need to
configure it in DT. This property is use for period calculation.

We will improve this fix by droping has-clks attribute and using
clock-frequency to do the same thing in a new patch.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
Changes since v5:
1. Follow reviewer's comments
Make the changes of fix mt7628 pwm as a single patch

Changes since v4:
- Follow reviewers's comments
1. use pc->soc->has_clks to check clocks exist or not.
2. Add error message when probe() unable to get clks
- Fixes bug when SoC is old mips which has no complex clock tree.
if clocks not exist, use the new property from DT to apply period caculation;
otherwise, use clk_get_rate to get clock frequency and apply period caculation.

Change-Id: Ibbe6d7a4f80b30f60725bcbeca1d02ce7834d28c
---
 drivers/pwm/pwm-mediatek.c | 39 ++++++++++++++++++++++++++++++--------
 1 file changed, 31 insertions(+), 8 deletions(-)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index ebd62629e3fe..1f18bff4800c 100644
--- a/drivers/pwm/pwm-mediatek.c
+++ b/drivers/pwm/pwm-mediatek.c
@@ -65,11 +65,13 @@ struct mtk_pwm_platform_data {
  * @chip: linux PWM chip representation
  * @regs: base address of PWM chip
  * @clks: list of clocks
+ * @clk_freq: the fix clock frequency of legacy MIPS SoC
  */
 struct mtk_pwm_chip {
 	struct pwm_chip chip;
 	void __iomem *regs;
 	struct clk *clks[MTK_CLK_MAX];
+	unsigned int clk_freq;
 	const struct mtk_pwm_platform_data *soc;
 };
 
@@ -141,19 +143,27 @@ static int mtk_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 			  int duty_ns, int period_ns)
 {
 	struct mtk_pwm_chip *pc = to_mtk_pwm_chip(chip);
-	struct clk *clk = pc->clks[MTK_CLK_PWM1 + pwm->hwpwm];
+	unsigned int clk_freq;
 	u32 clkdiv = 0, cnt_period, cnt_duty, reg_width = PWMDWIDTH,
 	    reg_thres = PWMTHRES;
 	u64 resolution;
 	int ret;
 
+	if (pc->soc->has_clks) {
+		struct clk *clk = pc->clks[MTK_CLK_PWM1 + pwm->hwpwm];
+
+		clk_freq = clk_get_rate(clk);
+	} else {
+		clk_freq = pc->clk_freq;
+	}
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
@@ -262,13 +272,26 @@ static int mtk_pwm_probe(struct platform_device *pdev)
 		npwms = MTK_CLK_MAX - 2;
 	}
 
-	for (i = 0; i < npwms + 2 && pc->soc->has_clks; i++) {
-		pc->clks[i] = devm_clk_get(&pdev->dev, mtk_pwm_clk_name[i]);
-		if (IS_ERR(pc->clks[i])) {
-			dev_err(&pdev->dev, "clock: %s fail: %ld\n",
-				mtk_pwm_clk_name[i], PTR_ERR(pc->clks[i]));
-			return PTR_ERR(pc->clks[i]);
+	if (pc->soc->has_clks) {
+		for (i = 0; i < npwms + 2 ; i++) {
+			pc->clks[i] = devm_clk_get(&pdev->dev,
+						  mtk_pwm_clk_name[i]);
+			if (IS_ERR(pc->clks[i])) {
+				dev_err(&pdev->dev, "clock: %s fail: %ld\n",
+					mtk_pwm_clk_name[i],
+					PTR_ERR(pc->clks[i]));
+				return PTR_ERR(pc->clks[i]);
+			}
+		}
+	} else {
+		unsigned int clk_freq;
+
+		ret = of_property_read_u32(np, "clock-frequency", &clk_freq);
+		if (ret < 0) {
+			dev_err(&pdev->dev, "failed to get clock_frequency\n");
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
