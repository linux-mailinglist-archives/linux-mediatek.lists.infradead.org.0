Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BFC92033
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 11:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bc8giZhhIyfcsR/rO3XovngKZqPY+K2pIir4T2MPmDA=; b=A8OQuhDhYYLAJz
	xFn/OKY+zs9bcPMahx79gmMtLml8CZ2ZnxtS49BfZ9s9xaFEFXKEOV62iRKqp+HcWLhjWs7NjjXp5
	yftucUyQuom1IAlue2B3eQiiViVRsQdcWS6fmE6zHDzhtnQltB3LcKhKMz02nzeUnHbXchLVvz8R3
	kiXvMlyE1AdgGD/l0Wl/uGybmkVtQjceBCZ2IiFF2Fp868MNWerq9sBi5+rpMq20MeXfERrseFCE5
	Y/0uPc/d6N+NC6NQjh3AcQlIe3425+nKmsclwWJ5ZidI7IHdyJii69LkcySO376K/by3l6+OeXe5E
	F3IS3/stZTAKA4OJtvcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdsr-0006dE-Bc; Mon, 19 Aug 2019 09:23:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdrw-0005Ko-Ev
 for linux-mediatek@lists.infradead.org; Mon, 19 Aug 2019 09:22:29 +0000
X-UUID: 951fda538dac4e76a7e10c59a0d9da6a-20190819
X-UUID: 951fda538dac4e76a7e10c59a0d9da6a-20190819
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <mars.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1973125926; Mon, 19 Aug 2019 01:22:08 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 02:22:08 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 17:22:00 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 19 Aug 2019 17:22:00 +0800
From: Mars Cheng <mars.cheng@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
 Marc Zyngier <marc.zyngier@arm.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 05/11] pinctrl: mediatek: avoid virtual gpio trying to set
 reg
Date: Mon, 19 Aug 2019 17:21:36 +0800
Message-ID: <1566206502-4347-6-git-send-email-mars.cheng@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_022228_573172_A1C88CF8 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Mars Cheng <mars.cheng@mediatek.com>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

for virtual gpios, they should not do reg setting and
should behave as expected for eint function.

Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
---
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c |   20 ++++++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h |    1 +
 drivers/pinctrl/mediatek/pinctrl-paris.c         |    3 +++
 3 files changed, 24 insertions(+)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
index 20e1c89..04948a6 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
@@ -226,6 +226,23 @@ static int mtk_xt_find_eint_num(struct mtk_pinctrl *hw, unsigned long eint_n)
 	return EINT_NA;
 }
 
+bool mtk_is_virt_gpio(struct mtk_pinctrl *hw, unsigned int gpio_n)
+{
+	const struct mtk_pin_desc *desc;
+	bool virt_gpio = false;
+
+	if (gpio_n >= hw->soc->npins)
+		return virt_gpio;
+
+	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio_n];
+
+	if (desc->funcs &&
+	    desc->funcs[desc->eint.eint_m].name == 0)
+		virt_gpio = true;
+
+	return virt_gpio;
+}
+
 static int mtk_xt_get_gpio_n(void *data, unsigned long eint_n,
 			     unsigned int *gpio_n,
 			     struct gpio_chip **gpio_chip)
@@ -278,6 +295,9 @@ static int mtk_xt_set_gpio_as_eint(void *data, unsigned long eint_n)
 	if (err)
 		return err;
 
+	if (mtk_is_virt_gpio(hw, gpio_n))
+		return 0;
+
 	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio_n];
 
 	err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_MODE,
diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
index 1b7da42..cda1c7a0 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
@@ -299,4 +299,5 @@ int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
 int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
 			      const struct mtk_pin_desc *desc, u32 *val);
 
+bool mtk_is_virt_gpio(struct mtk_pinctrl *hw, unsigned int gpio_n);
 #endif /* __PINCTRL_MTK_COMMON_V2_H */
diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
index 923264d..ef479ea 100644
--- a/drivers/pinctrl/mediatek/pinctrl-paris.c
+++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
@@ -693,6 +693,9 @@ static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
 	const struct mtk_pin_desc *desc;
 	int value, err;
 
+	if (mtk_is_virt_gpio(hw, gpio))
+		return 1;
+
 	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
 
 	err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &value);
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
