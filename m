Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014F312B0E9
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Dec 2019 05:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foh32EL6qWZbKhoGh5W3qJ1WpSwsLyPk2oQ2aNOwb5U=; b=Lk8YttdvkmBPaS
	SVmR6T815ANqEu3+VgHaRjI3YjPO/x8kG+YYm9J4ssdb4MVq+MjuVKvTzJBoAECNG+Q/bOae8uIZT
	Ajol210BUm1oPet8zNih0krVitsq/pOz2aQfp6s/cOjB6jfVuh0w9obXK79TB3D0lkzHIM6cmp9q+
	aD+f3EqWAxPurM0JlADO2OXcT47X2jb0/w4p3RMdbyNUDvMtwkiZ6N5wtg2RreBf7t91yyhQEqgKb
	MXicsI7+Q7po4/fgxURlBcwQzsB0BT9uwX0/mRMmwkAK33HoQ5gfedzhljMShXiVufJCcnmazurAW
	m8H/O8chG/FE4uvZcS2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikgtL-0005I7-PG; Fri, 27 Dec 2019 04:06:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikgt8-00055y-7W
 for linux-mediatek@lists.infradead.org; Fri, 27 Dec 2019 04:06:12 +0000
X-UUID: bf6c0c3c7cc049ff9f7524d25d863e98-20191226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=bgdhtxOg0Joy+nGuwp+0sdGH6RZyHvW/djh5eK//DiY=; 
 b=EcVfcCq3tS7lR1AZb4xzbqx9OoOEfvcYduZlv0HLGiwV2hw6NJ4Rx1vIFxaOxdNdoMQhckDrkN5aHqSNAFO/i+/gVQfh9op+7Ri39XRZZOH0YBokl6aceSdZBZODS/h4Jghsn1W49sJrz0s3ny6FIVHa7yzUCf+ofUxJtv8Y9tQ=;
X-UUID: bf6c0c3c7cc049ff9f7524d25d863e98-20191226
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 782458081; Thu, 26 Dec 2019 20:06:00 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Dec 2019 18:35:47 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 09:35:04 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 09:35:14 +0800
From: fengping.yu <fengping.yu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH V2 2/2] drivers: input: keyboard
Date: Fri, 27 Dec 2019 09:34:18 +0800
Message-ID: <20191227013418.19842-3-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191227013418.19842-1-fengping.yu@mediatek.com>
References: <20191227013418.19842-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_200610_326060_62FC185A 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, "fengping.yu" <fengping.yu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

add mtk keypad driver

Change-Id: I778def5a83621a5242d0bac7abfa20a7e5f89924
Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
---
 arch/arm64/configs/defconfig     |   1 +
 drivers/input/keyboard/Kconfig   |   8 +
 drivers/input/keyboard/Makefile  |   1 +
 drivers/input/keyboard/mtk-kpd.c | 357 +++++++++++++++++++++++++++++++
 4 files changed, 367 insertions(+)
 create mode 100644 drivers/input/keyboard/mtk-kpd.c

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8e05c39eab08..62bed77ec127 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -315,6 +315,7 @@ CONFIG_KEYBOARD_ADC=m
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_SNVS_PWRKEY=m
 CONFIG_KEYBOARD_CROS_EC=y
+CONFIG_KEYBOARD_MTK=y
 CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ATMEL_MXT=m
 CONFIG_INPUT_MISC=y
diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 8911bc2ec42a..01747a97536b 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -775,4 +775,12 @@ config KEYBOARD_MTK_PMIC
 	  To compile this driver as a module, choose M here: the
 	  module will be called pmic-keys.
 
+config KEYBOARD_MTK
+	tristate "MediaTek Keypad Support"
+	help
+	  Say Y here if you want to use the keypad.
+	  If unuse, say N.
+	  To compile this driver as a module, choose M here: the
+	  module will be called mtk-kpd.
+
 endif
diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
index 9510325c0c5d..daa654bcce6e 100644
--- a/drivers/input/keyboard/Makefile
+++ b/drivers/input/keyboard/Makefile
@@ -41,6 +41,7 @@ obj-$(CONFIG_KEYBOARD_MATRIX)		+= matrix_keypad.o
 obj-$(CONFIG_KEYBOARD_MAX7359)		+= max7359_keypad.o
 obj-$(CONFIG_KEYBOARD_MCS)		+= mcs_touchkey.o
 obj-$(CONFIG_KEYBOARD_MPR121)		+= mpr121_touchkey.o
