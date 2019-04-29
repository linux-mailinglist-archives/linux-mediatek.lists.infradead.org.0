Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFD8E045
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 12:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkdupFJOYUfaZvk08zhPUIuvTw3Mg62n4r/HXnPweaM=; b=cRHDLy9x73TroD
	bLO8eu/qNAEdFZdHuFBCYr+G27A59nI8ovKT/QUxMWQSfZ9LtbkMwx6tIDxpzvAdqIPfZpUD72oX3
	bIevBhv7cGoCuMj13aqoFdEVEULznHwAD+0uBoyS5qEIS1VouMiXDOF50kKSij2gNMBoKwdYe5yd8
	Tl1Ekuc34cWnXdRDQs1bDGqGOWh6J6LQ7Lp2U1yob0LSWm3bYVzDRGA82ZatsWBSMAzYkUIzTLqjM
	DFFXA8I4HxKf+/Eb0zqV8W8qdXc/ZN8fo2C/Q4hI44LLPMUwq+v0NakfL4U66oPMxcciSZfAt/Sv0
	Ki4/p318AeIPawllmWUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL3EN-0006DQ-HG; Mon, 29 Apr 2019 10:09:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL3EJ-0006D1-GE
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 10:09:49 +0000
X-UUID: 6602af4d7cc945538bf5660c5be275c3-20190429
X-UUID: 6602af4d7cc945538bf5660c5be275c3-20190429
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jjian.zhou@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1982636386; Mon, 29 Apr 2019 02:09:43 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 03:09:42 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 18:09:40 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Apr 2019 18:09:40 +0800
From: Jjian Zhou <jjian.zhou@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH 2/2] mt8183: emi: add bandwidth driver support
Date: Mon, 29 Apr 2019 18:09:31 +0800
Message-ID: <1556532571-8234-2-git-send-email-jjian.zhou@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1556532571-8234-1-git-send-email-jjian.zhou@mediatek.com>
References: <1556532571-8234-1-git-send-email-jjian.zhou@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_030947_555487_934710C5 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-mediatek@lists.infradead.org, Xi
 Chen <xixi.chen@mediatek.com>, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Xi Chen <xixi.chen@mediatek.com>

EMI provides interface for get bandwidth  on every 1 miliseconds.
Currently, just support GPU bandwidth info.

Change-Id: I515db6194b0978b0d27a51d966c914a0b0f9d362
Signed-off-by: Xi Chen <xixi.chen@mediatek.com>
---
 drivers/memory/Kconfig     |    9 +
 drivers/memory/Makefile    |    1 +
 drivers/memory/mtk-emi.c   |  412 ++++++++++++++++++++++++++++++++++++++++++++
 include/soc/mediatek/emi.h |  116 +++++++++++++
 4 files changed, 538 insertions(+)
 create mode 100644 drivers/memory/mtk-emi.c
 create mode 100644 include/soc/mediatek/emi.h

diff --git a/drivers/memory/Kconfig b/drivers/memory/Kconfig
index 2d91b00..6209818 100644
--- a/drivers/memory/Kconfig
+++ b/drivers/memory/Kconfig
@@ -129,6 +129,15 @@ config JZ4780_NEMC
 	  the Ingenic JZ4780. This controller is used to handle external
 	  memory devices such as NAND and SRAM.

+config MTK_EMI_MBW
+	bool
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	help
+	  This driver is for MTK EMI control.
+	  If unsure, use N.
+	  This is the first time emi upstream.
+	  Only support emi bw statistics.
+
 config MTK_SMI
 	bool
 	depends on ARCH_MEDIATEK || COMPILE_TEST
diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
index 90161de..4f8b241 100644
--- a/drivers/memory/Makefile
+++ b/drivers/memory/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_FSL_CORENET_CF)	+= fsl-corenet-cf.o
 obj-$(CONFIG_FSL_IFC)		+= fsl_ifc.o
 obj-$(CONFIG_MVEBU_DEVBUS)	+= mvebu-devbus.o
 obj-$(CONFIG_JZ4780_NEMC)	+= jz4780-nemc.o
