Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB58917F129
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Mar 2020 08:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2F/conGHgR9MSoRP0JVv1GOcM70ChDflp96VnGplxs=; b=ky0ZrV0MT3PUHc
	qmqQYga++bEhTUOTZu3lhThEVB2Jodfj8NKPIF/8HdtkoT/mDf7PA7+j56PIY+lbDFV4ygG40QV06
	hlccs3YpRIDv13Fo6OMeUxDUqxnRdQNWfVWvrN1nTXhM7DI+0E1FBpz/ZHapNhnnbvjTN+1BBjrXh
	A3yvvk6CDANnFQ5PyhYOVjzg2C7I5ZSJJXxcpe2NWfM8oD4nunjV2dNSgVh+jXcoz+eqOLFzW4QOP
	Ydi3IvBAWWu5e3EqIhWDiqI30wYuLd/DA/AEImV4T2pz8AAn3ssVd8gf/C+iUC/lfsmRekG2hCxF/
	JDuokXLJtj9vVHHIwG0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBZUk-0000Ai-Kt; Tue, 10 Mar 2020 07:40:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBZUg-00006q-3V
 for linux-mediatek@lists.infradead.org; Tue, 10 Mar 2020 07:40:04 +0000
X-UUID: 4dbd64d28be5419aba5be267b736a076-20200309
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=PRUj25PzaELOnlmnIbAGT2AMhokB3iM6FlnqhxHudNg=; 
 b=N22liQCbqULsI/Ew1MrSzLjlikoEpSIq9DXeV+G3T3AP9m8dz7WazLM0K6O/DWwsqRCJKZWFDzvqhRm2nSplUD2CdOK4S3MpMiU1bUgP8m4x5t+oEBICbsGNbaQglpUouoymu1AgyUhJBbRTMMXRyt+Ob66WZzRTdhaex3b1ilU=;
X-UUID: 4dbd64d28be5419aba5be267b736a076-20200309
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 856153966; Mon, 09 Mar 2020 23:39:55 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 00:39:58 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 15:40:54 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 10 Mar 2020 15:40:05 +0800
From: <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Subject: [PATCH v4 1/2] pinctrl: make MediaTek pinctrl v2 driver ready for
 buidling loadable module
Date: Tue, 10 Mar 2020 15:39:45 +0800
Message-ID: <1583825986-8189-2-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1583825986-8189-1-git-send-email-light.hsieh@mediatek.com>
References: <1583825986-8189-1-git-send-email-light.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_004002_211502_A85768D7 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sean.wang@kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, Light Hsieh <light.hsieh@mediatek.com>,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Light Hsieh <light.hsieh@mediatek.com>

In the future we want to be able to build the MediaTek pinctrl driver,
based on paris, as kernel module. This patch allows pinctrl-paris.c, the
external interrupt controller mtk-eint.c, and pinctrl-mtk-common-v2.c to
be loadable as module.

Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 drivers/pinctrl/mediatek/Kconfig                 | 13 +++++++++++--
 drivers/pinctrl/mediatek/Makefile                |  5 +++--
 drivers/pinctrl/mediatek/mtk-eint.c              |  9 +++++++++
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 24 ++++++++++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-paris.c         |  6 ++++++
 drivers/pinctrl/pinconf-generic.c                |  1 +
 6 files changed, 54 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
index 701f9af..4cd1109 100644
--- a/drivers/pinctrl/mediatek/Kconfig
+++ b/drivers/pinctrl/mediatek/Kconfig
@@ -3,10 +3,12 @@ menu "MediaTek pinctrl drivers"
 	depends on ARCH_MEDIATEK || COMPILE_TEST
 
 config EINT_MTK
-	bool "MediaTek External Interrupt Support"
+	tristate "MediaTek External Interrupt Support"
 	depends on PINCTRL_MTK || PINCTRL_MTK_MOORE || PINCTRL_MTK_PARIS || COMPILE_TEST
 	select GPIOLIB
 	select IRQ_DOMAIN
+	default y if PINCTRL_MTK || PINCTRL_MTK_MOORE
+	default PINCTRL_MTK_PARIS
 
 config PINCTRL_MTK
 	bool
@@ -17,23 +19,30 @@ config PINCTRL_MTK
 	select EINT_MTK
 	select OF_GPIO
 
+config PINCTRL_MTK_V2
+	tristate
+	depends on PINCTRL_MTK_MOORE || PINCTRL_MTK_PARIS
+
 config PINCTRL_MTK_MOORE
 	bool
 	depends on OF
 	select GENERIC_PINCONF
 	select GENERIC_PINCTRL_GROUPS
 	select GENERIC_PINMUX_FUNCTIONS
+	select EINT_MTK
 	select GPIOLIB
 	select OF_GPIO
+	select PINCTRL_MTK_V2
 
 config PINCTRL_MTK_PARIS
-	bool
+	tristate
 	depends on OF
 	select PINMUX
 	select GENERIC_PINCONF
 	select GPIOLIB
 	select EINT_MTK
 	select OF_GPIO
