Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE06BB59BE
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 04:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3EbiM0ChVfzxa2wTv827AHCv+mzWw6ymWz9crW4BSVw=; b=I5GkGLBq6CekMv
	0rz2XvadP2JxJQJniL0yCGq1kFadztbh1j8SvD8RYC7qs5cSUrKVdiMDNKOxZL+/uq+7bkcihKV7L
	hCCOdAVQPV7840Ba3KE+zd4E/myraSbnmv4xzscJxAB0+ofyuv35vaAlEZghQbR5s4yr2gAusBNTy
	kOUc4dCL30QV4w3ZqJOZDkTN+9xD56xgLfeOKT+r1rNJu0QHSADh9iIxaV+TXOsotD2QFyrNuvYPq
	2iCtgc9TA3kCto46GhcQ9yiYvsl12KClWEQ986Nu/4fnYDwSuipb7w1YTm8gBGcNomPRVpDQz8IBM
	9Mer15344aLabF9ROERQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAPsQ-0003Mb-8T; Wed, 18 Sep 2019 02:39:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAPsN-0003IS-9m
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 02:39:28 +0000
X-UUID: c75e1b1ea8ff41c4851222199fd6a8e0-20190917
X-UUID: c75e1b1ea8ff41c4851222199fd6a8e0-20190917
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1197735890; Tue, 17 Sep 2019 18:39:17 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Sep 2019 19:39:18 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 10:39:06 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Sep 2019 10:39:06 +0800
From: Light Hsieh <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Subject: [PATCH v5 1/5] pinctrl: mediatek: Check gpio pin number and use
 binary search in mtk_hw_pin_field_lookup()
Date: Wed, 18 Sep 2019 10:39:04 +0800
Message-ID: <1568774348-24363-1-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5B4894C816F6683EC50A23CED134C29014FA31E617B040CF8A35F4D76A778BE52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_193927_345361_580CD124 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-gpio@vger.kernel.org, sean.wang@kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Light Hsieh <light.hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

1. Check if gpio pin number is in valid range to prevent from get invalid
   pointer 'desc' in the following code:
	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];

2. Use binary search in mtk_hw_pin_field_lookup()
   Modify mtk_hw_pin_field_lookup() to use binary search for accelerating
   search.

---
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 24 +++++++++++++++++++-----
 drivers/pinctrl/mediatek/pinctrl-paris.c         | 19 +++++++++++++++++++
 2 files changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
index 20e1c89..4687f63 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
@@ -68,7 +68,7 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
 {
 	const struct mtk_pin_field_calc *c, *e;
 	const struct mtk_pin_reg_calc *rc;
-	u32 bits;
+	u32 bits, start = 0, end, found = 0, check;
 
 	if (hw->soc->reg_cal && hw->soc->reg_cal[field].range) {
 		rc = &hw->soc->reg_cal[field];
@@ -79,21 +79,32 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
 		return -ENOTSUPP;
 	}
 
+	end = rc->nranges - 1;
 	c = rc->range;
 	e = c + rc->nranges;
 
-	while (c < e) {
-		if (desc->number >= c->s_pin && desc->number <= c->e_pin)
+	while (start <= end) {
+		check = (start + end) >> 1;
+		if (desc->number >= rc->range[check].s_pin
+		 && desc->number <= rc->range[check].e_pin) {
+			found = 1;
 			break;
-		c++;
+		} else if (start == end)
+			break;
+		else if (desc->number < rc->range[check].s_pin)
+			end = check - 1;
+		else
+			start = check + 1;
 	}
 
-	if (c >= e) {
+	if (!found) {
 		dev_dbg(hw->dev, "Not support field %d for pin = %d (%s)\n",
 			field, desc->number, desc->name);
 		return -ENOTSUPP;
 	}
 
+	c = rc->range + check;
+
 	if (c->i_base > hw->nbase - 1) {
 		dev_err(hw->dev,
 			"Invalid base for field %d for pin = %d (%s)\n",
@@ -182,6 +193,9 @@ int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
 	if (err)
 		return err;
 
+	if (value < 0 || value > pf.mask)
+		return -EINVAL;
+
 	if (!pf.next)
 		mtk_rmw(hw, pf.index, pf.offset, pf.mask << pf.bitpos,
 			(value & pf.mask) << pf.bitpos);
diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
index 923264d..28b4951 100644
--- a/drivers/pinctrl/mediatek/pinctrl-paris.c
+++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
@@ -693,6 +693,9 @@ static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
 	const struct mtk_pin_desc *desc;
 	int value, err;
 
+	if (gpio > hw->soc->npins)
+		return -EINVAL;
+
 	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
 
 	err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &value);
@@ -708,6 +711,9 @@ static int mtk_gpio_get(struct gpio_chip *chip, unsigned int gpio)
 	const struct mtk_pin_desc *desc;
 	int value, err;
 
+	if (gpio > hw->soc->npins)
+		return -EINVAL;
+
 	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
 
 	err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DI, &value);
@@ -722,6 +728,9 @@ static void mtk_gpio_set(struct gpio_chip *chip, unsigned int gpio, int value)
 	struct mtk_pinctrl *hw = gpiochip_get_data(chip);
 	const struct mtk_pin_desc *desc;
 
+	if (gpio > hw->soc->npins)
+		return;
+
 	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
 
 	mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DO, !!value);
@@ -729,12 +738,22 @@ static void mtk_gpio_set(struct gpio_chip *chip, unsigned int gpio, int value)
 
 static int mtk_gpio_direction_input(struct gpio_chip *chip, unsigned int gpio)
 {
+	struct mtk_pinctrl *hw = gpiochip_get_data(chip);
+
+	if (gpio > hw->soc->npins)
+		return -EINVAL;
+
 	return pinctrl_gpio_direction_input(chip->base + gpio);
 }
 
 static int mtk_gpio_direction_output(struct gpio_chip *chip, unsigned int gpio,
 				     int value)
 {
+	struct mtk_pinctrl *hw = gpiochip_get_data(chip);
+
+	if (gpio > hw->soc->npins)
+		return -EINVAL;
+
 	mtk_gpio_set(chip, gpio, value);
 
 	return pinctrl_gpio_direction_output(chip->base + gpio);
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