+obj-$(CONFIG_MTK_EMI_MBW)	+= mtk-emi.o
 obj-$(CONFIG_MTK_SMI)		+= mtk-smi.o
 obj-$(CONFIG_DA8XX_DDRCTL)	+= da8xx-ddrctl.o
 obj-$(CONFIG_PL353_SMC)		+= pl353-smc.o
diff --git a/drivers/memory/mtk-emi.c b/drivers/memory/mtk-emi.c
new file mode 100644
index 0000000..5d00c05
--- /dev/null
+++ b/drivers/memory/mtk-emi.c
@@ -0,0 +1,412 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2015-2016 MediaTek Inc.
+ * Author: Xi Chen <xixi.chen@mediatek.com>
+ */
+
+#include <linux/cdev.h>
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/fs.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/time.h>
+#include <linux/timer.h>
+#include <soc/mediatek/emi.h>
+
+/* 67ms emi bw  */
+#define EMI_BW_ARRAY_SIZE	67
+
+#define MT8173_SMI_LARB_NR	6
+#define MT8167_SMI_LARB_NR	3
+#define MTK_SMI_LARB_NR_MAX	8
+#define MT8173_MMU_EN		0xf00
+#define MT8167_MMU_EN		0xfc0
+#define MT8167_LARB0_OFF	0
+#define MT8167_LARB1_OFF	8
+#define MT8167_LARB2_OFF	21
+
+/*****************************************************************************
+ *  Type Definitions
+ *****************************************************************************/
+enum DDRTYPE {
+	TYPE_LPDDR3 = 1,
+	TYPE_LPDDR4,
+	TYPE_LPDDR4X
+};
+
+enum {
+	EMI_BASE_IDX_EMI = 0,
+	EMI_BASE_IDX_EMI_CH0,
+	EMI_BASE_IDX_EMI_CH1,
+
+	NR_EMI_BASE_IDX,
+};
+
+struct emi_base_addr {
+	unsigned int phy_addr;
+	unsigned int remap_addr;
+};
+
+struct mtk_emi {
+	void __iomem *cen_emi_base;
+	void __iomem *chn_emi_base[MAX_CH];
+	void __iomem *emi_mpu_base;
+
+	struct emi_info_t emi_info;
+
+	struct timer_list emi_bw_timer;
+	struct timeval old_tv;
+
+	unsigned long long emi_bw_array[EMI_BW_ARRAY_SIZE];
+	int emi_bw_cur_idx;
+	int emi_bw_max_idx;
+};
+
+/* because timer can't pass argument, so add the global
+ * static struct device * for timer callback usage
+ */
+static struct device *emi_dev;
+
+unsigned long long emi_get_max_bw_in_last_array(struct device *dev,
+	unsigned long long arr[], unsigned int size)
+{
+	unsigned int i = 0;
+	unsigned long long max = arr[0];
+
+	while (i < size) {
+		if (arr[i] > max)
+			max = arr[i];
+		++i;
+	}
+	return max;
+}
+
+unsigned long long mtk_emi_get_max_bw(void)
+{
+	struct mtk_emi *emi;
+
+	if (!emi_dev)
+		return 0;
+
+	emi = dev_get_drvdata(emi_dev);
+	return emi_get_max_bw_in_last_array(emi_dev,
+		emi->emi_bw_array, ARRAY_SIZE(emi->emi_bw_array));
+}
+EXPORT_SYMBOL(mtk_emi_get_max_bw);
+
+void emi_update_bw_array(struct device *dev, unsigned int val)
+{
+	struct mtk_emi *emi = dev_get_drvdata(emi_dev);
+
+	if (emi->emi_bw_cur_idx == emi->emi_bw_max_idx) {
+		/* remove the first array element */
+		memmove(emi->emi_bw_array, emi->emi_bw_array + 1,
+			sizeof(unsigned long long) * (emi->emi_bw_max_idx - 1));
+		emi->emi_bw_array[emi->emi_bw_max_idx - 1] = val;
+	} else
+		emi->emi_bw_array[emi->emi_bw_cur_idx++] = val;
+}
+
+static void emi_dump_bw_array(struct device *dev)
+{
+	int i = 0;
+	const int unit = 10;
+	struct mtk_emi *emi = dev_get_drvdata(emi_dev);
+
+	while (i < emi->emi_bw_max_idx) {
+		if (i != 0 && i % unit == 0)
+			pr_info("\n");
+		pr_info("0x%x ", emi->emi_bw_array[i]);
+
+		++i;
+	}
+
+	pr_info("\n");
+}
+
+static void emi_counter_reset(struct device *dev)
+{
+	struct mtk_emi *emi = dev_get_drvdata(dev);
+
+	writel(EMI_BMEN_DEFAULT_VALUE, EMI_BMEN);
+	writel(EMI_MSEL_DEFAULT_VALUE, EMI_MSEL);
+	writel(EMI_MSEL2_DEFAULT_VALUE, EMI_MSEL2);
+	writel(EMI_BMEN2_DEFAULT_VALUE, EMI_BMEN2);
+	writel(EMI_BMRW0_DEFAULT_VALUE, EMI_BMRW0);
+}
+
+static void emi_counter_pause(struct device *dev)
+{
+	struct mtk_emi *emi = dev_get_drvdata(dev);
+	const unsigned int value = readl(EMI_BMEN);
+
+	/* BW monitor */
+	writel(value | BUS_MON_PAUSE, EMI_BMEN);
+}
+
+static void emi_counter_continue(struct device *dev)
+{
+	struct mtk_emi *emi = dev_get_drvdata(dev);
+	const unsigned int value = readl(EMI_BMEN);
+
+	/* BW monitor */
+	writel(value & (~BUS_MON_PAUSE), EMI_BMEN);
+}
+
+static void emi_counter_enable(struct device *dev, const unsigned int enable)
+{
+	unsigned int value, value_set;
+	struct mtk_emi *emi = dev_get_drvdata(dev);
+
+	value = readl(EMI_BMEN);
+	if (enable == 0) {	/* disable monitor circuit */
+		/*  bit3 =1	bit0 = 0-> clear */
+		value_set = (value) | (BUS_MON_IDLE);
+		writel(value_set, EMI_BMEN);
+
+		value_set = ((value) | (BUS_MON_IDLE)) & ~(BUS_MON_EN);
+		writel(value_set, EMI_BMEN);
+
+		value_set = ((value) & ~(BUS_MON_IDLE)) & ~(BUS_MON_EN);
+		writel(value_set, EMI_BMEN);
+	} else {		/* enable monitor circuit */
+		/*  bit3 =0	&   bit0=1 */
+		value_set = (value & ~(BUS_MON_IDLE));
+		writel(value_set, EMI_BMEN);
+
+		value_set = (value & ~(BUS_MON_IDLE)) | (BUS_MON_EN);
+		writel(value_set, EMI_BMEN);
+	}
+}
+
+/*****************************************************************************
+ *  APIs
+ *****************************************************************************/
+static void mtk_emi_mon_start(struct device *dev)
+{
+	emi_counter_enable(dev, 0);
+	emi_counter_reset(dev);
+	emi_counter_enable(dev, 1);
+}
+
+static void mtk_emi_mon_restart(struct device *dev)
+{
+	emi_counter_continue(dev);
+	emi_counter_enable(dev, 0);
+	emi_counter_reset(dev);
+	emi_counter_enable(dev, 1);
+}
+
+static void mtk_emi_mon_stop(struct device *dev)
+{
+	emi_counter_pause(dev);
+}
+
+static ssize_t emi_show_max_bw(struct device *dev,
+				struct device_attribute *attr, char *buf)
+{
+	unsigned long long var, bw_cpu;
+	unsigned int bw_gpu;
+	struct mtk_emi *emi = dev_get_drvdata(dev);
+
+	if (!dev) {
+		pr_warn("dev is null!!\n");
+		return 0;
+	}
+
+	var = mtk_emi_get_max_bw();
+	bw_gpu = readl(EMI_BWVL_4TH) & 0x7f;
+	bw_cpu = readl(EMI_WSCT3);
+
+	return scnprintf(buf, PAGE_SIZE,
+		"gpu_max_bw:%llu(0x%x) EMI_BWVL_4TH:0x%x, cpu:%llu(0x%x)\n",
+		var, var, bw_gpu, bw_cpu, bw_cpu);
+}
+
+DEVICE_ATTR(bw,  0440, emi_show_max_bw, NULL);
+
+static ssize_t emi_dump_bw(struct device *dev, struct device_attribute *attr,
+			   char *buf)
+{
+	unsigned long long var;
+
+	if (!dev) {
+		pr_warn("dev is null!!\n");
+		return 0;
+	}
+
+	emi_dump_bw_array(dev);
+	var = mtk_emi_get_max_bw();
+
+	return scnprintf(buf, PAGE_SIZE,
+		"\temi_max_bw:%llu(0x%x)\n", var, var);
+}
+
+DEVICE_ATTR(dump_bw,  0440, emi_dump_bw, NULL);
+
+static int emi_bw_ms = 1;
+module_param_named(bw_ms, emi_bw_ms, int, 0664);
+
+static void emi_bw_timer_callback(struct timer_list *tm)
+{
+	struct timeval tv;
+	unsigned long long val, cur_max;
+	struct mtk_emi *emi = dev_get_drvdata(emi_dev);
+
+	do_gettimeofday(&tv);
+
+	/* pasue emi monitor for get WACT value*/
+	mtk_emi_mon_stop(emi_dev);
+
+	val = readl(EMI_WSCT4);	/* GPU BW */
+	val *= 8;
+
+	cur_max = mtk_emi_get_max_bw();
+	emi_update_bw_array(emi_dev, val);
+
+	/* set mew timer expires and restart emi monitor */
+	emi->old_tv = tv;
+	emi->emi_bw_timer.expires = jiffies + msecs_to_jiffies(emi_bw_ms);
+
+	add_timer(&(emi->emi_bw_timer));
+	mtk_emi_mon_restart(emi_dev);
+}
+
+static int emi_probe(struct platform_device *pdev)
+{
+	struct mtk_emi *emi;
+	struct resource *res;
+	struct device *dev = &pdev->dev;
+	int i, ret;
+
+	emi = devm_kzalloc(dev, sizeof(*emi), GFP_KERNEL);
+	if (!emi)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	emi->cen_emi_base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(emi->cen_emi_base)) {
+		pr_err("[EMI] unable to map cen_emi_base\n");
+		devm_kfree(dev, emi);
+		return -EINVAL;
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	emi->emi_mpu_base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(emi->emi_mpu_base)) {
+		pr_err("[EMI] unable to map emi_mpu_base\n");
+		devm_kfree(dev, emi);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < MAX_CH; i++) {
+		res = platform_get_resource(pdev, IORESOURCE_MEM, 2 + i);
+		emi->chn_emi_base[i] = devm_ioremap_resource(dev, res);
+		if (IS_ERR(emi->chn_emi_base[i])) {
+			pr_err("[EMI] unable to map ch%d_emi_base\n", i);
+			devm_kfree(dev, emi);
+			return -EINVAL;
+		}
+	}
+
+	platform_set_drvdata(pdev, emi);
+
+	emi_dev = dev;
+	/* start emi bw monitor */
+	mtk_emi_mon_start(dev);
+
+	emi->emi_bw_max_idx = ARRAY_SIZE(emi->emi_bw_array);
+	/* setup timer */
+	timer_setup(&(emi->emi_bw_timer), NULL, 0);
+	do_gettimeofday(&(emi->old_tv));
+
+	emi->emi_bw_timer.function = emi_bw_timer_callback;
+	emi->emi_bw_timer.expires = jiffies + msecs_to_jiffies(1);
+	add_timer(&(emi->emi_bw_timer));
+
+	/* debug node */
+	ret = device_create_file(dev, &dev_attr_bw);
+	if (ret) {
+		dev_err(dev, "create bw file failed!\n");
+		goto err_create_attr_bw;
+	}
+	ret = device_create_file(dev, &dev_attr_dump_bw);
+	if (ret) {
+		dev_err(dev, "create dump_bw file failed!\n");
+		goto err_create_attr_dump_bw;
+	}
+
+	return 0;
+
+err_create_attr_dump_bw:
+	del_timer(&(emi->emi_bw_timer));
+	device_remove_file(dev, &dev_attr_bw);
+err_create_attr_bw:
+	devm_kfree(dev, emi);
+	return -ENOMEM;
+}
+
+static int emi_remove(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mtk_emi *emi = dev_get_drvdata(dev);
+
+	del_timer(&(emi->emi_bw_timer));
+	device_remove_file(dev, &dev_attr_dump_bw);
+	device_remove_file(dev, &dev_attr_bw);
+
+	devm_kfree(dev, emi);
+	return 0;
+}
+
+
+#ifdef CONFIG_OF
+static const struct of_device_id emi_of_ids[] = {
+	{.compatible = "mediatek,mt8183-emi",},
+	{}
+};
+#endif
+
+static struct platform_driver emi_bw_driver = {
+	.probe = emi_probe,
+	.remove = emi_remove,
+	.driver = {
+		.name = "emi_bw",
+		.owner = THIS_MODULE,
+		.pm = NULL,
+#ifdef CONFIG_OF
+		.of_match_table = emi_of_ids,
+#endif
+	},
+};
+
+
+static int __init emi_bw_init(void)
+{
+	int ret;
+
+	/* register EMI ctrl interface */
+	ret = platform_driver_register(&emi_bw_driver);
+	if (ret) {
+		pr_err("[EMI/BWL] fail to register emi_bw_driver\n");
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
+static void __exit emi_bw_exit(void)
+{
+	platform_driver_unregister(&emi_bw_driver);
+}
+
+postcore_initcall(emi_bw_init);
+module_exit(emi_bw_exit);
+
diff --git a/include/soc/mediatek/emi.h b/include/soc/mediatek/emi.h
new file mode 100644
index 0000000..83bdaeb
--- /dev/null
+++ b/include/soc/mediatek/emi.h
@@ -0,0 +1,116 @@
+/* SPDX-License-Identifier: GPL-2.0  */
+/*
+ * Copyright (c) 2015-2016 MediaTek Inc.
+ * Author: Xi Chen <xixi.chen@mediatek.com>
+ */
+
+#ifndef _MTK_EMI_H_
+#define _MTK_EMI_H_
+
+#define MAX_CH		2
+#define MAX_RK		2
+
+struct emi_info_t {
+	unsigned int dram_type;
+	unsigned int ch_num;
+	unsigned int rk_num;
+	unsigned int rank_size[MAX_RK];
+};
+
+/*****************************************************************************
+ *  Macro Definiations
+ *****************************************************************************/
+#define EMI_REG_BASE                (0x10219000)
+#define EMI_REG_BASE_MAPPED         (emi->cen_emi_base)
+
+#define EMI_MDCT                    (EMI_REG_BASE_MAPPED + 0x078)
+#define EMI_MDCT_2ND                (EMI_REG_BASE_MAPPED + 0x07C)
+
+#define EMI_ARBA                    (EMI_REG_BASE_MAPPED + 0x100)
+#define EMI_ARBB                    (EMI_REG_BASE_MAPPED + 0x108)
+#define EMI_ARBC                    (EMI_REG_BASE_MAPPED + 0x110)
+#define EMI_ARBD                    (EMI_REG_BASE_MAPPED + 0x118)
+#define EMI_ARBE                    (EMI_REG_BASE_MAPPED + 0x120)
+#define EMI_ARBF                    (EMI_REG_BASE_MAPPED + 0x128)
+#define EMI_ARBG                    (EMI_REG_BASE_MAPPED + 0x130)
+#define EMI_ARBH                    (EMI_REG_BASE_MAPPED + 0x138)
+
+#define EMI_BMEN                    (EMI_REG_BASE_MAPPED + 0x400)
+#define EMI_BCNT                    (EMI_REG_BASE_MAPPED + 0x408)
+#define EMI_TACT                    (EMI_REG_BASE_MAPPED + 0x410)
+#define EMI_TSCT                    (EMI_REG_BASE_MAPPED + 0x418)
+#define EMI_WACT                    (EMI_REG_BASE_MAPPED + 0x420)
+#define EMI_WSCT                    (EMI_REG_BASE_MAPPED + 0x428)
+#define EMI_BACT                    (EMI_REG_BASE_MAPPED + 0x430)
+#define EMI_BSCT                    (EMI_REG_BASE_MAPPED + 0x438)
+#define EMI_MSEL                    (EMI_REG_BASE_MAPPED + 0x440)
+#define EMI_TSCT2                   (EMI_REG_BASE_MAPPED + 0x448)
+#define EMI_TSCT3                   (EMI_REG_BASE_MAPPED + 0x450)
+#define EMI_WSCT2                   (EMI_REG_BASE_MAPPED + 0x458)
+#define EMI_WSCT3                   (EMI_REG_BASE_MAPPED + 0x460)
+#define EMI_WSCT4                   (EMI_REG_BASE_MAPPED + 0x464)
+#define EMI_MSEL2                   (EMI_REG_BASE_MAPPED + 0x468)
+
+#define EMI_BMEN2                   (EMI_REG_BASE_MAPPED + 0x4E8)
+
+#define EMI_BMRW0                   (EMI_REG_BASE_MAPPED + 0x4F8)
+
+#define EMI_TTYPE1                  (EMI_REG_BASE_MAPPED + 0x500)
+#define EMI_TTYPE17                 (EMI_REG_BASE_MAPPED + 0x580)
+
+#define EMI_BWVL                    (EMI_REG_BASE_MAPPED + 0x7D0)
+#define EMI_BWVL_2ND                (EMI_REG_BASE_MAPPED + 0x7D4)
+#define EMI_BWVL_3RD                (EMI_REG_BASE_MAPPED + 0x7D8)
+#define EMI_BWVL_4TH                (EMI_REG_BASE_MAPPED + 0x7DC)
+#define EMI_BWVL_5TH                (EMI_REG_BASE_MAPPED + 0x7E0)
+
+#define EMI_CH0_REG_BASE            (0x1022D000)
+#define EMI_CH0_REG_BASE_MAPPED     (emi->chn_emi_base[0])
+#define EMI_CH0_DRS_ST2             (EMI_CH0_REG_BASE_MAPPED + 0x17C)
+#define EMI_CH0_DRS_ST3             (EMI_CH0_REG_BASE_MAPPED + 0x180)
+#define EMI_CH0_DRS_ST4             (EMI_CH0_REG_BASE_MAPPED + 0x184)
+
+#define EMI_CH1_REG_BASE            (0x10235000)
+#define EMI_CH1_REG_BASE_MAPPED     (emi->chn_emi_base[1])
+#define EMI_CH1_DRS_ST2             (EMI_CH1_REG_BASE_MAPPED + 0x17C)
+#define EMI_CH1_DRS_ST3             (EMI_CH1_REG_BASE_MAPPED + 0x180)
+#define EMI_CH1_DRS_ST4             (EMI_CH1_REG_BASE_MAPPED + 0x184)
+
+/*
+ * DEFAULT_VALUE
+ */
+#define EMI_BMEN_DEFAULT_VALUE    (0x00FF0000)
+#define EMI_BMEN2_DEFAULT_VALUE   (0x02000000)
+#define EMI_BMRW0_DEFAULT_VALUE   (0xFFFFFFFF)
+#define EMI_MSEL_DEFAULT_VALUE    (0x00030024)
+#define EMI_MSEL2_DEFAULT_VALUE   (0x000000C0)
+#define BC_OVERRUN                (0x00000100)
+
+/* EMI_BMEN */
+#define BUS_MON_EN          BIT(0)
+#define BUS_MON_PAUSE       BIT(1)
+#define BUS_MON_IDLE        BIT(3)
+
+#define MAX_DRAM_CH_NUM     (2)
+#define DRAM_RANK_NUM       (2)
+#define DRAM_PDIR_NUM       (8)
+#define EMI_TTYPE_NUM       (21)
+#define EMI_TSCT_NUM        (3)
+#define EMI_MDCT_NUM        (2)
+#define EMI_DRS_ST_NUM      (3)
+#define EMI_BW_LIMIT_NUM    (8)
+
+#define DRAMC_CG_SHIFT      (9)
+
+#define EMI_IDX_SIZE        (1024)
+
+#define EMI_BWVL_UNIT       (271)
+
+#define MBW_BUF_LEN         (0x800000)
+#define DATA_CNT_PER_BLK    (35)
+#define BLK_CNT_PER_BUF     (0x800)
+
+/* public apis */
+unsigned long long emi_get_max_bw(void);
+
+#endif
--
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