+	select PINCTRL_MTK_V2
 
 # For ARMv7 SoCs
 config PINCTRL_MT2701
diff --git a/drivers/pinctrl/mediatek/Makefile b/drivers/pinctrl/mediatek/Makefile
index a74325a..4b71328 100644
--- a/drivers/pinctrl/mediatek/Makefile
+++ b/drivers/pinctrl/mediatek/Makefile
@@ -2,8 +2,9 @@
 # Core
 obj-$(CONFIG_EINT_MTK)		+= mtk-eint.o
 obj-$(CONFIG_PINCTRL_MTK)	+= pinctrl-mtk-common.o
-obj-$(CONFIG_PINCTRL_MTK_MOORE) += pinctrl-moore.o pinctrl-mtk-common-v2.o
-obj-$(CONFIG_PINCTRL_MTK_PARIS) += pinctrl-paris.o pinctrl-mtk-common-v2.o
+obj-$(CONFIG_PINCTRL_MTK_V2)	+= pinctrl-mtk-common-v2.o
+obj-$(CONFIG_PINCTRL_MTK_MOORE) += pinctrl-moore.o
+obj-$(CONFIG_PINCTRL_MTK_PARIS) += pinctrl-paris.o
 
 # SoC Drivers
 obj-$(CONFIG_PINCTRL_MT2701)	+= pinctrl-mt2701.o
diff --git a/drivers/pinctrl/mediatek/mtk-eint.c b/drivers/pinctrl/mediatek/mtk-eint.c
index 7e526bcf..99703a8 100644
--- a/drivers/pinctrl/mediatek/mtk-eint.c
+++ b/drivers/pinctrl/mediatek/mtk-eint.c
@@ -9,6 +9,7 @@
  *
  */
 
+#include <linux/module.h>
 #include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/gpio/driver.h>
@@ -379,6 +380,7 @@ int mtk_eint_do_suspend(struct mtk_eint *eint)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_eint_do_suspend);
 
 int mtk_eint_do_resume(struct mtk_eint *eint)
 {
@@ -386,6 +388,7 @@ int mtk_eint_do_resume(struct mtk_eint *eint)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_eint_do_resume);
 
 int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_num,
 			  unsigned int debounce)
@@ -440,6 +443,7 @@ int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_num,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_eint_set_debounce);
 
 int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
 {
@@ -451,6 +455,7 @@ int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
 
 	return irq;
 }
+EXPORT_SYMBOL_GPL(mtk_eint_find_irq);
 
 int mtk_eint_do_init(struct mtk_eint *eint)
 {
@@ -495,3 +500,7 @@ int mtk_eint_do_init(struct mtk_eint *eint)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_eint_do_init);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("MediaTek EINT Driver");
diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
index 1da9425..cdf2d69 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
@@ -6,6 +6,7 @@
  *
  */
 
+#include <linux/module.h>
 #include <dt-bindings/pinctrl/mt65xx.h>
 #include <linux/device.h>
 #include <linux/err.h>
@@ -206,6 +207,7 @@ int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_hw_set_value);
 
 int mtk_hw_get_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
 		     int field, int *value)
@@ -225,6 +227,7 @@ int mtk_hw_get_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_hw_get_value);
 
 static int mtk_xt_find_eint_num(struct mtk_pinctrl *hw, unsigned long eint_n)
 {
@@ -363,6 +366,7 @@ int mtk_build_eint(struct mtk_pinctrl *hw, struct platform_device *pdev)
 
 	return mtk_eint_do_init(hw->eint);
 }