+obj-$(CONFIG_KEYBOARD_MTK) 		+= mtk-kpd.o
 obj-$(CONFIG_KEYBOARD_MTK_PMIC) 	+= mtk-pmic-keys.o
 obj-$(CONFIG_KEYBOARD_NEWTON)		+= newtonkbd.o
 obj-$(CONFIG_KEYBOARD_NOMADIK)		+= nomadik-ske-keypad.o
diff --git a/drivers/input/keyboard/mtk-kpd.c b/drivers/input/keyboard/mtk-kpd.c
new file mode 100644
index 000000000000..740a58b44dac
--- /dev/null
+++ b/drivers/input/keyboard/mtk-kpd.c
@@ -0,0 +1,357 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ * Author Terry Chang <terry.chang@mediatek.com>
+ */
+#include <linux/atomic.h>
+#include <linux/clk.h>
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/fs.h>
+#include <linux/gpio.h>
+#include <linux/init.h>
+#include <linux/input.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/ioctl.h>
+#include <linux/kernel.h>
+#include <linux/miscdevice.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/pinctrl/consumer.h>
+#include <linux/platform_device.h>
+#include <linux/pm_wakeup.h>
+#include <linux/regmap.h>
+#include <linux/timer.h>
+#include <linux/workqueue.h>
+
+#define KPD_NAME	"mtk-kpd"
+
+#define KP_STA			(0x0000)
+#define KP_MEM1			(0x0004)
+#define KP_MEM2			(0x0008)
+#define KP_MEM3			(0x000c)
+#define KP_MEM4			(0x0010)
+#define KP_MEM5			(0x0014)
+#define KP_DEBOUNCE		(0x0018)
+#define KP_SEL			(0x0020)
+#define KP_EN			(0x0024)
+
+#define KP_COL0_SEL		(1 << 10)
+#define KP_COL1_SEL		(1 << 11)
+#define KP_COL2_SEL		(1 << 12)
+
+#define KPD_DEBOUNCE_MASK	((1U << 14) - 1)
+#define KPD_DOUBLE_KEY_MASK	(1U << 0)
+
+#define KPD_NUM_MEMS	5
+#define KPD_MEM5_BITS	8
+#define KPD_NUM_KEYS	72	/* 4 * 16 + KPD_MEM5_BITS */
+
+struct mtk_keypad {
+	struct input_dev *input_dev;
+	struct wakeup_source *suspend_lock;
+	struct tasklet_struct tasklet;
+	struct clk *clk;
+	void __iomem *base;
+	unsigned int irqnr;
+	u32 key_debounce;
+	u32 hw_map_num;
+	u32 hw_init_map[KPD_NUM_KEYS];
+	u16 keymap_state[KPD_NUM_MEMS];
+};
+
+/* for keymap handling */
+static void kpd_keymap_handler(unsigned long data);
+
+static int kpd_pdrv_probe(struct platform_device *pdev);
+
+static void kpd_get_keymap_state(void __iomem *kp_base, u16 state[])
+{
+	state[0] = readw(kp_base + KP_MEM1);
+	state[1] = readw(kp_base + KP_MEM2);
+	state[2] = readw(kp_base + KP_MEM3);
+	state[3] = readw(kp_base + KP_MEM4);
+	state[4] = readw(kp_base + KP_MEM5);
+	pr_debug("kpd register = %x %x %x %x %x\n",
+		 state[0], state[1], state[2], state[3], state[4]);
+}
+
+static void kpd_keymap_handler(unsigned long data)
+{
+	int i, j;
+	int pressed;
+	u16 new_state[KPD_NUM_MEMS], change, mask;
+	u16 hw_keycode, keycode;
+	void *dest;
+	struct mtk_keypad *keypad = (struct mtk_keypad *)data;
+
+	kpd_get_keymap_state(keypad->base, new_state);
+
+	__pm_wakeup_event(keypad->suspend_lock, 500);
+
+	for (i = 0; i < KPD_NUM_MEMS; i++) {
+		change = new_state[i] ^ keypad->keymap_state[i];
+		if (!change)
+			continue;
+
+		for (j = 0; j < 16U; j++) {
+			mask = (u16)1 << j;
+			if (!(change & mask))
+				continue;
+
+			hw_keycode = (i << 4) + j;
+
+			if (hw_keycode >= KPD_NUM_KEYS)
+				continue;
+
+			/* bit is 1: not pressed, 0: pressed */
+			pressed = (new_state[i] & mask) == 0U;
+			pr_debug("(%s) HW keycode = %d\n",
+				 (pressed) ? "pressed" : "released",
+				 hw_keycode);
+
+			keycode = keypad->hw_init_map[hw_keycode];
+			if (!keycode)
+				continue;
+			input_report_key(keypad->input_dev, keycode, pressed);
+			input_sync(keypad->input_dev);
+			pr_debug("report Linux keycode = %d\n", keycode);
+		}
+	}
+
+	dest = memcpy(keypad->keymap_state, new_state, sizeof(new_state));
+	enable_irq(keypad->irqnr);
+}
+
+static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
+{
+	/* use _nosync to avoid deadlock */
+	struct mtk_keypad *keypad = dev_id;
+
+	disable_irq_nosync(keypad->irqnr);
+	tasklet_schedule(&keypad->tasklet);
+	return IRQ_HANDLED;
+}
+
+static int kpd_get_dts_info(struct mtk_keypad *keypad,
+			    struct device_node *node)
+{
+	int ret;
+
+	ret = of_property_read_u32(node, "mediatek,key-debounce-ms",
+				   &keypad->key_debounce);
+	if (ret) {
+		pr_debug("read mediatek,key-debounce-ms error.\n");
+		return ret;
+	}
+
+	ret = of_property_read_u32(node, "mediatek,hw-map-num",
+				   &keypad->hw_map_num);
+	if (ret) {
+		pr_debug("read mediatek,hw-map-num error.\n");
+		return ret;
+	}
+
+	if (keypad->hw_map_num > KPD_NUM_KEYS) {
+		pr_debug("hw-map-num error, it cannot bigger than %d.\n",
+			 KPD_NUM_KEYS);
+		return -EINVAL;
+	}
+
+	ret = of_property_read_u32_array(node, "mediatek,hw-init-map",
+					 keypad->hw_init_map,
+					 keypad->hw_map_num);
+
+	if (ret) {
+		pr_debug("hw-init-map was not defined in dts.\n");
+		return ret;
+	}
+
+	pr_debug("deb= %d\n", keypad->key_debounce);
+
+	return 0;
+}
+
+static int kpd_gpio_init(struct device *dev)
+{
+	struct pinctrl *keypad_pinctrl;
+	struct pinctrl_state *kpd_default;
+
+	keypad_pinctrl = devm_pinctrl_get(dev);
+	if (IS_ERR(keypad_pinctrl)) {
+		pr_debug("Cannot find keypad_pinctrl!\n");
+
+		return (int)PTR_ERR(keypad_pinctrl);
+	}
+
+	kpd_default = pinctrl_lookup_state(keypad_pinctrl, "default");
+	if (IS_ERR(kpd_default)) {
+		pr_debug("Cannot find ecall_state!\n");
+
+		return (int)PTR_ERR(kpd_default);
+	}
+
+	return pinctrl_select_state(keypad_pinctrl,
+				kpd_default);
+}
+
+static int kpd_pdrv_probe(struct platform_device *pdev)
+{
+	struct mtk_keypad *keypad;
+	struct resource *res;
+	int i;
+	int err;
+
+	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
+	if (!keypad)
+		return -ENOMEM;
+
+	keypad->clk = devm_clk_get(&pdev->dev, "kpd");
+	if (IS_ERR(keypad->clk)) {
+		pr_notice("get kpd-clk fail: %d\n", (int)PTR_ERR(keypad->clk));
+		return (int)PTR_ERR(keypad->clk);
+	}
+
+	err = clk_prepare_enable(keypad->clk);
+	if (err) {
+		pr_notice("kpd-clk prepare enable failed.\n");
+		return err;
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		err = -ENODEV;
+		goto err_unprepare_clk;
+	}
+
+	keypad->base = devm_ioremap(&pdev->dev, res->start,
+				    resource_size(res));
+	if (!keypad->base) {
+		pr_notice("KP iomap failed\n");
+		err = -EBUSY;
+		goto err_unprepare_clk;
+	}
+
+	keypad->irqnr = irq_of_parse_and_map(pdev->dev.of_node, 0);
+	if (!keypad->irqnr) {
+		pr_notice("KP get irqnr failed\n");
+		err = -ENODEV;
+		goto err_unprepare_clk;
+	}
+
+	pr_info("kp base: 0x%p, addr:0x%p,  kp irq: %d\n",
+		keypad->base, &keypad->base, keypad->irqnr);
+	err = kpd_gpio_init(&pdev->dev);
+	if (err) {
+		pr_debug("gpio init failed\n");
+		goto err_unprepare_clk;
+	}
+
+	err = kpd_get_dts_info(keypad, pdev->dev.of_node);
+	if (err) {
+		pr_debug("get dts info failed.\n");
+		goto err_unprepare_clk;
+	}
+
+	memset(keypad->keymap_state, 0xff, sizeof(keypad->keymap_state));
+
+	keypad->input_dev = devm_input_allocate_device(&pdev->dev);
+	if (!keypad->input_dev) {
+		pr_notice("input allocate device fail.\n");
+		err = -ENOMEM;
+		goto err_unprepare_clk;
+	}
+
+	keypad->input_dev->name = KPD_NAME;
+	keypad->input_dev->id.bustype = BUS_HOST;
+	keypad->input_dev->dev.parent = &pdev->dev;
+
+	__set_bit(EV_KEY, keypad->input_dev->evbit);
+
+	for (i = 0; i < KPD_NUM_KEYS; i++) {
+		if (keypad->hw_init_map[i])
+			__set_bit(keypad->hw_init_map[i],
+				  keypad->input_dev->keybit);
+	}
+
+	err = input_register_device(keypad->input_dev);
+	if (err) {
+		pr_notice("register input device failed (%d)\n", err);
+		goto err_unprepare_clk;
+	}
+
+	input_set_drvdata(keypad->input_dev, keypad);
+
+	keypad->suspend_lock = wakeup_source_register(NULL, "kpd wakelock");
+	if (!keypad->suspend_lock) {
+		pr_notice("wakeup source init failed.\n");
+		err = -ENOMEM;
+		goto err_unregister_device;
+	}
+
+	tasklet_init(&keypad->tasklet, kpd_keymap_handler,
+		     (unsigned long)keypad);
+
+	writew((u16)(keypad->key_debounce & KPD_DEBOUNCE_MASK),
+		     keypad->base + KP_DEBOUNCE);
+
+	/* register IRQ */
+	err = request_irq(keypad->irqnr, kpd_irq_handler, IRQF_TRIGGER_NONE,
+			  KPD_NAME, keypad);
+	if (err) {
+		pr_notice("register IRQ failed (%d)\n", err);
+		goto err_irq;
+	}
+
+	pr_info("kpd_probe OK.\n");
+
+	return 0;
+
+err_irq:
+	tasklet_kill(&keypad->tasklet);
+	wakeup_source_unregister(keypad->suspend_lock);
+
+err_unregister_device:
+	input_unregister_device(keypad->input_dev);
+
+err_unprepare_clk:
+	clk_disable_unprepare(keypad->clk);
+
+	return err;
+}
+
+static int kpd_pdrv_remove(struct platform_device *pdev)
+{
+	struct mtk_keypad *keypad = platform_get_drvdata(pdev);
+
+	tasklet_kill(&keypad->tasklet);
+	wakeup_source_unregister(keypad->suspend_lock);
+	input_unregister_device(keypad->input_dev);
+	clk_disable_unprepare(keypad->clk);
+
+	return 0;
+}
+
+static const struct of_device_id kpd_of_match[] = {
+	{.compatible = "mediatek,mt6779-keypad"},
+	{.compatible = "mediatek,kp"},
+	{},
+};
+
+static struct platform_driver kpd_pdrv = {
+	.probe = kpd_pdrv_probe,
+	.remove = kpd_pdrv_remove,
+	.driver = {
+		   .name = KPD_NAME,
+		   .of_match_table = kpd_of_match,
+		   },
+};
+
+module_platform_driver(kpd_pdrv);
+
+MODULE_AUTHOR("Mediatek Corporation");
+MODULE_DESCRIPTION("MTK Keypad (KPD) Driver");
+MODULE_LICENSE("GPL");
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
