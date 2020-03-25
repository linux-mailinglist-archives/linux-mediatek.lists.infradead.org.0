Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C18192410
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Mar 2020 10:31:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXpQ4LPL/5tyShH/IIebk4yZGn986OPFKcuckq5OOqI=; b=bjeFt9WDFMg9H4
	V1k/+GcWzAdO4v8Qx5ygzajdbW1jsUg/sBfN8Yr4Kp5CSDSWC1aho7F6WRiqtQhC6SjI2RkQj7yJK
	TU0hPYEehRlIQ76Yl3flXS2Nzp1F4kpFStXAz7gMj54NFj3P/samUSdPDTJ8N1pdN+rNRmJWd3E+l
	m7ULfrYCdAkmRiYMbhkgp+ANs8E2ZcfJ6a7EMcZ5YFUQaYed1j6lNpzwam+U3bMep3uBU0D4GThlX
	A9eWMeq0U/qeR7PbFbuFqpaZpKdssPY1SKZxxtVOIRDEnuJlNTvzmXf6jOvi5atGm6tlhJIEru7k6
	ush4qU4STajsWtHLzOqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH2O7-0006mu-Qu; Wed, 25 Mar 2020 09:31:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH2O3-0006ky-RZ
 for linux-mediatek@lists.infradead.org; Wed, 25 Mar 2020 09:31:49 +0000
X-UUID: 5aa807e283f045259712cdd7c3213dca-20200325
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=gcuqKepqLmO7eC+NcTPbHcySQGXOAWJEpP27E4J/m1c=; 
 b=jGoMo7MpjbBWTE/eXg0TbDj92WynBlndgVkx5hqaLizPVEWO+sEJtrAs/yBc8qrVh63lJu5HFRi+HZ9Ftdomk4kLsK1CBb0ZD7QfxbC4MFdbgfHmsaGZ1nzlByShDlOUmE0DfD6iQGqw7P8LLQu4+i9OhQ0ECoj6HAFHnPI1U4w=;
X-UUID: 5aa807e283f045259712cdd7c3213dca-20200325
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 67594278; Wed, 25 Mar 2020 01:31:46 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Mar 2020 02:31:43 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Mar 2020 17:31:41 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 25 Mar 2020 17:31:41 +0800
From: Hanks Chen <hanks.chen@mediatek.com>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Sean Wang <sean.wang@kernel.org>
Subject: [PATCH v5 3/6] pinctrl: mediatek: avoid virtual gpio trying to set reg
Date: Wed, 25 Mar 2020 17:31:31 +0800
Message-ID: <1585128694-13881-4-git-send-email-hanks.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1585128694-13881-1-git-send-email-hanks.chen@mediatek.com>
References: <1585128694-13881-1-git-send-email-hanks.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4FA0E5F8D5EAAEC00D93A7DE47850028B31962D46D1324751148755D0B91662E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_023147_902899_6157107C 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Andy Teng <andy.teng@mediatek.com>, Hanks Chen <hanks.chen@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Mars Cheng <mars.cheng@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

for virtual gpios, they should not do reg setting and
should behave as expected for eint function.

Signed-off-by: Hanks Chen <hanks.chen@mediatek.com>
Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
---
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c |   28 ++++++++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h |    1 +
 drivers/pinctrl/mediatek/pinctrl-paris.c         |    7 ++++++
 3 files changed, 36 insertions(+)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
index 20e1c89..087d233 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
@@ -226,6 +226,31 @@ static int mtk_xt_find_eint_num(struct mtk_pinctrl *hw, unsigned long eint_n)
 	return EINT_NA;
 }
 
+/*
+ * Virtual GPIO only used inside SOC and not being exported to outside SOC.
+ * Some modules use virtual GPIO as eint (e.g. pmif or usb).
+ * In MTK platform, external interrupt (EINT) and GPIO is 1-1 mapping
+ * and we can set GPIO as eint.
+ * But some modules use specific eint which doesn't have real GPIO pin.
+ * So we use virtual GPIO to map it.
+ */
+
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
+	if (desc->funcs && !desc->funcs[desc->eint.eint_m].name)
+		virt_gpio = true;
+
+	return virt_gpio;
+}
+
 static int mtk_xt_get_gpio_n(void *data, unsigned long eint_n,
 			     unsigned int *gpio_n,
 			     struct gpio_chip **gpio_chip)
@@ -278,6 +303,9 @@ static int mtk_xt_set_gpio_as_eint(void *data, unsigned long eint_n)
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
index 923264d..7fba76d 100644
--- a/drivers/pinctrl/mediatek/pinctrl-paris.c
+++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
@@ -693,6 +693,13 @@ static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
 	const struct mtk_pin_desc *desc;
 	int value, err;
 
+	/*
+	 * "Virtual" GPIOs are always and only used for interrupts
+	 * Since they are only used for interrupts, they are always inputs
+	 */
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