+EXPORT_SYMBOL_GPL(mtk_build_eint);
 
 /* Revision 0 */
 int mtk_pinconf_bias_disable_set(struct mtk_pinctrl *hw,
@@ -382,6 +386,7 @@ int mtk_pinconf_bias_disable_set(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_set);
 
 int mtk_pinconf_bias_disable_get(struct mtk_pinctrl *hw,
 				 const struct mtk_pin_desc *desc, int *res)
@@ -404,6 +409,7 @@ int mtk_pinconf_bias_disable_get(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_get);
 
 int mtk_pinconf_bias_set(struct mtk_pinctrl *hw,
 			 const struct mtk_pin_desc *desc, bool pullup)
@@ -423,6 +429,7 @@ int mtk_pinconf_bias_set(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set);
 
 int mtk_pinconf_bias_get(struct mtk_pinctrl *hw,
 			 const struct mtk_pin_desc *desc, bool pullup, int *res)
@@ -442,6 +449,7 @@ int mtk_pinconf_bias_get(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_bias_get);
 
 /* Revision 1 */
 int mtk_pinconf_bias_disable_set_rev1(struct mtk_pinctrl *hw,
@@ -456,6 +464,7 @@ int mtk_pinconf_bias_disable_set_rev1(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_set_rev1);
 
 int mtk_pinconf_bias_disable_get_rev1(struct mtk_pinctrl *hw,
 				      const struct mtk_pin_desc *desc, int *res)
@@ -473,6 +482,7 @@ int mtk_pinconf_bias_disable_get_rev1(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_get_rev1);
 
 int mtk_pinconf_bias_set_rev1(struct mtk_pinctrl *hw,
 			      const struct mtk_pin_desc *desc, bool pullup)
@@ -492,6 +502,7 @@ int mtk_pinconf_bias_set_rev1(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_rev1);
 
 int mtk_pinconf_bias_get_rev1(struct mtk_pinctrl *hw,
 			      const struct mtk_pin_desc *desc, bool pullup,
@@ -517,6 +528,7 @@ int mtk_pinconf_bias_get_rev1(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_gev1);
 
 /* Combo for the following pull register type:
  * 1. PU + PD
@@ -717,6 +729,7 @@ int mtk_pinconf_bias_set_combo(struct mtk_pinctrl *hw,
 out:
 	return err;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_combo);
 
 int mtk_pinconf_bias_get_combo(struct mtk_pinctrl *hw,
 			      const struct mtk_pin_desc *desc,
@@ -737,6 +750,7 @@ int mtk_pinconf_bias_get_combo(struct mtk_pinctrl *hw,
 out:
 	return err;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_bias_get_combo);
 
 /* Revision 0 */
 int mtk_pinconf_drive_set(struct mtk_pinctrl *hw,
@@ -766,6 +780,7 @@ int mtk_pinconf_drive_set(struct mtk_pinctrl *hw,
 
 	return err;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set);
 
 int mtk_pinconf_drive_get(struct mtk_pinctrl *hw,
 			  const struct mtk_pin_desc *desc, int *val)
@@ -790,6 +805,7 @@ int mtk_pinconf_drive_get(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get);
 
 /* Revision 1 */
 int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
@@ -811,6 +827,7 @@ int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
 
 	return err;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set_rev1);
 
 int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
 			       const struct mtk_pin_desc *desc, int *val)
@@ -828,18 +845,21 @@ int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get_rev1);
 
 int mtk_pinconf_drive_set_raw(struct mtk_pinctrl *hw,
 			       const struct mtk_pin_desc *desc, u32 arg)
 {
 	return mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DRV, arg);
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set_raw);
 
 int mtk_pinconf_drive_get_raw(struct mtk_pinctrl *hw,
 			       const struct mtk_pin_desc *desc, int *val)
 {
 	return mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DRV, val);
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get_raw);
 
 int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
 			     const struct mtk_pin_desc *desc, bool pullup,
@@ -880,6 +900,7 @@ int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
 
 	return err;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_adv_pull_set);
 
 int mtk_pinconf_adv_pull_get(struct mtk_pinctrl *hw,
 			     const struct mtk_pin_desc *desc, bool pullup,
@@ -922,6 +943,7 @@ int mtk_pinconf_adv_pull_get(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_adv_pull_get);
 
 int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
 			      const struct mtk_pin_desc *desc, u32 arg)
@@ -948,6 +970,7 @@ int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
 
 	return err;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_adv_drive_set);
 
 int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
 			      const struct mtk_pin_desc *desc, u32 *val)
@@ -971,3 +994,4 @@ int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mtk_pinconf_adv_drive_get);
diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
index 83bf29c..028a3de 100644
--- a/drivers/pinctrl/mediatek/pinctrl-paris.c
+++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
@@ -9,6 +9,7 @@
  *	   Hongzhou.Yang <hongzhou.yang@mediatek.com>
  */
 
+#include <linux/module.h>
 #include <linux/gpio/driver.h>
 #include <dt-bindings/pinctrl/mt65xx.h>
 #include "pinctrl-paris.h"
@@ -633,6 +634,7 @@ ssize_t mtk_pctrl_show_one_pin(struct mtk_pinctrl *hw,
 
 	return len;
 }
+EXPORT_SYMBOL_GPL(mtk_pctrl_show_one_pin);
 
 #define PIN_DBG_BUF_SZ 96
 static void mtk_pctrl_dbg_show(struct pinctrl_dev *pctldev, struct seq_file *s,
@@ -1037,3 +1039,7 @@ static int mtk_paris_pinctrl_resume(struct device *device)
 	.suspend_noirq = mtk_paris_pinctrl_suspend,
 	.resume_noirq = mtk_paris_pinctrl_resume,
 };
+EXPORT_SYMBOL_GPL(mtk_paris_pinctrl_probe);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("MediaTek Pinctrl Common Driver V2 Paris");
diff --git a/drivers/pinctrl/pinconf-generic.c b/drivers/pinctrl/pinconf-generic.c
index 9eb8630..dfef471 100644
--- a/drivers/pinctrl/pinconf-generic.c
+++ b/drivers/pinctrl/pinconf-generic.c
@@ -286,6 +286,7 @@ int pinconf_generic_parse_dt_config(struct device_node *np,
 	kfree(cfg);
 	return ret;
 }
+EXPORT_SYMBOL_GPL(pinconf_generic_parse_dt_config);
 
 int pinconf_generic_dt_subnode_to_map(struct pinctrl_dev *pctldev,
 		struct device_node *np, struct pinctrl_map **map,
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
