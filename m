Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9584E98C19
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 09:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vORvmOcnSdMwv+JTaVmgRdGNrSHPcAJWtPa3jp08fuQ=; b=h3qddqLUS8ukRj
	2tbHq78xqyf2iXmTMNe0Bzid8V7KCxQn9y2QFs0l9FJqefm/IvuA5uB2atXRKqMa9cVl/v0kZi3Y8
	Xdu+RTGmHG9LQt0IYle9cEAlYLD3RZm65RDaT6bAjOlWkxfT9sFsklaJFVmXC7K+uV7gbPIL6IydB
	Ql+ZRZySMA3Z5ims4qrAH4Wzvglbvt5uKtEj0qx8RYZSgJV8rvusPL9s8rXWfUU0Jd9ytAv3g5Nrs
	ZvzFxCXGhpSDNkY3Pvx51QX35v6/rfBdlY+3Ny5Z4SObhNosaS3Tgjz6RVlUURSuKHKdiJLFEgFe7
	/phZChGQuxS7x4GE3cLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h8g-0004WA-O9; Thu, 22 Aug 2019 07:04:07 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h7S-0004Fy-0L
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 07:02:52 +0000
X-UUID: c825c5a9bfc64a2291282cbcceba4565-20190821
X-UUID: c825c5a9bfc64a2291282cbcceba4565-20190821
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2147013141; Wed, 21 Aug 2019 23:02:38 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 00:02:37 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 15:02:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 22 Aug 2019 15:02:35 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v5 12/13] pwm: mediatek: remove a property "has-clock"
Date: Thu, 22 Aug 2019 14:58:42 +0800
Message-ID: <1566457123-20791-13-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_000250_949151_8EC33842 
X-CRM114-Status: GOOD (  13.15  )
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

Due to we added clock-frequency property to fix
mt7628 pwm during configure from userspace.
We can alos use this property to determine whether
the complex clock tree exists in the SoC or not.
So we can safety remove has-clock property in the
driver specific data.

Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
 drivers/pwm/pwm-mediatek.c | 26 ++++++++------------------
 1 file changed, 8 insertions(+), 18 deletions(-)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index 290536a92a80..96f592595063 100644
--- a/drivers/pwm/pwm-mediatek.c
+++ b/drivers/pwm/pwm-mediatek.c
@@ -35,7 +35,6 @@
 struct pwm_mediatek_of_data {
 	unsigned int fallback_npwms;
 	bool pwm45_fixup;
-	bool has_clks;
 };
 
 /**
@@ -73,7 +72,7 @@ static int pwm_mediatek_clk_enable(struct pwm_chip *chip,
 	struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
 	int ret;
 
-	if (!pc->soc->has_clks)
+	if (pc->clk_freq)
 		return 0;
 
 	ret = clk_prepare_enable(pc->clk_top);
@@ -103,7 +102,7 @@ static void pwm_mediatek_clk_disable(struct pwm_chip *chip,
 {
 	struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
 
-	if (!pc->soc->has_clks)
+	if (pc->clk_freq)
 		return;
 
 	clk_disable_unprepare(pc->clk_pwms[pwm->hwpwm]);
@@ -134,10 +133,10 @@ static int pwm_mediatek_config(struct pwm_chip *chip, struct pwm_device *pwm,
 	u64 resolution;
 	int ret;
 
-	if (pc->soc->has_clks)
-		clk_freq = clk_get_rate(pc->clk_pwms[pwm->hwpwm]);
-	else
+	if (pc->clk_freq)
 		clk_freq = pc->clk_freq;
+	else
+		clk_freq = clk_get_rate(pc->clk_pwms[pwm->hwpwm]);
 
 	ret = pwm_mediatek_clk_enable(chip, pwm);
 	if (ret < 0)
@@ -222,6 +221,7 @@ static int pwm_mediatek_probe(struct platform_device *pdev)
 	struct pwm_mediatek_chip *pc;
 	struct resource *res;
 	unsigned int npwms;
+	unsigned int clk_freq;
 	int ret;
 
 	pc = devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
@@ -247,7 +247,8 @@ static int pwm_mediatek_probe(struct platform_device *pdev)
 		}
 	}
 
-	if (pc->soc->has_clks) {
+	ret = of_property_read_u32(np, "clock-frequency", &clk_freq);
+	if (ret < 0) {
 		int i;
 
 		pc->clk_pwms = devm_kcalloc(&pdev->dev, npwms,
@@ -280,13 +281,6 @@ static int pwm_mediatek_probe(struct platform_device *pdev)
 			}
 		}
 	} else {
-		unsigned int clk_freq;
-
-		ret = of_property_read_u32(np, "clock-frequency", &clk_freq);
-		if (ret < 0) {
-			dev_err(&pdev->dev, "failed to get clock_frequency\n");
-			return ret;
-		}
 		pc->clk_freq = clk_freq;
 	}
 
@@ -316,25 +310,21 @@ static int pwm_mediatek_remove(struct platform_device *pdev)
 static const struct pwm_mediatek_of_data mt2712_pwm_data = {
 	.fallback_npwms = 8,
 	.pwm45_fixup = false,
-	.has_clks = true,
 };
 
 static const struct pwm_mediatek_of_data mt7622_pwm_data = {
 	.fallback_npwms = 6,
 	.pwm45_fixup = false,
-	.has_clks = true,
 };
 
 static const struct pwm_mediatek_of_data mt7623_pwm_data = {
 	.fallback_npwms = 5,
 	.pwm45_fixup = true,
-	.has_clks = true,
 };
 
 static const struct pwm_mediatek_of_data mt7628_pwm_data = {
 	.fallback_npwms = 4,
 	.pwm45_fixup = true,
-	.has_clks = false,
 };
 
 static const struct of_device_id pwm_mediatek_of_match[] = {
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
