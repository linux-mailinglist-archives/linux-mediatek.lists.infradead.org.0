Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41700F355
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Apr 2019 11:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiFkefNq/OGLpETVIjlQnG2jvZgwVN+REU3mH3C4Bec=; b=lQiTlk99iVXe8r
	og9wZBQp3d+ULyPU72Q4Nb/egSbTYZbefIKqF5K8MLyGTfS8LmkAdakAazfyBwzzP923sxTdanJq8
	5uRhh42hFoLRaMTdGqcKHjJrzDFZcDlUK3ZDxRHJalPe8hwtUrKKliBakZMAvw3pdnSoUzuEk0z6l
	PoZtrNkWsfp4i5FYLpM9mAJTaLRB9rgQjhZWqnGEY3IqrcPLV5F//+7edszEqj4fRomKaFoih26Bi
	TajWHlY1UKQAO2hUH+rtccfEns86/Ruj6vdL9VUidUkRvoFfrdiqNRR1KbiZDCuXtXhs2qiqJ56sS
	OPWfKACctIcVLpUsNyIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPKl-0000ee-Ie; Tue, 30 Apr 2019 09:45:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPKL-000055-FE; Tue, 30 Apr 2019 09:45:31 +0000
X-UUID: 3cd74882d0b04f42a50af1b8c09c990c-20190430
X-UUID: 3cd74882d0b04f42a50af1b8c09c990c-20190430
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 4890286; Tue, 30 Apr 2019 01:45:23 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 02:45:22 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 17:45:19 +0800
Received: from mtkslt205.mediatek.inc (10.21.15.75) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 17:45:19 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>
Subject: [RFC V2 06/11] soc: mediatek: add MT8183 dvfsrc support
Date: Tue, 30 Apr 2019 16:51:00 +0800
Message-ID: <1556614265-12745-7-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: BDD94E07BC5F44F49120B03F08715AA8D6CE5FC3BA7FAD63786EFE6B41F660B42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_024529_621105_B5D93FD4 
X-CRM114-Status: GOOD (  21.23  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Nicolas Boichat <drinkcat@google.com>, linux-kernel@vger.kernel.org, Henry
 Chen <henryc.chen@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add dvfsrc driver for MT8183

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 drivers/soc/mediatek/Kconfig      |  15 ++
 drivers/soc/mediatek/Makefile     |   1 +
 drivers/soc/mediatek/mtk-dvfsrc.c | 347 ++++++++++++++++++++++++++++++++++++++
 include/soc/mediatek/mtk_dvfsrc.h |  22 +++
 4 files changed, 385 insertions(+)
 create mode 100644 drivers/soc/mediatek/mtk-dvfsrc.c
 create mode 100644 include/soc/mediatek/mtk_dvfsrc.h

diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
index 17bd759..2721fd6 100644
--- a/drivers/soc/mediatek/Kconfig
+++ b/drivers/soc/mediatek/Kconfig
@@ -24,6 +24,21 @@ config MTK_INFRACFG
 	  INFRACFG controller contains various infrastructure registers not
 	  directly associated to any device.
 
+config MTK_DVFSRC
+	bool "MediaTek DVFSRC Support"
+	depends on ARCH_MEDIATEK
+	default ARCH_MEDIATEK
+	select MTK_INFRACFG
+	select PM_GENERIC_DOMAINS if PM
+	depends on MTK_SCPSYS
+	help
+	  Say yes here to add support for the MediaTek DVFSRC (dynamic voltage
+	  and frequency scaling resource collector) found
+	  on different MediaTek SoCs. The DVFSRC is a proprietary
+	  hardware which is used to collect all the requests from
+	  system and turn into the decision of minimum Vcore voltage
+	  and minimum DRAM frequency to fulfill those requests.
+
 config MTK_PMIC_WRAP
 	tristate "MediaTek PMIC Wrapper Support"
 	depends on RESET_CONTROLLER
diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
index b9dbad6..cd9d63f 100644
--- a/drivers/soc/mediatek/Makefile
+++ b/drivers/soc/mediatek/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
+obj-$(CONFIG_MTK_DVFSRC) += mtk-dvfsrc.o
 obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o mtk-scpsys-ext.o
 obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
 obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
diff --git a/drivers/soc/mediatek/mtk-dvfsrc.c b/drivers/soc/mediatek/mtk-dvfsrc.c
new file mode 100644
index 0000000..e54a654
--- /dev/null
+++ b/drivers/soc/mediatek/mtk-dvfsrc.c
@@ -0,0 +1,347 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018 MediaTek Inc.
+ */
+#include <linux/arm-smccc.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/notifier.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <soc/mediatek/mtk_dvfsrc.h>
+#include <soc/mediatek/mtk_sip.h>
+#include <dt-bindings/power/mt8183-power.h>
+#include <dt-bindings/soc/mtk,dvfsrc.h>
+#include <dt-bindings/soc/mtk,dvfsrc.h>
+#include "mtk-scpsys.h"
+
+#define DVFSRC_IDLE		0x00
+#define DVFSRC_GET_TARGET_LEVEL(x)	(((x) >> 0) & 0x0000ffff)
+#define DVFSRC_GET_CURRENT_LEVEL(x)	(((x) >> 16) & 0x0000ffff)
+
+#define MT8183_DVFSRC_OPP_LP4	0
+#define MT8183_DVFSRC_OPP_LP4X	1
+#define MT8183_DVFSRC_OPP_LP3	2
+
+struct dvfsrc_opp {
+	u32 vcore_opp;
+	u32 dram_opp;
+};
+
+struct dvfsrc_domain {
+	u32 id;
+	u32 state;
+};
+
+struct mtk_dvfsrc;
+struct dvfsrc_soc_data {
+	const int *regs;
+	u32 num_opp;
+	u32 num_domains;
+	const struct dvfsrc_opp **opps;
+	struct dvfsrc_domain *domains;
+	int (*get_target_level)(struct mtk_dvfsrc *dvfsrc);
+	int (*get_current_level)(struct mtk_dvfsrc *dvfsrc);
+	void (*set_dram_bw)(struct mtk_dvfsrc *dvfsrc, u64 bw);
+	void (*set_opp_level)(struct mtk_dvfsrc *dvfsrc, u32 level);
+};
+
+struct mtk_dvfsrc {
+	struct device *dev;
+	struct clk *clk_dvfsrc;
+	const struct dvfsrc_soc_data *dvd;
+	int dram_type;
+	void __iomem *regs;
+	struct mutex lock;
+	struct notifier_block scpsys_notifier;
+};
+
+static u32 dvfsrc_read(struct mtk_dvfsrc *dvfs, u32 offset)
+{
+	return readl(dvfs->regs + dvfs->dvd->regs[offset]);
+}
+
+static void dvfsrc_write(struct mtk_dvfsrc *dvfs, u32 offset, u32 val)
+{
+	writel(val, dvfs->regs + dvfs->dvd->regs[offset]);
+}
+
+enum dvfsrc_regs {
+	DVFSRC_SW_REQ,
+	DVFSRC_LEVEL,
+	DVFSRC_SW_BW_0,
+	DVFSRC_LAST,
+};
+
+static const int mt8183_regs[] = {
+	[DVFSRC_SW_REQ] =	0x4,
+	[DVFSRC_LEVEL] =	0xDC,
+	[DVFSRC_SW_BW_0] =	0x160,
+	[DVFSRC_LAST] =		0x308,
+};
+
+static bool dvfsrc_is_idle(struct mtk_dvfsrc *dvfsrc)
+{
+	if (!dvfsrc->dvd->get_target_level)
+		return true;
+
+	return dvfsrc->dvd->get_target_level(dvfsrc) == DVFSRC_IDLE;
+}
+
+static int dvfsrc_wait_for_idle(struct mtk_dvfsrc *dvfsrc)
+{
+	unsigned long timeout;
+
+	timeout = jiffies + usecs_to_jiffies(1000);
+
+	do {
+		if (dvfsrc_is_idle(dvfsrc))
+			return 0;
+	} while (!time_after(jiffies, timeout));
+
+	return -ETIMEDOUT;
+}
+
+static int mt8183_get_target_level(struct mtk_dvfsrc *dvfsrc)
+{
+	return DVFSRC_GET_TARGET_LEVEL(dvfsrc_read(dvfsrc, DVFSRC_LEVEL));
+}
+
+static int mt8183_get_current_level(struct mtk_dvfsrc *dvfsrc)
+{
+	return ffs(DVFSRC_GET_CURRENT_LEVEL(dvfsrc_read(dvfsrc, DVFSRC_LEVEL)));
+}
+
+static void mt8183_set_dram_bw(struct mtk_dvfsrc *dvfsrc, u64 bw)
+{
+	dvfsrc_write(dvfsrc, DVFSRC_SW_BW_0, bw);
+}
+
+static void mt8183_set_opp_level(struct mtk_dvfsrc *dvfsrc, u32 level)
+{
+	int vcore_opp, dram_opp;
+	const struct dvfsrc_opp *opp;
+
+	/* translate pstate to dvfsrc level, and set it to DVFSRC HW */
+	opp = &dvfsrc->dvd->opps[dvfsrc->dram_type][level - 1];
+	vcore_opp = opp->vcore_opp;
+	dram_opp = opp->dram_opp;
+
+	dev_dbg(dvfsrc->dev, "vcore_opp: %d, dram_opp: %d\n",
+		vcore_opp, dram_opp);
+	dvfsrc_write(dvfsrc, DVFSRC_SW_REQ, dram_opp | vcore_opp << 2);
+}
+
+void mtk_dvfsrc_send_request(const struct device *dev, u32 cmd, u64 data)
+{
+	struct mtk_dvfsrc *dvfsrc = dev_get_drvdata(dev);
+
+	dev_dbg(dvfsrc->dev, "cmd: %d, data: %llu\n", cmd, data);
+
+	mutex_lock(&dvfsrc->lock);
+
+	if (dvfsrc_wait_for_idle(dvfsrc)) {
+		dev_warn(dvfsrc->dev, "[%s] wait idle, last: %d -> %d\n",
+			 __func__, dvfsrc_read(dvfsrc, DVFSRC_LEVEL),
+		dvfsrc_read(dvfsrc, DVFSRC_LAST));
+		goto out;
+	}
+
+	switch (cmd) {
+	case MTK_DVFSRC_CMD_BW_REQUEST:
+		dvfsrc->dvd->set_dram_bw(dvfsrc, data);
+		goto out;
+	case MTK_DVFSRC_CMD_OPP_REQUEST:
+		dvfsrc->dvd->set_opp_level(dvfsrc, data);
+		break;
+	default:
+		dev_err(dvfsrc->dev, "unknown command: %d\n", cmd);
+		break;
+	}
+
+	if (dvfsrc_wait_for_idle(dvfsrc)) {
+		dev_warn(dvfsrc->dev, "[%s] wait idle, last: %d -> %d\n",
+			 __func__, dvfsrc_read(dvfsrc, DVFSRC_LEVEL),
+			 dvfsrc_read(dvfsrc, DVFSRC_LAST));
+		goto out;
+	}
+
+out:
+	mutex_unlock(&dvfsrc->lock);
+}
+EXPORT_SYMBOL(mtk_dvfsrc_send_request);
+
+static int dvfsrc_set_performance(struct notifier_block *b,
+				  unsigned long l, void *v)
+{
+	int i, val, highest;
+	struct mtk_dvfsrc *dvfsrc;
+	struct scp_event_data *sc = v;
+	struct dvfsrc_domain *d;
+
+	if (sc->event_type != MTK_SCPSYS_PSTATE)
+		return 0;
+
+	dvfsrc = container_of(b, struct mtk_dvfsrc, scpsys_notifier);
+
+	d = dvfsrc->dvd->domains;
+
+	if (l > dvfsrc->dvd->num_opp) {
+		dev_err(dvfsrc->dev, "pstate out of range = %ld\n", l);
+		goto out;
+	}
+
+	for (i = 0, highest = 0; i < dvfsrc->dvd->num_domains - 1; i++, d++) {
+		if (sc->domain_id == d->id)
+			d->state = l;
+		if (d->state > highest)
+			highest = d->state;
+	}
+
+	if (highest == 0) {
+		dev_err(dvfsrc->dev, "domain not match\n");
+		goto out;
+	}
+
+	mtk_dvfsrc_send_request(dvfsrc->dev, MTK_DVFSRC_CMD_OPP_REQUEST,
+				highest);
+
+	val = dvfsrc->dvd->get_current_level(dvfsrc);
+
+	dev_dbg(dvfsrc->dev, "DVFSRC_LEVEL: %x, val: %x, DVFSRC_SW_REQ: %x\n",
+		dvfsrc_read(dvfsrc, DVFSRC_LEVEL), val,
+		dvfsrc_read(dvfsrc, DVFSRC_SW_REQ));
+
+	if (val < highest) {
+		dev_err(dvfsrc->dev, "current: %d < highest: %x\n",
+			val, highest);
+		goto out;
+	}
+
+out:
+	return 0;
+}
+
+static void pstate_notifier_register(struct mtk_dvfsrc *dvfsrc)
+{
+	dvfsrc->scpsys_notifier.notifier_call = dvfsrc_set_performance;
+	register_scpsys_notifier(&dvfsrc->scpsys_notifier);
+}
+
+static int mtk_dvfsrc_probe(struct platform_device *pdev)
+{
+	struct arm_smccc_res ares;
+	struct resource *res;
+	struct mtk_dvfsrc *dvfsrc;
+	int ret;
+
+	dvfsrc = devm_kzalloc(&pdev->dev, sizeof(*dvfsrc), GFP_KERNEL);
+	if (!dvfsrc)
+		return -ENOMEM;
+
+	dvfsrc->dvd = of_device_get_match_data(&pdev->dev);
+	dvfsrc->dev = &pdev->dev;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	dvfsrc->regs = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(dvfsrc->regs))
+		return PTR_ERR(dvfsrc->regs);
+
+	dvfsrc->clk_dvfsrc = devm_clk_get(dvfsrc->dev, "dvfsrc");
+	if (IS_ERR(dvfsrc->clk_dvfsrc)) {
+		dev_err(dvfsrc->dev, "failed to get clock: %ld\n",
+			PTR_ERR(dvfsrc->clk_dvfsrc));
+		return PTR_ERR(dvfsrc->clk_dvfsrc);
+	}
+
+	ret = clk_prepare_enable(dvfsrc->clk_dvfsrc);
+	if (ret)
+		return ret;
+
+	mutex_init(&dvfsrc->lock);
+
+	arm_smccc_smc(MTK_SIP_SPM, MTK_SIP_SPM_DVFSRC_INIT, 0, 0, 0, 0, 0, 0,
+		      &ares);
+
+	if (!ares.a0) {
+		dvfsrc->dram_type = ares.a1;
+	} else {
+		dev_err(dvfsrc->dev, "init fails: %lu\n", ares.a0);
+		clk_disable_unprepare(dvfsrc->clk_dvfsrc);
+		return ares.a0;
+	}
+
+	platform_set_drvdata(pdev, dvfsrc);
+	pstate_notifier_register(dvfsrc);
+
+	return devm_of_platform_populate(&pdev->dev);
+}
+
+static const struct dvfsrc_opp dvfsrc_opp_mt8183_lp4[] = {
+	{0, 0}, {0, 1}, {0, 2}, {1, 2},
+};
+
+static const struct dvfsrc_opp dvfsrc_opp_mt8183_lp3[] = {
+	{0, 0}, {0, 1}, {1, 1}, {1, 2},
+};
+
+static const struct dvfsrc_opp *dvfsrc_opp_mt8183[] = {
+	[MT8183_DVFSRC_OPP_LP4] = dvfsrc_opp_mt8183_lp4,
+	[MT8183_DVFSRC_OPP_LP4X] = dvfsrc_opp_mt8183_lp3,
+	[MT8183_DVFSRC_OPP_LP3] = dvfsrc_opp_mt8183_lp3,
+};
+
+static struct dvfsrc_domain dvfsrc_domains_mt8183[] = {
+	{ MT8183_POWER_DOMAIN_MFG_ASYNC, 0 },
+	{ MT8183_POWER_DOMAIN_MFG, 0 },
+	{ MT8183_POWER_DOMAIN_CAM, 0 },
+	{ MT8183_POWER_DOMAIN_DISP, 0 },
+	{ MT8183_POWER_DOMAIN_ISP, 0 },
+	{ MT8183_POWER_DOMAIN_VDEC, 0 },
+	{ MT8183_POWER_DOMAIN_VENC, 0 },
+};
+
+static const struct dvfsrc_soc_data mt8183_data = {
+	.opps = dvfsrc_opp_mt8183,
+	.num_opp = ARRAY_SIZE(dvfsrc_opp_mt8183_lp4),
+	.regs = mt8183_regs,
+	.domains = dvfsrc_domains_mt8183,
+	.num_domains = ARRAY_SIZE(dvfsrc_domains_mt8183),
+	.get_target_level = mt8183_get_target_level,
+	.get_current_level = mt8183_get_current_level,
+	.set_dram_bw = mt8183_set_dram_bw,
+	.set_opp_level = mt8183_set_opp_level,
+};
+
+static int mtk_dvfsrc_remove(struct platform_device *pdev)
+{
+	struct mtk_dvfsrc *dvfsrc = platform_get_drvdata(pdev);
+
+	clk_disable_unprepare(dvfsrc->clk_dvfsrc);
+
+	return 0;
+}
+
+static const struct of_device_id mtk_dvfsrc_of_match[] = {
+	{
+		.compatible = "mediatek,mt8183-dvfsrc",
+		.data = &mt8183_data,
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct platform_driver mtk_dvfsrc_driver = {
+	.probe	= mtk_dvfsrc_probe,
+	.remove	= mtk_dvfsrc_remove,
+	.driver = {
+		.name = "mtk-dvfsrc",
+		.of_match_table = of_match_ptr(mtk_dvfsrc_of_match),
+	},
+};
+
+builtin_platform_driver(mtk_dvfsrc_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("MTK DVFSRC driver");
diff --git a/include/soc/mediatek/mtk_dvfsrc.h b/include/soc/mediatek/mtk_dvfsrc.h
new file mode 100644
index 0000000..e759a65
--- /dev/null
+++ b/include/soc/mediatek/mtk_dvfsrc.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (c) 2018 MediaTek Inc.
+ */
+#ifndef __SOC_MTK_DVFSRC_H
+#define __SOC_MTK_DVFSRC_H
+
+#define MTK_DVFSRC_CMD_BW_REQUEST	0
+#define MTK_DVFSRC_CMD_OPP_REQUEST	1
+
+#if IS_ENABLED(CONFIG_MTK_DVFSRC)
+void mtk_dvfsrc_send_request(const struct device *dev, u32 cmd, u64 data);
+
+#else
+
+static inline void mtk_dvfsrc_send_request(const struct device *dev, u32 cmd,
+					   u64 data)
+{ return -ENODEV; }
+
+#endif /* CONFIG_MTK_DVFSRC */
+
+#endif
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
