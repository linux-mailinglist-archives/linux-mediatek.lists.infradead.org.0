Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BFA1865AE
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 08:26:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PBqp/rZkkiKNNPfKmWGxM8TIQlkse+nutedo8Hghz4=; b=PyD6Azl9YYgR+n
	ZMDjXy9gL/MvtoFKQbvFWFDwpxUbZsQaiMjKSVBWQywO837wOdgNI3KLTjdXALchtdP+0BSnbBWxD
	EsxAo78HEybpXkW3m9pLbAUmcljofgl9iIrPfu8F9cdIYKr9DMu7s05HRZkE2WNXD79b1JboIZjS+
	YthLSC8PJBXXhoJpySQkqFZWP8m4ykMxbr3dtjiegUYsZZq117LeJqrfMhj7pydBiO6PtS4UbWPY6
	5oVBmUH6wVjaCqqzV12JzsUYcyz1fUzaB3cFz+7urjsYFKdlman7NfcCkLlBwSTdoBgXNDyyBKwa/
	akoSIOY+7WkHB6qx35FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDk95-0006Qt-PT; Mon, 16 Mar 2020 07:26:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDk8n-0006AM-ON; Mon, 16 Mar 2020 07:26:29 +0000
X-UUID: 9b9418c490fd4597b4c05c54a2bb78d1-20200315
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=D0AT81v9iPbt/yKrx3J5r7dFexcxgjWm77Yn1c7jYzw=; 
 b=unpnLR8yGeZKP5bYBNzwGb5wuFIjdLPJ06B/ZD97F/ekWyHdqa98eAZH1u/o63pMiFmS7RNVaH91PrmpGOVs1MNsUcw73vk7OhMotrn76Sij4sUQKhmigMzOzVRz7KoJ7/5zD07OWKApGAqIIxXaUXwgxddRPQYHCp+/ku+kvUE=;
X-UUID: 9b9418c490fd4597b4c05c54a2bb78d1-20200315
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 868374978; Sun, 15 Mar 2020 23:26:23 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 00:24:40 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 15:23:33 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 16 Mar 2020 15:21:42 +0800
From: Roger Lu <roger.lu@mediatek.com>
To: Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Nicolas Boichat <drinkcat@google.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v7 3/3] PM / AVS: SVS: Introduce SVS engine
Date: Mon, 16 Mar 2020 15:23:17 +0800
Message-ID: <20200316072316.7156-4-roger.lu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200316072316.7156-1-roger.lu@mediatek.com>
References: <20200316072316.7156-1-roger.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_002625_818886_96C54D02 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 Angus Lin <Angus.Lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>,
 linux-kernel@vger.kernel.org, Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 YT Lee <yt.lee@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The SVS (Smart Voltage Scaling) engine is a piece
of hardware which is used to calculate optimized
voltage values of several power domains,
e.g. CPU/GPU/CCI, according to chip process corner,
temperatures, and other factors. Then DVFS driver
could apply those optimized voltage values to reduce
power consumption.

Signed-off-by: Roger Lu <roger.lu@mediatek.com>
---
 drivers/power/avs/Kconfig     |   10 +
 drivers/power/avs/Makefile    |    1 +
 drivers/power/avs/mtk_svs.c   | 2074 +++++++++++++++++++++++++++++++++
 include/linux/power/mtk_svs.h |   23 +
 4 files changed, 2108 insertions(+)
 create mode 100644 drivers/power/avs/mtk_svs.c
 create mode 100644 include/linux/power/mtk_svs.h

diff --git a/drivers/power/avs/Kconfig b/drivers/power/avs/Kconfig
index cdb4237bfd02..67089ac6040e 100644
--- a/drivers/power/avs/Kconfig
+++ b/drivers/power/avs/Kconfig
@@ -35,3 +35,13 @@ config ROCKCHIP_IODOMAIN
 	  Say y here to enable support io domains on Rockchip SoCs. It is
 	  necessary for the io domain setting of the SoC to match the
 	  voltage supplied by the regulators.
+
+config MTK_SVS
+	bool "MediaTek Smart Voltage Scaling(SVS)"
+	depends on POWER_AVS && MTK_EFUSE && NVMEM
+	help
+	  The SVS engine is a piece of hardware which is used to calculate
+	  optimized voltage values of several power domains, e.g.
+	  CPU clusters/GPU/CCI, according to chip process corner, temperatures,
+	  and other factors. Then DVFS driver could apply those optimized voltage
+	  values to reduce power consumption.
diff --git a/drivers/power/avs/Makefile b/drivers/power/avs/Makefile
index 9007d05853e2..231adf078582 100644
--- a/drivers/power/avs/Makefile
+++ b/drivers/power/avs/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_POWER_AVS_OMAP)		+= smartreflex.o
 obj-$(CONFIG_QCOM_CPR)			+= qcom-cpr.o
 obj-$(CONFIG_ROCKCHIP_IODOMAIN)		+= rockchip-io-domain.o
+obj-$(CONFIG_MTK_SVS)			+= mtk_svs.o
diff --git a/drivers/power/avs/mtk_svs.c b/drivers/power/avs/mtk_svs.c
new file mode 100644
index 000000000000..5fccae6d8fe9
--- /dev/null
+++ b/drivers/power/avs/mtk_svs.c
@@ -0,0 +1,2074 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 MediaTek Inc.
+ */
+
+#define pr_fmt(fmt)	"[mtk_svs] " fmt
+
+#include <linux/bits.h>
+#include <linux/clk.h>
+#include <linux/completion.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/kthread.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/platform_device.h>
+#include <linux/pm_domain.h>
+#include <linux/pm_opp.h>
+#include <linux/pm_qos.h>
+#include <linux/pm_runtime.h>
+#include <linux/power/mtk_svs.h>
+#include <linux/proc_fs.h>
+#include <linux/regulator/consumer.h>
+#include <linux/reset.h>
+#include <linux/seq_file.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include <linux/thermal.h>
+#include <linux/uaccess.h>
+
+/* svs 1-line sw id */
+#define SVS_CPU_LITTLE			BIT(0)
+#define SVS_CPU_BIG			BIT(1)
+#define SVS_CCI				BIT(2)
+#define SVS_GPU				BIT(3)
+
+/* svs bank mode support */
+#define SVSB_MODE_ALL_DISABLE		(0)
+#define SVSB_MODE_INIT01		BIT(1)
+#define SVSB_MODE_INIT02		BIT(2)
+#define SVSB_MODE_MON			BIT(3)
+
+/* svs bank init01 condition */
+#define SVSB_INIT01_VOLT_IGNORE		BIT(1)
+#define SVSB_INIT01_VOLT_INC_ONLY	BIT(2)
+
+/* svs bank common setting */
+#define HIGH_TEMP_MAX			(U32_MAX)
+#define RUNCONFIG_DEFAULT		(0x80000000)
+#define DC_SIGNED_BIT			(0x8000)
+#define INTEN_INIT0x			(0x00005f01)
+#define INTEN_MONVOPEN			(0x00ff0000)
+#define SVSEN_OFF			(0x0)
+#define SVSEN_MASK			(0x7)
+#define SVSEN_INIT01			(0x1)
+#define SVSEN_INIT02			(0x5)
+#define SVSEN_MON			(0x2)
+#define INTSTS_MONVOP			(0x00ff0000)
+#define INTSTS_COMPLETE			(0x1)
+#define INTSTS_CLEAN			(0x00ffffff)
+
+#define proc_fops_rw(name) \
+	static int name ## _proc_open(struct inode *inode,	\
+				      struct file *file)	\
+	{							\
+		return single_open(file, name ## _proc_show,	\
+				   PDE_DATA(inode));		\
+	}							\
+	static const struct proc_ops name ## _proc_fops = {	\
+		.proc_open	= name ## _proc_open,		\
+		.proc_read	= seq_read,			\
+		.proc_lseek	= seq_lseek,			\
+		.proc_release	= single_release,		\
+		.proc_write	= name ## _proc_write,		\
+	}
+
+#define proc_fops_ro(name) \
+	static int name ## _proc_open(struct inode *inode,	\
+				      struct file *file)	\
+	{							\
+		return single_open(file, name ## _proc_show,	\
+				   PDE_DATA(inode));		\
+	}							\
+	static const struct proc_ops name ## _proc_fops = {	\
+		.proc_open	= name ## _proc_open,		\
+		.proc_read	= seq_read,			\
+		.proc_lseek	= seq_lseek,			\
+		.proc_release	= single_release,		\
+	}
+
+#define proc_entry(name)	{__stringify(name), &name ## _proc_fops}
+
+static DEFINE_SPINLOCK(mtk_svs_lock);
+struct mtk_svs;
+
+enum svsb_phase {
+	SVSB_PHASE_INIT01 = 0,
+	SVSB_PHASE_INIT02,
+	SVSB_PHASE_MON,
+	SVSB_PHASE_ERROR,
+};
+
+enum reg_index {
+	TEMPMONCTL0 = 0,
+	TEMPMONCTL1,
+	TEMPMONCTL2,
+	TEMPMONINT,
+	TEMPMONINTSTS,
+	TEMPMONIDET0,
+	TEMPMONIDET1,
+	TEMPMONIDET2,
+	TEMPH2NTHRE,
+	TEMPHTHRE,
+	TEMPCTHRE,
+	TEMPOFFSETH,
+	TEMPOFFSETL,
+	TEMPMSRCTL0,
+	TEMPMSRCTL1,
+	TEMPAHBPOLL,
+	TEMPAHBTO,
+	TEMPADCPNP0,
+	TEMPADCPNP1,
+	TEMPADCPNP2,
+	TEMPADCMUX,
+	TEMPADCEXT,
+	TEMPADCEXT1,
+	TEMPADCEN,
+	TEMPPNPMUXADDR,
+	TEMPADCMUXADDR,
+	TEMPADCEXTADDR,
+	TEMPADCEXT1ADDR,
+	TEMPADCENADDR,
+	TEMPADCVALIDADDR,
+	TEMPADCVOLTADDR,
+	TEMPRDCTRL,
+	TEMPADCVALIDMASK,
+	TEMPADCVOLTAGESHIFT,
+	TEMPADCWRITECTRL,
+	TEMPMSR0,
+	TEMPMSR1,
+	TEMPMSR2,
+	TEMPADCHADDR,
+	TEMPIMMD0,
+	TEMPIMMD1,
+	TEMPIMMD2,
+	TEMPMONIDET3,
+	TEMPADCPNP3,
+	TEMPMSR3,
+	TEMPIMMD3,
+	TEMPPROTCTL,
+	TEMPPROTTA,
+	TEMPPROTTB,
+	TEMPPROTTC,
+	TEMPSPARE0,
+	TEMPSPARE1,
+	TEMPSPARE2,
+	TEMPSPARE3,
+	TEMPMSR0_1,
+	TEMPMSR1_1,
+	TEMPMSR2_1,
+	TEMPMSR3_1,
+	DESCHAR,
+	TEMPCHAR,
+	DETCHAR,
+	AGECHAR,
+	DCCONFIG,
+	AGECONFIG,
+	FREQPCT30,
+	FREQPCT74,
+	LIMITVALS,
+	VBOOT,
+	DETWINDOW,
+	CONFIG,
+	TSCALCS,
+	RUNCONFIG,
+	SVSEN,
+	INIT2VALS,
+	DCVALUES,
+	AGEVALUES,
+	VOP30,
+	VOP74,
+	TEMP,
+	INTSTS,
+	INTSTSRAW,
+	INTEN,
+	CHKINT,
+	CHKSHIFT,
+	STATUS,
+	VDESIGN30,
+	VDESIGN74,
+	DVT30,
+	DVT74,
+	AGECOUNT,
+	SMSTATE0,
+	SMSTATE1,
+	CTL0,
+	DESDETSEC,
+	TEMPAGESEC,
+	CTRLSPARE0,
+	CTRLSPARE1,
+	CTRLSPARE2,
+	CTRLSPARE3,
+	CORESEL,
+	THERMINTST,
+	INTST,
+	THSTAGE0ST,
+	THSTAGE1ST,
+	THSTAGE2ST,
+	THAHBST0,
+	THAHBST1,
+	SPARE0,
+	SPARE1,
+	SPARE2,
+	SPARE3,
+	THSLPEVEB,
+	reg_num,
+};
+
+static const u32 svs_regs_v2[] = {
+	[TEMPMONCTL0]		= 0x000,
+	[TEMPMONCTL1]		= 0x004,
+	[TEMPMONCTL2]		= 0x008,
+	[TEMPMONINT]		= 0x00c,
+	[TEMPMONINTSTS]		= 0x010,
+	[TEMPMONIDET0]		= 0x014,
+	[TEMPMONIDET1]		= 0x018,
+	[TEMPMONIDET2]		= 0x01c,
+	[TEMPH2NTHRE]		= 0x024,
+	[TEMPHTHRE]		= 0x028,
+	[TEMPCTHRE]		= 0x02c,
+	[TEMPOFFSETH]		= 0x030,
+	[TEMPOFFSETL]		= 0x034,
+	[TEMPMSRCTL0]		= 0x038,
+	[TEMPMSRCTL1]		= 0x03c,
+	[TEMPAHBPOLL]		= 0x040,
+	[TEMPAHBTO]		= 0x044,
+	[TEMPADCPNP0]		= 0x048,
+	[TEMPADCPNP1]		= 0x04c,
+	[TEMPADCPNP2]		= 0x050,
+	[TEMPADCMUX]		= 0x054,
+	[TEMPADCEXT]		= 0x058,
+	[TEMPADCEXT1]		= 0x05c,
+	[TEMPADCEN]		= 0x060,
+	[TEMPPNPMUXADDR]	= 0x064,
+	[TEMPADCMUXADDR]	= 0x068,
+	[TEMPADCEXTADDR]	= 0x06c,
+	[TEMPADCEXT1ADDR]	= 0x070,
+	[TEMPADCENADDR]		= 0x074,
+	[TEMPADCVALIDADDR]	= 0x078,
+	[TEMPADCVOLTADDR]	= 0x07c,
+	[TEMPRDCTRL]		= 0x080,
+	[TEMPADCVALIDMASK]	= 0x084,
+	[TEMPADCVOLTAGESHIFT]	= 0x088,
+	[TEMPADCWRITECTRL]	= 0x08c,
+	[TEMPMSR0]		= 0x090,
+	[TEMPMSR1]		= 0x094,
+	[TEMPMSR2]		= 0x098,
+	[TEMPADCHADDR]		= 0x09c,
+	[TEMPIMMD0]		= 0x0a0,
+	[TEMPIMMD1]		= 0x0a4,
+	[TEMPIMMD2]		= 0x0a8,
+	[TEMPMONIDET3]		= 0x0b0,
+	[TEMPADCPNP3]		= 0x0b4,
+	[TEMPMSR3]		= 0x0b8,
+	[TEMPIMMD3]		= 0x0bc,
+	[TEMPPROTCTL]		= 0x0c0,
+	[TEMPPROTTA]		= 0x0c4,
+	[TEMPPROTTB]		= 0x0c8,
+	[TEMPPROTTC]		= 0x0cc,
+	[TEMPSPARE0]		= 0x0f0,
+	[TEMPSPARE1]		= 0x0f4,
+	[TEMPSPARE2]		= 0x0f8,
+	[TEMPSPARE3]		= 0x0fc,
+	[TEMPMSR0_1]		= 0x190,
+	[TEMPMSR1_1]		= 0x194,
+	[TEMPMSR2_1]		= 0x198,
+	[TEMPMSR3_1]		= 0x1b8,
+	[DESCHAR]		= 0xc00,
+	[TEMPCHAR]		= 0xc04,
+	[DETCHAR]		= 0xc08,
+	[AGECHAR]		= 0xc0c,
+	[DCCONFIG]		= 0xc10,
+	[AGECONFIG]		= 0xc14,
+	[FREQPCT30]		= 0xc18,
+	[FREQPCT74]		= 0xc1c,
+	[LIMITVALS]		= 0xc20,
+	[VBOOT]			= 0xc24,
+	[DETWINDOW]		= 0xc28,
+	[CONFIG]		= 0xc2c,
+	[TSCALCS]		= 0xc30,
+	[RUNCONFIG]		= 0xc34,
+	[SVSEN]			= 0xc38,
+	[INIT2VALS]		= 0xc3c,
+	[DCVALUES]		= 0xc40,
+	[AGEVALUES]		= 0xc44,
+	[VOP30]			= 0xc48,
+	[VOP74]			= 0xc4c,
+	[TEMP]			= 0xc50,
+	[INTSTS]		= 0xc54,
+	[INTSTSRAW]		= 0xc58,
+	[INTEN]			= 0xc5c,
+	[CHKINT]		= 0xc60,
+	[CHKSHIFT]		= 0xc64,
+	[STATUS]		= 0xc68,
+	[VDESIGN30]		= 0xc6c,
+	[VDESIGN74]		= 0xc70,
+	[DVT30]			= 0xc74,
+	[DVT74]			= 0xc78,
+	[AGECOUNT]		= 0xc7c,
+	[SMSTATE0]		= 0xc80,
+	[SMSTATE1]		= 0xc84,
+	[CTL0]			= 0xc88,
+	[DESDETSEC]		= 0xce0,
+	[TEMPAGESEC]		= 0xce4,
+	[CTRLSPARE0]		= 0xcf0,
+	[CTRLSPARE1]		= 0xcf4,
+	[CTRLSPARE2]		= 0xcf8,
+	[CTRLSPARE3]		= 0xcfc,
+	[CORESEL]		= 0xf00,
+	[THERMINTST]		= 0xf04,
+	[INTST]			= 0xf08,
+	[THSTAGE0ST]		= 0xf0c,
+	[THSTAGE1ST]		= 0xf10,
+	[THSTAGE2ST]		= 0xf14,
+	[THAHBST0]		= 0xf18,
+	[THAHBST1]		= 0xf1c,
+	[SPARE0]		= 0xf20,
+	[SPARE1]		= 0xf24,
+	[SPARE2]		= 0xf28,
+	[SPARE3]		= 0xf2c,
+	[THSLPEVEB]		= 0xf30,
+};
+
+struct thermal_parameter {
+	int adc_ge_t;
+	int adc_oe_t;
+	int ge;
+	int oe;
+	int gain;
+	int o_vtsabb;
+	int o_vtsmcu1;
+	int o_vtsmcu2;
+	int o_vtsmcu3;
+	int o_vtsmcu4;
+	int o_vtsmcu5;
+	int degc_cali;
+	int adc_cali_en_t;
+	int o_slope;
+	int o_slope_sign;
+	int ts_id;
+};
+
+struct svs_bank_ops {
+	void (*set_freqs_pct)(struct mtk_svs *svs);
+	void (*get_vops)(struct mtk_svs *svs);
+};
+
+struct svs_bank {
+	struct svs_bank_ops *ops;
+	struct completion init_completion;
+	struct device *dev;
+	struct regulator *buck;
+	struct mutex lock;	/* Lock to protect update voltage process */
+	bool suspended;
+	bool mtcmos_request;
+	s32 volt_offset;
+	u32 mode_support;
+	u32 opp_freqs[16];
+	u32 freqs_pct[16];
+	u32 opp_volts[16];
+	u32 init02_volts[16];
+	u32 volts[16];
+	u32 reg_data[3][reg_num];
+	u32 freq_base;
+	u32 vboot;
+	u32 volt_step;
+	u32 volt_base;
+	u32 init01_volt_flag;
+	u32 phase;
+	u32 vmax;
+	u32 vmin;
+	u32 bts;
+	u32 mts;
+	u32 bdes;
+	u32 mdes;
+	u32 mtdes;
+	u32 dcbdet;
+	u32 dcmdet;
+	u32 dthi;
+	u32 dtlo;
+	u32 det_window;
+	u32 det_max;
+	u32 age_config;
+	u32 age_voffset_in;
+	u32 agem;
+	u32 dc_config;
+	u32 dc_voffset_in;
+	u32 dvt_fixed;
+	u32 vco;
+	u32 chk_shift;
+	u32 svs_temp;
+	u32 upper_temp_bound;
+	u32 lower_temp_bound;
+	u32 high_temp_threashold;
+	u32 high_temp_offset;
+	u32 low_temp_threashold;
+	u32 low_temp_offset;
+	u32 core_sel;
+	u32 opp_count;
+	u32 int_st;
+	u32 systemclk_en;
+	u32 sw_id;
+	u32 bank_id;
+	u32 ctl0;
+	u8 *of_compatible;
+	u8 *name;
+	u8 *tzone_name;
+	u8 *buck_name;
+};
+
+struct svs_platform {
+	struct svs_bank *banks;
+	bool (*efuse_parsing)(struct mtk_svs *svs);
+	bool fake_efuse;
+	bool need_hw_reset;
+	const u32 *regs;
+	unsigned long irqflags;
+	u32 bank_num;
+	u32 efuse_num;
+	u32 efuse_check;
+	u32 thermal_efuse_num;
+	u8 *name;
+};
+
+struct mtk_svs {
+	const struct svs_platform *platform;
+	struct svs_bank *bank;
+	struct device *dev;
+	void __iomem *base;
+	struct clk *main_clk;
+	u32 *efuse;
+	u32 *thermal_efuse;
+};
+
+unsigned long claim_mtk_svs_lock(void)
+	__acquires(&mtk_svs_lock)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&mtk_svs_lock, flags);
+
+	return flags;
+}
+EXPORT_SYMBOL_GPL(claim_mtk_svs_lock);
+
+void release_mtk_svs_lock(unsigned long flags)
+	__releases(&mtk_svs_lock)
+{
+	spin_unlock_irqrestore(&mtk_svs_lock, flags);
+}
+EXPORT_SYMBOL_GPL(release_mtk_svs_lock);
+
+static u32 percent(u32 numerator, u32 denominator)
+{
+	u32 pct;
+
+	/* If not divide 1000, "numerator * 100" would be data overflow. */
+	numerator /= 1000;
+	denominator /= 1000;
+	pct = ((numerator * 100) + denominator - 1) / denominator;
+	pct &= GENMASK(7, 0);
+
+	return pct;
+}
+
+static u32 svs_readl(struct mtk_svs *svs, enum reg_index rg_i)
+{
+	return readl(svs->base + svs->platform->regs[rg_i]);
+}
+
+static void svs_writel(struct mtk_svs *svs, u32 val, enum reg_index rg_i)
+{
+	writel(val, svs->base + svs->platform->regs[rg_i]);
+}
+
+static void svs_switch_bank(struct mtk_svs *svs)
+{
+	struct svs_bank *svsb = svs->bank;
+
+	svs_writel(svs, svsb->core_sel, CORESEL);
+}
+
+static u32 svsb_volt_to_opp_volt(u32 svsb_volt, u32 svsb_volt_step,
+				 u32 svsb_volt_base)
+{
+	u32 u_volt;
+
+	u_volt = (svsb_volt * svsb_volt_step) + svsb_volt_base;
+
+	return u_volt;
+}
+
+static int svsb_get_zone_temperature(struct svs_bank *svsb, int *tzone_temp)
+{
+	struct thermal_zone_device *tzd;
+
+	tzd = thermal_zone_get_zone_by_name(svsb->tzone_name);
+	if (IS_ERR(tzd))
+		return PTR_ERR(tzd);
+
+	return thermal_zone_get_temp(tzd, tzone_temp);
+}
+
+static int svsb_set_volts(struct svs_bank *svsb, bool force_update)
+{
+	u32 i, svsb_volt, opp_volt, temp_offset = 0;
+	int tzone_temp, ret;
+
+	mutex_lock(&svsb->lock);
+
+	/*
+	 * If bank is suspended, it means signed-off voltages are applied.
+	 * Don't need to update opp voltage anymore.
+	 */
+	if (svsb->suspended && !force_update) {
+		pr_notice("%s: bank is suspended\n", svsb->name);
+		mutex_unlock(&svsb->lock);
+		return -EPERM;
+	}
+
+	/* Get thermal effect */
+	if (svsb->phase == SVSB_PHASE_MON) {
+		if (svsb->svs_temp > svsb->upper_temp_bound &&
+		    svsb->svs_temp < svsb->lower_temp_bound) {
+			pr_err("%s: svs_temp is abnormal (0x%x)?\n",
+			       svsb->name, svsb->svs_temp);
+			mutex_unlock(&svsb->lock);
+			return -EINVAL;
+		}
+
+		ret = svsb_get_zone_temperature(svsb, &tzone_temp);
+		if (ret) {
+			pr_err("%s: cannot get zone \"%s\" temperature(%d)\n",
+			       svsb->name, svsb->tzone_name, ret);
+			pr_err("%s: set signed-off voltage this time.\n",
+			       svsb->name);
+			svsb->phase = SVSB_PHASE_ERROR;
+		}
+
+		if (tzone_temp >= svsb->high_temp_threashold)
+			temp_offset += svsb->high_temp_offset;
+
+		if (tzone_temp <= svsb->low_temp_threashold)
+			temp_offset += svsb->low_temp_offset;
+	}
+
+	/* vmin <= svsb_volt (opp_volt) <= signed-off voltage */
+	for (i = 0; i < svsb->opp_count; i++) {
+		if (svsb->phase == SVSB_PHASE_MON) {
+			svsb_volt = max((svsb->volts[i] + svsb->volt_offset +
+					 temp_offset), svsb->vmin);
+			opp_volt = svsb_volt_to_opp_volt(svsb_volt,
+							 svsb->volt_step,
+							 svsb->volt_base);
+		} else if (svsb->phase == SVSB_PHASE_INIT02) {
+			svsb_volt = max((svsb->init02_volts[i] +
+					 svsb->volt_offset), svsb->vmin);
+			opp_volt = svsb_volt_to_opp_volt(svsb_volt,
+							 svsb->volt_step,
+							 svsb->volt_base);
+		} else if (svsb->phase == SVSB_PHASE_ERROR) {
+			opp_volt = svsb->opp_volts[i];
+		} else {
+			pr_err("%s: unknown phase: %u?\n",
+			       svsb->name, svsb->phase);
+			mutex_unlock(&svsb->lock);
+			return -EINVAL;
+		}
+
+		opp_volt = min(opp_volt, svsb->opp_volts[i]);
+		ret = dev_pm_opp_adjust_voltage(svsb->dev, svsb->opp_freqs[i],
+						opp_volt, opp_volt,
+						svsb->opp_volts[i]);
+		if (ret) {
+			pr_err("%s: set voltage failed: %d\n", svsb->name, ret);
+			mutex_unlock(&svsb->lock);
+			return ret;
+		}
+	}
+
+	mutex_unlock(&svsb->lock);
+
+	return 0;
+}
+
+static u32 interpolate(u32 f0, u32 f1, u32 v0, u32 v1, u32 fx)
+{
+	u32 vy;
+
+	if (v0 == v1 || f0 == f1)
+		return v0;
+
+	/* *100 to have decimal fraction factor, +99 for rounding up. */
+	vy = (v0 * 100) - ((((v0 - v1) * 100) / (f0 - f1)) * (f0 - fx));
+	vy = (vy + 99) / 100;
+
+	return vy;
+}
+
+static void svs_get_vops_v2(struct mtk_svs *svs)
+{
+	struct svs_bank *svsb = svs->bank;
+	u32 temp, i;
+
+	temp = svs_readl(svs, VOP30);
+	svsb->volts[6] = (temp >> 24) & GENMASK(7, 0);
+	svsb->volts[4] = (temp >> 16) & GENMASK(7, 0);
+	svsb->volts[2] = (temp >> 8)  & GENMASK(7, 0);
+	svsb->volts[0] = (temp & GENMASK(7, 0));
+
+	temp = svs_readl(svs, VOP74);
+	svsb->volts[14] = (temp >> 24) & GENMASK(7, 0);
+	svsb->volts[12] = (temp >> 16) & GENMASK(7, 0);
+	svsb->volts[10] = (temp >> 8)  & GENMASK(7, 0);
+	svsb->volts[8] = (temp & GENMASK(7, 0));
+
+	for (i = 0; i <= 7; i++) {
+		if (i < 7) {
+			svsb->volts[(i * 2) + 1] =
+				interpolate(svsb->freqs_pct[i * 2],
+					    svsb->freqs_pct[(i + 1) * 2],
+					    svsb->volts[i * 2],
+					    svsb->volts[(i + 1) * 2],
+					    svsb->freqs_pct[(i * 2) + 1]);
+		} else if (i == 7) {
+			svsb->volts[(i * 2) + 1] =
+				interpolate(svsb->freqs_pct[(i - 1) * 2],
+					    svsb->freqs_pct[i * 2],
+					    svsb->volts[(i - 1) * 2],
+					    svsb->volts[i * 2],
+					    svsb->freqs_pct[(i * 2) + 1]);
+		}
+	}
+}
+
+static void svs_set_freqs_pct_v2(struct mtk_svs *svs)
+{
+	struct svs_bank *svsb = svs->bank;
+
+	svs_writel(svs,
+		   ((svsb->freqs_pct[6] << 24) & GENMASK(31, 24)) |
+		   ((svsb->freqs_pct[4] << 16) & GENMASK(23, 16)) |
+		   ((svsb->freqs_pct[2] << 8) & GENMASK(15, 8)) |
+		   (svsb->freqs_pct[0] & GENMASK(7, 0)),
+		   FREQPCT30);
+	svs_writel(svs,
+		   ((svsb->freqs_pct[14] << 24) & GENMASK(31, 24)) |
+		   ((svsb->freqs_pct[12] << 16) & GENMASK(23, 16)) |
+		   ((svsb->freqs_pct[10] << 8) & GENMASK(15, 8)) |
+		   ((svsb->freqs_pct[8]) & GENMASK(7, 0)),
+		   FREQPCT74);
+}
+
+static void svs_set_phase(struct mtk_svs *svs, u32 target_phase)
+{
+	struct svs_bank *svsb = svs->bank;
+	u32 des_char, temp_char, det_char, limit_vals;
+	u32 init2vals, ts_calcs, val, filter, i;
+
+	svs_switch_bank(svs);
+
+	des_char = ((svsb->bdes << 8) & GENMASK(15, 8)) |
+		   (svsb->mdes & GENMASK(7, 0));
+	svs_writel(svs, des_char, DESCHAR);
+
+	temp_char = ((svsb->vco << 16) & GENMASK(23, 16)) |
+		    ((svsb->mtdes << 8) & GENMASK(15, 8)) |
+		    (svsb->dvt_fixed & GENMASK(7, 0));
+	svs_writel(svs, temp_char, TEMPCHAR);
+
+	det_char = ((svsb->dcbdet << 8) & GENMASK(15, 8)) |
+		   (svsb->dcmdet & GENMASK(7, 0));
+	svs_writel(svs, det_char, DETCHAR);
+
+	svs_writel(svs, svsb->dc_config, DCCONFIG);
+	svs_writel(svs, svsb->age_config, AGECONFIG);
+
+	if (!svsb->agem) {
+		svs_writel(svs, RUNCONFIG_DEFAULT, RUNCONFIG);
+	} else {
+		val = 0x0;
+
+		for (i = 0; i < 24; i += 2) {
+			filter = 0x3 << i;
+
+			if (!(svsb->age_config & filter))
+				val |= (0x1 << i);
+			else
+				val |= (svsb->age_config & filter);
+		}
+		svs_writel(svs, val, RUNCONFIG);
+	}
+
+	svsb->ops->set_freqs_pct(svs);
+
+	limit_vals = ((svsb->vmax << 24) & GENMASK(31, 24)) |
+		     ((svsb->vmin << 16) & GENMASK(23, 16)) |
+		     ((svsb->dthi << 8) & GENMASK(15, 8)) |
+		     (svsb->dtlo & GENMASK(7, 0));
+	svs_writel(svs, limit_vals, LIMITVALS);
+	svs_writel(svs, (svsb->vboot & GENMASK(7, 0)), VBOOT);
+	svs_writel(svs, (svsb->det_window & GENMASK(15, 0)), DETWINDOW);
+	svs_writel(svs, (svsb->det_max & GENMASK(15, 0)), CONFIG);
+
+	if (svsb->chk_shift)
+		svs_writel(svs, (svsb->chk_shift & GENMASK(7, 0)), CHKSHIFT);
+
+	if (svsb->ctl0)
+		svs_writel(svs, svsb->ctl0, CTL0);
+
+	svs_writel(svs, INTSTS_CLEAN, INTSTS);
+
+	switch (target_phase) {
+	case SVSB_PHASE_INIT01:
+		svs_writel(svs, INTEN_INIT0x, INTEN);
+		svs_writel(svs, SVSEN_INIT01, SVSEN);
+		break;
+	case SVSB_PHASE_INIT02:
+		svs_writel(svs, INTEN_INIT0x, INTEN);
+		init2vals = ((svsb->age_voffset_in << 16) & GENMASK(31, 16)) |
+			    (svsb->dc_voffset_in & GENMASK(15, 0));
+		svs_writel(svs, init2vals, INIT2VALS);
+		svs_writel(svs, SVSEN_INIT02, SVSEN);
+		break;
+	case SVSB_PHASE_MON:
+		ts_calcs = ((svsb->bts << 12) & GENMASK(23, 12)) |
+			   (svsb->mts & GENMASK(11, 0));
+		svs_writel(svs, ts_calcs, TSCALCS);
+		svs_writel(svs, INTEN_MONVOPEN, INTEN);
+		svs_writel(svs, SVSEN_MON, SVSEN);
+		break;
+	default:
+		WARN_ON(1);
+		break;
+	}
+}
+
+static inline void svs_init01_isr_handler(struct mtk_svs *svs)
+{
+	struct svs_bank *svsb = svs->bank;
+	enum reg_index rg_i;
+
+	pr_notice("%s: %s: VDN74:0x%08x, VDN30:0x%08x, DCVALUES:0x%08x\n",
+		  svsb->name, __func__, svs_readl(svs, VDESIGN74),
+		  svs_readl(svs, VDESIGN30), svs_readl(svs, DCVALUES));
+
+	for (rg_i = TEMPMONCTL0; rg_i < reg_num; rg_i++)
+		svsb->reg_data[SVSB_PHASE_INIT01][rg_i] = svs_readl(svs, rg_i);
+
+	svsb->phase = SVSB_PHASE_INIT01;
+	svsb->dc_voffset_in = ~(svs_readl(svs, DCVALUES) & GENMASK(15, 0)) + 1;
+	if (svsb->init01_volt_flag == SVSB_INIT01_VOLT_IGNORE)
+		svsb->dc_voffset_in = 0;
+	else if ((svsb->dc_voffset_in & DC_SIGNED_BIT) &&
+		 (svsb->init01_volt_flag == SVSB_INIT01_VOLT_INC_ONLY))
+		svsb->dc_voffset_in = 0;
+
+	svsb->age_voffset_in = svs_readl(svs, AGEVALUES) & GENMASK(15, 0);
+
+	svs_writel(svs, SVSEN_OFF, SVSEN);
+	svs_writel(svs, INTSTS_COMPLETE, INTSTS);
+
+	/* svs init01 clock gating */
+	svsb->core_sel &= ~svsb->systemclk_en;
+	complete(&svsb->init_completion);
+}
+
+static inline void svs_init02_isr_handler(struct mtk_svs *svs)
+{
+	struct svs_bank *svsb = svs->bank;
+	enum reg_index rg_i;
+
+	pr_notice("%s: %s: VOP74:0x%08x, VOP30:0x%08x, DCVALUES:0x%08x\n",
+		  svsb->name, __func__, svs_readl(svs, VOP74),
+		  svs_readl(svs, VOP30), svs_readl(svs, DCVALUES));
+
+	for (rg_i = TEMPMONCTL0; rg_i < reg_num; rg_i++)
+		svsb->reg_data[SVSB_PHASE_INIT02][rg_i] = svs_readl(svs, rg_i);
+
+	svsb->phase = SVSB_PHASE_INIT02;
+	svsb->ops->get_vops(svs);
+	memcpy(svsb->init02_volts, svsb->volts, sizeof(u32) * svsb->opp_count);
+
+	svs_writel(svs, SVSEN_OFF, SVSEN);
+	svs_writel(svs, INTSTS_COMPLETE, INTSTS);
+
+	complete(&svsb->init_completion);
+}
+
+static inline void svs_mon_mode_isr_handler(struct mtk_svs *svs)
+{
+	struct svs_bank *svsb = svs->bank;
+	enum reg_index rg_i;
+
+	for (rg_i = TEMPMONCTL0; rg_i < reg_num; rg_i++)
+		svsb->reg_data[SVSB_PHASE_MON][rg_i] = svs_readl(svs, rg_i);
+
+	svsb->phase = SVSB_PHASE_MON;
+	svsb->svs_temp = svs_readl(svs, TEMP) & GENMASK(7, 0);
+	svsb->ops->get_vops(svs);
+
+	svs_writel(svs, INTSTS_MONVOP, INTSTS);
+}
+
+static inline void svs_error_isr_handler(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb = svs->bank;
+	enum reg_index rg_i;
+
+	pr_err("%s(): %s(%s)", __func__, svsp->name, svsb->name);
+	pr_err("CORESEL(0x%x) = 0x%08x\n",
+	       svsp->regs[CORESEL], svs_readl(svs, CORESEL)),
+	pr_err("SVSEN(0x%x) = 0x%08x, INTSTS(0x%x) = 0x%08x\n",
+	       svsp->regs[SVSEN], svs_readl(svs, SVSEN),
+	       svsp->regs[INTSTS], svs_readl(svs, INTSTS));
+	pr_err("SMSTATE0(0x%x) = 0x%08x, SMSTATE1(0x%x) = 0x%08x\n",
+	       svsp->regs[SMSTATE0], svs_readl(svs, SMSTATE0),
+	       svsp->regs[SMSTATE1], svs_readl(svs, SMSTATE1));
+	pr_err("TEMP(0x%x) = 0x%08x, TEMPMSR0(0x%x) = 0x%08x\n",
+	       svsp->regs[TEMP], svs_readl(svs, TEMP),
+	       svsp->regs[TEMPMSR0], svs_readl(svs, TEMPMSR0));
+	pr_err("TEMPMSR1(0x%x) = 0x%08x, TEMPMSR2(0x%x) = 0x%08x\n",
+	       svsp->regs[TEMPMSR1], svs_readl(svs, TEMPMSR1),
+	       svsp->regs[TEMPMSR2], svs_readl(svs, TEMPMSR2));
+	pr_err("TEMPMONCTL0(0x%x) = 0x%08x, TEMPMSRCTL1(0x%x) = 0x%08x\n",
+	       svsp->regs[TEMPMONCTL0], svs_readl(svs, TEMPMONCTL0),
+	       svsp->regs[TEMPMSRCTL1], svs_readl(svs, TEMPMSRCTL1));
+
+	for (rg_i = TEMPMONCTL0; rg_i < reg_num; rg_i++)
+		svsb->reg_data[SVSB_PHASE_MON][rg_i] = svs_readl(svs, rg_i);
+
+	svsb->mode_support = SVSB_MODE_ALL_DISABLE;
+
+	if (svsb->phase != SVSB_PHASE_INIT01)
+		svsb->phase = SVSB_PHASE_ERROR;
+
+	svs_writel(svs, SVSEN_OFF, SVSEN);
+	svs_writel(svs, INTSTS_CLEAN, INTSTS);
+}
+
+static irqreturn_t svs_isr(int irq, void *data)
+{
+	struct mtk_svs *svs = (struct mtk_svs *)data;
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb = NULL;
+	unsigned long flags;
+	u32 idx, int_sts, svs_en;
+
+	flags = claim_mtk_svs_lock();
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svs->bank = svsb;
+
+		if (svsb->int_st & svs_readl(svs, INTST))
+			continue;
+
+		if (!svsb->suspended) {
+			svs_switch_bank(svs);
+			int_sts = svs_readl(svs, INTSTS);
+			svs_en = svs_readl(svs, SVSEN);
+
+			if (int_sts == INTSTS_COMPLETE &&
+			    ((svs_en & SVSEN_MASK) == SVSEN_INIT01))
+				svs_init01_isr_handler(svs);
+			else if ((int_sts == INTSTS_COMPLETE) &&
+				 ((svs_en & SVSEN_MASK) == SVSEN_INIT02))
+				svs_init02_isr_handler(svs);
+			else if (!!(int_sts & INTSTS_MONVOP))
+				svs_mon_mode_isr_handler(svs);
+			else
+				svs_error_isr_handler(svs);
+		}
+
+		break;
+	}
+	release_mtk_svs_lock(flags);
+
+	if (svsb->phase != SVSB_PHASE_INIT01)
+		svsb_set_volts(svsb, false);
+
+	return IRQ_HANDLED;
+}
+
+static void svs_mon_mode(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	unsigned long flags;
+	u32 idx;
+
+	flags = claim_mtk_svs_lock();
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svs->bank = svsb;
+
+		if (!(svsb->mode_support & SVSB_MODE_MON))
+			continue;
+
+		svs_set_phase(svs, SVSB_PHASE_MON);
+	}
+	release_mtk_svs_lock(flags);
+}
+
+static int svs_init02(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	unsigned long flags, time_left;
+	u32 idx;
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svs->bank = svsb;
+
+		if (!(svsb->mode_support & SVSB_MODE_INIT02))
+			continue;
+
+		reinit_completion(&svsb->init_completion);
+		flags = claim_mtk_svs_lock();
+		svs_set_phase(svs, SVSB_PHASE_INIT02);
+		release_mtk_svs_lock(flags);
+		time_left =
+			wait_for_completion_timeout(&svsb->init_completion,
+						    msecs_to_jiffies(2000));
+		if (!time_left) {
+			pr_err("%s: init02 completion timeout\n", svsb->name);
+			return -EBUSY;
+		}
+	}
+
+	return 0;
+}
+
+static int svs_init01(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	struct pm_qos_request *qos_request;
+	unsigned long flags, time_left;
+	bool search_done;
+	int ret;
+	u32 opp_freqs, opp_vboot, buck_volt, idx, i;
+
+	qos_request = kzalloc(sizeof(*qos_request), GFP_KERNEL);
+	if (!qos_request)
+		return -ENOMEM;
+
+	/* Let CPUs leave idle-off state for initializing svs_init01. */
+	pm_qos_add_request(qos_request, PM_QOS_CPU_DMA_LATENCY, 0);
+
+	/*
+	 * Sometimes two svs banks use the same buck.
+	 * Therefore, we set each svs bank to vboot voltage first.
+	 */
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		search_done = false;
+
+		ret = regulator_set_mode(svsb->buck, REGULATOR_MODE_FAST);
+		if (ret)
+			pr_notice("%s: fail to set fast mode: %d\n",
+				  svsb->name, ret);
+
+		if (svsb->mtcmos_request) {
+			ret = regulator_enable(svsb->buck);
+			if (ret) {
+				pr_err("%s: fail to enable %s power: %d\n",
+				       svsb->name, svsb->buck_name, ret);
+				goto init01_finish;
+			}
+
+			ret = dev_pm_domain_attach(svsb->dev, false);
+			if (ret) {
+				pr_err("%s: attach pm domain fail: %d\n",
+				       svsb->name, ret);
+				goto init01_finish;
+			}
+
+			pm_runtime_enable(svsb->dev);
+			ret = pm_runtime_get_sync(svsb->dev);
+			if (ret < 0) {
+				pr_err("%s: turn mtcmos on fail: %d\n",
+				       svsb->name, ret);
+				goto init01_finish;
+			}
+		}
+
+		/*
+		 * Find the fastest freq that can be run at vboot and
+		 * fix to that freq until svs_init01 is done.
+		 */
+		opp_vboot = svsb_volt_to_opp_volt(svsb->vboot,
+						  svsb->volt_step,
+						  svsb->volt_base);
+
+		for (i = 0; i < svsb->opp_count; i++) {
+			opp_freqs = svsb->opp_freqs[i];
+			if (!search_done && svsb->opp_volts[i] <= opp_vboot) {
+				ret = dev_pm_opp_adjust_voltage(svsb->dev,
+								opp_freqs,
+								opp_vboot,
+								opp_vboot,
+								opp_vboot);
+				if (ret) {
+					pr_err("%s: set voltage failed: %d\n",
+					       svsb->name, ret);
+					goto init01_finish;
+				}
+
+				search_done = true;
+			} else {
+				dev_pm_opp_disable(svsb->dev,
+						   svsb->opp_freqs[i]);
+			}
+		}
+	}
+
+	/* svs bank init01 begins */
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svs->bank = svsb;
+
+		if (!(svsb->mode_support & SVSB_MODE_INIT01))
+			continue;
+
+		opp_vboot = svsb_volt_to_opp_volt(svsb->vboot,
+						  svsb->volt_step,
+						  svsb->volt_base);
+
+		buck_volt = regulator_get_voltage(svsb->buck);
+		if (buck_volt != opp_vboot) {
+			pr_err("%s: buck voltage: %u, expected vboot: %u\n",
+			       svsb->name, buck_volt, opp_vboot);
+			ret = -EPERM;
+			goto init01_finish;
+		}
+
+		init_completion(&svsb->init_completion);
+		flags = claim_mtk_svs_lock();
+		svs_set_phase(svs, SVSB_PHASE_INIT01);
+		release_mtk_svs_lock(flags);
+		time_left =
+			wait_for_completion_timeout(&svsb->init_completion,
+						    msecs_to_jiffies(2000));
+		if (!time_left) {
+			pr_err("%s: init01 completion timeout\n", svsb->name);
+			ret = -EBUSY;
+			goto init01_finish;
+		}
+	}
+
+init01_finish:
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+
+		for (i = 0; i < svsb->opp_count; i++)
+			dev_pm_opp_enable(svsb->dev, svsb->opp_freqs[i]);
+
+		if (regulator_set_mode(svsb->buck, REGULATOR_MODE_NORMAL))
+			pr_notice("%s: fail to set normal mode: %d\n",
+				  svsb->name, ret);
+
+		if (svsb->mtcmos_request) {
+			if (pm_runtime_put_sync(svsb->dev))
+				pr_err("%s: turn mtcmos off fail: %d\n",
+				       svsb->name, ret);
+			pm_runtime_disable(svsb->dev);
+			dev_pm_domain_detach(svsb->dev, 0);
+			if (regulator_disable(svsb->buck))
+				pr_err("%s: fail to disable %s power: %d\n",
+				       svsb->name, svsb->buck_name, ret);
+		}
+	}
+
+	pm_qos_remove_request(qos_request);
+	kfree(qos_request);
+
+	return ret;
+}
+
+static int svs_start(struct mtk_svs *svs)
+{
+	int ret;
+
+	ret = svs_init01(svs);
+	if (ret)
+		return ret;
+
+	ret = svs_init02(svs);
+	if (ret)
+		return ret;
+
+	svs_mon_mode(svs);
+
+	return ret;
+}
+
+static bool svs_mt8183_efuse_parsing(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct thermal_parameter tp;
+	struct svs_bank *svsb;
+	bool mon_mode_support = true;
+	int format[6], x_roomt[6], tb_roomt = 0;
+	struct nvmem_cell *cell;
+	size_t len;
+	u32 idx, i, ft_pgm, mts, temp0, temp1, temp2;
+
+	if (svsp->fake_efuse) {
+		pr_notice("fake efuse\n");
+		svs->efuse[0] = 0x00310080;
+		svs->efuse[1] = 0xabfbf757;
+		svs->efuse[2] = 0x47c747c7;
+		svs->efuse[3] = 0xabfbf757;
+		svs->efuse[4] = 0xe7fca0ec;
+		svs->efuse[5] = 0x47bf4b88;
+		svs->efuse[6] = 0xabfb8fa5;
+		svs->efuse[7] = 0xabfb217b;
+		svs->efuse[8] = 0x4bf34be1;
+		svs->efuse[9] = 0xabfb670d;
+		svs->efuse[16] = 0xabfbc653;
+		svs->efuse[17] = 0x47f347e1;
+		svs->efuse[18] = 0xabfbd848;
+	}
+
+	for (i = 0; i < svsp->efuse_num; i++)
+		if (svs->efuse[i])
+			pr_notice("M_HW_RES%d: 0x%08x\n", i, svs->efuse[i]);
+
+	/* svs efuse parsing */
+	ft_pgm = (svs->efuse[0] >> 4) & GENMASK(3, 0);
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		if (ft_pgm <= 1)
+			svsb->init01_volt_flag = SVSB_INIT01_VOLT_IGNORE;
+
+		switch (svsb->sw_id) {
+		case SVS_CPU_LITTLE:
+			svsb->bdes = svs->efuse[16] & GENMASK(7, 0);
+			svsb->mdes = (svs->efuse[16] >> 8) & GENMASK(7, 0);
+			svsb->dcbdet = (svs->efuse[16] >> 16) & GENMASK(7, 0);
+			svsb->dcmdet = (svs->efuse[16] >> 24) & GENMASK(7, 0);
+			svsb->mtdes  = (svs->efuse[17] >> 16) & GENMASK(7, 0);
+
+			if (ft_pgm <= 3)
+				svsb->volt_offset += 10;
+			else
+				svsb->volt_offset += 2;
+			break;
+		case SVS_CPU_BIG:
+			svsb->bdes = svs->efuse[18] & GENMASK(7, 0);
+			svsb->mdes = (svs->efuse[18] >> 8) & GENMASK(7, 0);
+			svsb->dcbdet = (svs->efuse[18] >> 16) & GENMASK(7, 0);
+			svsb->dcmdet = (svs->efuse[18] >> 24) & GENMASK(7, 0);
+			svsb->mtdes  = svs->efuse[17] & GENMASK(7, 0);
+
+			if (ft_pgm <= 3)
+				svsb->volt_offset += 15;
+			else
+				svsb->volt_offset += 12;
+			break;
+		case SVS_CCI:
+			svsb->bdes = svs->efuse[4] & GENMASK(7, 0);
+			svsb->mdes = (svs->efuse[4] >> 8) & GENMASK(7, 0);
+			svsb->dcbdet = (svs->efuse[4] >> 16) & GENMASK(7, 0);
+			svsb->dcmdet = (svs->efuse[4] >> 24) & GENMASK(7, 0);
+			svsb->mtdes  = (svs->efuse[5] >> 16) & GENMASK(7, 0);
+
+			if (ft_pgm <= 3)
+				svsb->volt_offset += 10;
+			else
+				svsb->volt_offset += 2;
+			break;
+		case SVS_GPU:
+			svsb->bdes = svs->efuse[6] & GENMASK(7, 0);
+			svsb->mdes = (svs->efuse[6] >> 8) & GENMASK(7, 0);
+			svsb->dcbdet = (svs->efuse[6] >> 16) & GENMASK(7, 0);
+			svsb->dcmdet = (svs->efuse[6] >> 24) & GENMASK(7, 0);
+			svsb->mtdes  = svs->efuse[5] & GENMASK(7, 0);
+
+			if (ft_pgm >= 2) {
+				svsb->freq_base = 800000000; /* 800MHz */
+				svsb->dvt_fixed = 2;
+			}
+			break;
+		default:
+			break;
+		}
+	}
+
+	if (svsp->fake_efuse) {
+		svs->thermal_efuse[0] = 0x02873f69;
+		svs->thermal_efuse[1] = 0xa11d9142;
+		svs->thermal_efuse[2] = 0xa2526900;
+	} else {
+		/* Get thermal efuse by nvmem */
+		cell = nvmem_cell_get(svs->dev, "calibration-data");
+		if (IS_ERR(cell)) {
+			pr_err("no thermal efuse? disable mon mode\n");
+			for (idx = 0; idx < svsp->bank_num; idx++) {
+				svsb = &svsp->banks[idx];
+				svsb->mode_support &= ~SVSB_MODE_MON;
+			}
+
+			return true;
+		}
+
+		svs->thermal_efuse = (u32 *)nvmem_cell_read(cell, &len);
+		nvmem_cell_put(cell);
+	}
+
+	/* Thermal efuse parsing */
+	tp.adc_ge_t = (svs->thermal_efuse[1] >> 22) & GENMASK(9, 0);
+	tp.adc_oe_t = (svs->thermal_efuse[1] >> 12) & GENMASK(9, 0);
+
+	tp.o_vtsmcu1 = (svs->thermal_efuse[0] >> 17) & GENMASK(8, 0);
+	tp.o_vtsmcu2 = (svs->thermal_efuse[0] >> 8) & GENMASK(8, 0);
+	tp.o_vtsmcu3 = svs->thermal_efuse[1] & GENMASK(8, 0);
+	tp.o_vtsmcu4 = (svs->thermal_efuse[2] >> 23) & GENMASK(8, 0);
+	tp.o_vtsmcu5 = (svs->thermal_efuse[2] >> 5) & GENMASK(8, 0);
+	tp.o_vtsabb = (svs->thermal_efuse[2] >> 14) & GENMASK(8, 0);
+
+	tp.degc_cali = (svs->thermal_efuse[0] >> 1) & GENMASK(5, 0);
+	tp.adc_cali_en_t = svs->thermal_efuse[0] & BIT(0);
+	tp.o_slope_sign = (svs->thermal_efuse[0] >> 7) & BIT(0);
+
+	tp.ts_id = (svs->thermal_efuse[1] >> 9) & BIT(0);
+	tp.o_slope = (svs->thermal_efuse[0] >> 26) & GENMASK(5, 0);
+
+	if (tp.adc_cali_en_t == 1) {
+		if (!tp.ts_id)
+			tp.o_slope = 0;
+
+		if ((tp.adc_ge_t < 265 || tp.adc_ge_t > 758) ||
+		    (tp.adc_oe_t < 265 || tp.adc_oe_t > 758) ||
+		    (tp.o_vtsmcu1 < -8 || tp.o_vtsmcu1 > 484) ||
+		    (tp.o_vtsmcu2 < -8 || tp.o_vtsmcu2 > 484) ||
+		    (tp.o_vtsmcu3 < -8 || tp.o_vtsmcu3 > 484) ||
+		    (tp.o_vtsmcu4 < -8 || tp.o_vtsmcu4 > 484) ||
+		    (tp.o_vtsmcu5 < -8 || tp.o_vtsmcu5 > 484) ||
+		    (tp.o_vtsabb < -8 || tp.o_vtsabb > 484) ||
+		    (tp.degc_cali < 1 || tp.degc_cali > 63)) {
+			pr_err("bad thermal efuse data, disable mon mode\n");
+			mon_mode_support = false;
+		}
+	} else {
+		pr_err("no thermal efuse data, disable mon mode\n");
+		mon_mode_support = false;
+	}
+
+	if (!mon_mode_support) {
+		for (idx = 0; idx < svsp->bank_num; idx++) {
+			svsb = &svsp->banks[idx];
+			svsb->mode_support &= ~SVSB_MODE_MON;
+		}
+
+		return true;
+	}
+
+	tp.ge = ((tp.adc_ge_t - 512) * 10000) / 4096;
+	tp.oe = (tp.adc_oe_t - 512);
+	tp.gain = (10000 + tp.ge);
+
+	format[0] = (tp.o_vtsmcu1 + 3350 - tp.oe);
+	format[1] = (tp.o_vtsmcu2 + 3350 - tp.oe);
+	format[2] = (tp.o_vtsmcu3 + 3350 - tp.oe);
+	format[3] = (tp.o_vtsmcu4 + 3350 - tp.oe);
+	format[4] = (tp.o_vtsmcu5 + 3350 - tp.oe);
+	format[5] = (tp.o_vtsabb + 3350 - tp.oe);
+
+	for (i = 0; i < 6; i++)
+		x_roomt[i] = (((format[i] * 10000) / 4096) * 10000) / tp.gain;
+
+	temp0 = (10000 * 100000 / tp.gain) * 15 / 18;
+
+	if (!tp.o_slope_sign)
+		mts = (temp0 * 10) / (1534 + tp.o_slope * 10);
+	else
+		mts = (temp0 * 10) / (1534 - tp.o_slope * 10);
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svsb->mts = mts;
+
+		switch (svsb->sw_id) {
+		case SVS_CPU_LITTLE:
+			tb_roomt = x_roomt[3];
+			break;
+		case SVS_CPU_BIG:
+			tb_roomt = x_roomt[4];
+			break;
+		case SVS_CCI:
+			tb_roomt = x_roomt[3];
+			break;
+		case SVS_GPU:
+			tb_roomt = x_roomt[1];
+			break;
+		default:
+			break;
+		}
+
+		temp0 = (tp.degc_cali * 10 / 2);
+		temp1 = ((10000 * 100000 / 4096 / tp.gain) *
+			 tp.oe + tb_roomt * 10) * 15 / 18;
+
+		if (!tp.o_slope_sign)
+			temp2 = temp1 * 100 / (1534 + tp.o_slope * 10);
+		else
+			temp2 = temp1 * 100 / (1534 - tp.o_slope * 10);
+
+		svsb->bts = (temp0 + temp2 - 250) * 4 / 10;
+	}
+
+	return true;
+}
+
+static bool svs_is_supported(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct nvmem_cell *cell;
+	size_t len;
+	bool ret;
+
+	if (svsp->fake_efuse) {
+		len = svsp->efuse_num * sizeof(u32);
+		svs->efuse = devm_kzalloc(svs->dev, len, GFP_KERNEL);
+		if (!svs->efuse) {
+			pr_err("no memory for allocating svs_efuse\n");
+			return false;
+		}
+
+		len = svsp->thermal_efuse_num * sizeof(u32);
+		svs->thermal_efuse = devm_kzalloc(svs->dev, len, GFP_KERNEL);
+		if (!svs->thermal_efuse) {
+			pr_err("no memory for allocating svs_thermal_efuse\n");
+			return false;
+		}
+
+		goto svsp_efuse_parsing;
+	}
+
+	/* Get svs efuse by nvmem */
+	cell = nvmem_cell_get(svs->dev, "svs-calibration-data");
+	if (IS_ERR(cell)) {
+		pr_err("no \"svs-calibration-data\" from dts? disable svs\n");
+		return false;
+	}
+
+	svs->efuse = (u32 *)nvmem_cell_read(cell, &len);
+	nvmem_cell_put(cell);
+
+	if (!svs->efuse[svsp->efuse_check]) {
+		pr_err("svs_efuse[%u] = 0x%x?\n",
+		       svsp->efuse_check, svs->efuse[svsp->efuse_check]);
+		return false;
+	}
+
+svsp_efuse_parsing:
+	ret = svsp->efuse_parsing(svs);
+
+	return ret;
+}
+
+static int svs_resource_setup(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	struct platform_device *pdev;
+	struct device_node *np = NULL;
+	struct dev_pm_opp *opp;
+	unsigned long freq;
+	int count, ret;
+	u32 idx, i;
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+
+		switch (svsb->sw_id) {
+		case SVS_CPU_LITTLE:
+			svsb->name = "SVS_CPU_LITTLE";
+			break;
+		case SVS_CPU_BIG:
+			svsb->name = "SVS_CPU_BIG";
+			break;
+		case SVS_CCI:
+			svsb->name = "SVS_CCI";
+			break;
+		case SVS_GPU:
+			svsb->name = "SVS_GPU";
+			break;
+		default:
+			WARN_ON(1);
+			return -EINVAL;
+		}
+
+		/* Add svs bank device for opp-table/mtcmos/buck control */
+		pdev = platform_device_alloc(svsb->name, 0);
+		if (!pdev) {
+			pr_err("%s: fail to alloc pdev for svs_bank\n",
+			       svsb->name);
+			return -ENOMEM;
+		}
+
+		for_each_child_of_node(svs->dev->of_node, np) {
+			if (of_device_is_compatible(np, svsb->of_compatible)) {
+				pdev->dev.of_node = np;
+				break;
+			}
+		}
+
+		ret = platform_device_add(pdev);
+		if (ret) {
+			pr_err("%s: fail to add svs_bank device: %d\n",
+			       svsb->name, ret);
+			return ret;
+		}
+
+		svsb->dev = &pdev->dev;
+		dev_set_drvdata(svsb->dev, svs);
+		ret = dev_pm_opp_of_add_table(svsb->dev);
+		if (ret) {
+			pr_err("%s: fail to add opp table: %d\n",
+			       svsb->name, ret);
+			return ret;
+		}
+
+		mutex_init(&svsb->lock);
+
+		svsb->buck = devm_regulator_get_optional(svsb->dev,
+							 svsb->buck_name);
+		if (IS_ERR(svsb->buck)) {
+			pr_err("%s: cannot get regulator \"%s-supply\"\n",
+			       svsb->name, svsb->buck_name);
+			return PTR_ERR(svsb->buck);
+		}
+
+		count = dev_pm_opp_get_opp_count(svsb->dev);
+		if (svsb->opp_count != count) {
+			pr_err("%s: opp_count not \"%u\" but get \"%d\"?\n",
+			       svsb->name, svsb->opp_count, count);
+			return count;
+		}
+
+		for (i = 0, freq = U32_MAX; i < svsb->opp_count; i++, freq--) {
+			opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
+			if (IS_ERR(opp)) {
+				pr_err("%s: error opp entry!!, err = %ld\n",
+				       svsb->name, PTR_ERR(opp));
+				return PTR_ERR(opp);
+			}
+
+			svsb->opp_freqs[i] = freq;
+			svsb->opp_volts[i] = dev_pm_opp_get_voltage(opp);
+			svsb->freqs_pct[i] = percent(svsb->opp_freqs[i],
+						     svsb->freq_base);
+			dev_pm_opp_put(opp);
+		}
+	}
+
+	return 0;
+}
+
+static int svs_pm_ops_prepare(struct device *dev)
+{
+	struct mtk_svs *svs = dev_get_drvdata(dev);
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	unsigned long flags;
+	int ret;
+	u32 idx;
+
+	/* Wait if there is processing svs_isr(). Suspend all banks. */
+	flags = claim_mtk_svs_lock();
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svs->bank = svsb;
+		svs_switch_bank(svs);
+		svs_writel(svs, SVSEN_OFF, SVSEN);
+		svs_writel(svs, INTSTS_CLEAN, INTSTS);
+		svsb->suspended = true;
+	}
+	release_mtk_svs_lock(flags);
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		if (svsb->phase != SVSB_PHASE_INIT01) {
+			svsb->phase = SVSB_PHASE_ERROR;
+			svsb_set_volts(svsb, true);
+		}
+	}
+
+	if (svsp->need_hw_reset) {
+		ret = device_reset(svs->dev);
+		if (ret) {
+			pr_err("%s: ret = %d\n", __func__, ret);
+			return ret;
+		}
+	}
+
+	clk_disable_unprepare(svs->main_clk);
+
+	return 0;
+}
+
+static void svs_pm_ops_complete(struct device *dev)
+{
+	struct mtk_svs *svs = dev_get_drvdata(dev);
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	int ret;
+	u32 idx;
+
+	ret = clk_prepare_enable(svs->main_clk);
+	if (ret) {
+		pr_err("cannot enable main_clk, disable svs\n");
+		return;
+	}
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svsb->suspended = false;
+	}
+
+	ret = svs_init02(svs);
+	if (ret)
+		return;
+
+	svs_mon_mode(svs);
+}
+
+static int svs_debug_proc_show(struct seq_file *m, void *v)
+{
+	struct svs_bank *svsb = (struct svs_bank *)m->private;
+
+	if (svsb->phase == SVSB_PHASE_INIT01)
+		seq_puts(m, "init1\n");
+	else if (svsb->phase == SVSB_PHASE_INIT02)
+		seq_puts(m, "init2\n");
+	else if (svsb->phase == SVSB_PHASE_MON)
+		seq_puts(m, "mon mode\n");
+	else if (svsb->phase == SVSB_PHASE_ERROR)
+		seq_puts(m, "disabled\n");
+	else
+		seq_puts(m, "unknown\n");
+
+	return 0;
+}
+
+static ssize_t svs_debug_proc_write(struct file *file,
+				    const char __user *buffer,
+				    size_t count, loff_t *pos)
+{
+	struct svs_bank *svsb = (struct svs_bank *)PDE_DATA(file_inode(file));
+	struct mtk_svs *svs = dev_get_drvdata(svsb->dev);
+	unsigned long flags;
+	int enabled, ret;
+	char *buf = NULL;
+
+	if (count >= PAGE_SIZE)
+		return -EINVAL;
+
+	buf = (char *)memdup_user_nul(buffer, count);
+	if (IS_ERR(buf))
+		return PTR_ERR(buf);
+
+	ret = kstrtoint(buf, 10, &enabled);
+	if (ret)
+		return ret;
+
+	if (!enabled) {
+		flags = claim_mtk_svs_lock();
+		svs->bank = svsb;
+		svsb->mode_support = SVSB_MODE_ALL_DISABLE;
+		svs_switch_bank(svs);
+		svs_writel(svs, SVSEN_OFF, SVSEN);
+		svs_writel(svs, INTSTS_CLEAN, INTSTS);
+		release_mtk_svs_lock(flags);
+
+		svsb->phase = SVSB_PHASE_ERROR;
+		svsb_set_volts(svsb, true);
+	}
+
+	kfree(buf);
+
+	return count;
+}
+
+proc_fops_rw(svs_debug);
+
+static int svs_dump_proc_show(struct seq_file *m, void *v)
+{
+	struct mtk_svs *svs = (struct mtk_svs *)m->private;
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	unsigned long svs_reg_addr;
+	u32 idx, i, j;
+
+	for (i = 0; i < svsp->efuse_num; i++)
+		if (svs->efuse && svs->efuse[i])
+			seq_printf(m, "M_HW_RES%d = 0x%08x\n",
+				   i, svs->efuse[i]);
+
+	for (i = 0; i < svsp->thermal_efuse_num; i++)
+		if (svs->thermal_efuse)
+			seq_printf(m, "THERMAL_EFUSE%d = 0x%08x\n",
+				   i, svs->thermal_efuse[i]);
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+
+		for (i = SVSB_PHASE_INIT01; i <= SVSB_PHASE_MON; i++) {
+			seq_printf(m, "Bank_number = %u\n", svsb->bank_id);
+
+			if (i < SVSB_PHASE_MON)
+				seq_printf(m, "mode = init%d\n", i + 1);
+			else
+				seq_puts(m, "mode = mon\n");
+
+			for (j = TEMPMONCTL0; j < reg_num; j++) {
+				svs_reg_addr = (unsigned long)(svs->base +
+							       svsp->regs[j]);
+				seq_printf(m, "0x%08lx = 0x%08x\n",
+					   svs_reg_addr, svsb->reg_data[i][j]);
+			}
+		}
+	}
+
+	return 0;
+}
+
+proc_fops_ro(svs_dump);
+
+static int svs_status_proc_show(struct seq_file *m, void *v)
+{
+	struct svs_bank *svsb = (struct svs_bank *)m->private;
+	struct dev_pm_opp *opp;
+	unsigned long freq;
+	int tzone_temp, ret;
+	u32 i;
+
+	ret = svsb_get_zone_temperature(svsb, &tzone_temp);
+	if (ret)
+		seq_printf(m, "%s: cannot get zone \"%s\" temperature\n",
+			   svsb->name, svsb->tzone_name);
+	else
+		seq_printf(m, "%s: temperature = %d\n", svsb->name, tzone_temp);
+
+	for (i = 0, freq = U32_MAX; i < svsb->opp_count; i++, freq--) {
+		opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
+		if (IS_ERR(opp)) {
+			seq_printf(m, "%s: error opp entry!!, err = %ld\n",
+				   svsb->name, PTR_ERR(opp));
+			return PTR_ERR(opp);
+		}
+
+		seq_printf(m, "opp_freqs[%02u]: %lu, volts[%02u]: %lu, ",
+			   i, freq, i, dev_pm_opp_get_voltage(opp));
+		seq_printf(m, "svsb_volts[%02u]: 0x%x, freqs_pct[%02u]: %u\n",
+			   i, svsb->volts[i], i, svsb->freqs_pct[i]);
+		dev_pm_opp_put(opp);
+	}
+
+	return 0;
+}
+
+proc_fops_ro(svs_status);
+
+static int svs_volt_offset_proc_show(struct seq_file *m, void *v)
+{
+	struct svs_bank *svsb = (struct svs_bank *)m->private;
+
+	seq_printf(m, "%d\n", svsb->volt_offset);
+
+	return 0;
+}
+
+static ssize_t svs_volt_offset_proc_write(struct file *file,
+					  const char __user *buffer,
+					  size_t count, loff_t *pos)
+{
+	struct svs_bank *svsb = (struct svs_bank *)PDE_DATA(file_inode(file));
+	char *buf = NULL;
+	s32 volt_offset;
+
+	if (count >= PAGE_SIZE)
+		return -EINVAL;
+
+	buf = (char *)memdup_user_nul(buffer, count);
+	if (IS_ERR(buf))
+		return PTR_ERR(buf);
+
+	if (!kstrtoint(buf, 10, &volt_offset)) {
+		svsb->volt_offset = volt_offset;
+		svsb_set_volts(svsb, true);
+	}
+
+	kfree(buf);
+
+	return count;
+}
+
+proc_fops_rw(svs_volt_offset);
+
+static int svs_create_svs_procfs(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	struct proc_dir_entry *svs_dir, *bank_dir;
+	u32 idx, i;
+
+	struct pentry {
+		const char *name;
+		const struct proc_ops *fops;
+	};
+
+	struct pentry svs_entries[] = {
+		proc_entry(svs_dump),
+	};
+
+	struct pentry bank_entries[] = {
+		proc_entry(svs_debug),
+		proc_entry(svs_status),
+		proc_entry(svs_volt_offset),
+	};
+
+	svs_dir = proc_mkdir("svs", NULL);
+	if (!svs_dir) {
+		pr_err("mkdir /proc/svs failed\n");
+		return -EPERM;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(svs_entries); i++) {
+		if (!proc_create_data(svs_entries[i].name, 0664,
+				      svs_dir, svs_entries[i].fops, svs)) {
+			pr_err("create /proc/svs/%s failed\n",
+			       svs_entries[i].name);
+			return -EPERM;
+		}
+	}
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+
+		if (svsb->mode_support == SVSB_MODE_ALL_DISABLE)
+			continue;
+
+		bank_dir = proc_mkdir(svsb->name, svs_dir);
+		if (!bank_dir) {
+			pr_err("mkdir /proc/svs/%s failed\n", svsb->name);
+			return -EPERM;
+		}
+
+		for (i = 0; i < ARRAY_SIZE(bank_entries); i++) {
+			if (!proc_create_data(bank_entries[i].name, 0664,
+					      bank_dir, bank_entries[i].fops,
+					      svsb)) {
+				pr_err("create /proc/svs/%s/%s failed\n",
+				       svsb->name, bank_entries[i].name);
+				return -EPERM;
+			}
+		}
+	}
+
+	return 0;
+}
+
+static struct svs_bank_ops svs_mt8183_banks_ops = {
+	.set_freqs_pct	= svs_set_freqs_pct_v2,
+	.get_vops	= svs_get_vops_v2,
+};
+
+static struct svs_bank svs_mt8183_banks[4] = {
+	{
+		.of_compatible		= "mediatek,mt8183-svs-cpu-little",
+		.sw_id			= SVS_CPU_LITTLE,
+		.bank_id		= 0,
+		.ops			= &svs_mt8183_banks_ops,
+		.tzone_name		= "tzts4",
+		.buck_name		= "vcpu-little",
+		.mtcmos_request		= false,
+		.init01_volt_flag	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
+		.opp_count		= 16,
+		.freq_base		= 1989000000,
+		.vboot			= 0x30,
+		.volt_step		= 6250,
+		.volt_base		= 500000,
+		.volt_offset		= 0,
+		.vmax			= 0x64,
+		.vmin			= 0x18,
+		.dthi			= 0x1,
+		.dtlo			= 0xfe,
+		.det_window		= 0xa28,
+		.det_max		= 0xffff,
+		.age_config		= 0x555555,
+		.agem			= 0,
+		.dc_config		= 0x555555,
+		.dvt_fixed		= 0x7,
+		.vco			= 0x10,
+		.chk_shift		= 0x77,
+		.upper_temp_bound	= 0x64,
+		.lower_temp_bound	= 0xb2,
+		.high_temp_threashold	= HIGH_TEMP_MAX,
+		.low_temp_threashold	= 25000,
+		.low_temp_offset	= 0,
+		.core_sel		= 0x8fff0000,
+		.systemclk_en		= BIT(31),
+		.int_st			= BIT(0),
+		.ctl0			= 0x00010001,
+	},
+	{
+		.of_compatible		= "mediatek,mt8183-svs-cpu-big",
+		.sw_id			= SVS_CPU_BIG,
+		.bank_id		= 1,
+		.ops			= &svs_mt8183_banks_ops,
+		.tzone_name		= "tzts5",
+		.buck_name		= "vcpu-big",
+		.mtcmos_request		= false,
+		.init01_volt_flag	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
+		.opp_count		= 16,
+		.freq_base		= 1989000000,
+		.vboot			= 0x30,
+		.volt_step		= 6250,
+		.volt_base		= 500000,
+		.volt_offset		= 0,
+		.vmax			= 0x58,
+		.vmin			= 0x10,
+		.dthi			= 0x1,
+		.dtlo			= 0xfe,
+		.det_window		= 0xa28,
+		.det_max		= 0xffff,
+		.age_config		= 0x555555,
+		.agem			= 0,
+		.dc_config		= 0x555555,
+		.dvt_fixed		= 0x7,
+		.vco			= 0x10,
+		.chk_shift		= 0x77,
+		.upper_temp_bound	= 0x64,
+		.lower_temp_bound	= 0xb2,
+		.high_temp_threashold	= HIGH_TEMP_MAX,
+		.low_temp_threashold	= 25000,
+		.low_temp_offset	= 0,
+		.core_sel		= 0x8fff0001,
+		.systemclk_en		= BIT(31),
+		.int_st			= BIT(1),
+		.ctl0			= 0x00000001,
+	},
+	{
+		.of_compatible		= "mediatek,mt8183-svs-cci",
+		.sw_id			= SVS_CCI,
+		.bank_id		= 2,
+		.ops			= &svs_mt8183_banks_ops,
+		.tzone_name		= "tzts4",
+		.buck_name		= "vcci",
+		.mtcmos_request		= false,
+		.init01_volt_flag	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
+		.opp_count		= 16,
+		.freq_base		= 1196000000,
+		.vboot			= 0x30,
+		.volt_step		= 6250,
+		.volt_base		= 500000,
+		.volt_offset		= 0,
+		.vmax			= 0x64,
+		.vmin			= 0x18,
+		.dthi			= 0x1,
+		.dtlo			= 0xfe,
+		.det_window		= 0xa28,
+		.det_max		= 0xffff,
+		.age_config		= 0x555555,
+		.agem			= 0,
+		.dc_config		= 0x555555,
+		.dvt_fixed		= 0x7,
+		.vco			= 0x10,
+		.chk_shift		= 0x77,
+		.upper_temp_bound	= 0x64,
+		.lower_temp_bound	= 0xb2,
+		.high_temp_threashold	= HIGH_TEMP_MAX,
+		.low_temp_threashold	= 25000,
+		.low_temp_offset	= 0,
+		.core_sel		= 0x8fff0002,
+		.systemclk_en		= BIT(31),
+		.int_st			= BIT(2),
+		.ctl0			= 0x00100003,
+	},
+	{
+		.of_compatible		= "mediatek,mt8183-svs-gpu",
+		.sw_id			= SVS_GPU,
+		.bank_id		= 3,
+		.ops			= &svs_mt8183_banks_ops,
+		.tzone_name		= "tzts2",
+		.buck_name		= "vgpu",
+		.mtcmos_request		= true,
+		.init01_volt_flag	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02 |
+					  SVSB_MODE_MON,
+		.opp_count		= 16,
+		.freq_base		= 900000000,
+		.vboot			= 0x30,
+		.volt_step		= 6250,
+		.volt_base		= 500000,
+		.volt_offset		= 0,
+		.vmax			= 0x40,
+		.vmin			= 0x14,
+		.dthi			= 0x1,
+		.dtlo			= 0xfe,
+		.det_window		= 0xa28,
+		.det_max		= 0xffff,
+		.age_config		= 0x555555,
+		.agem			= 0,
+		.dc_config		= 0x555555,
+		.dvt_fixed		= 0x3,
+		.vco			= 0x10,
+		.chk_shift		= 0x77,
+		.upper_temp_bound	= 0x64,
+		.lower_temp_bound	= 0xb2,
+		.high_temp_threashold	= HIGH_TEMP_MAX,
+		.low_temp_threashold	= 25000,
+		.low_temp_offset	= 3,
+		.core_sel		= 0x8fff0003,
+		.systemclk_en		= BIT(31),
+		.int_st			= BIT(3),
+		.ctl0			= 0x00050001,
+	},
+};
+
+static const struct svs_platform svs_mt8183_platform = {
+	.name			= "mt8183-svs",
+	.banks			= svs_mt8183_banks,
+	.efuse_parsing		= svs_mt8183_efuse_parsing,
+	.regs			= svs_regs_v2,
+	.irqflags		= IRQF_TRIGGER_LOW | IRQF_ONESHOT,
+	.need_hw_reset		= false,
+	.fake_efuse		= false,
+	.bank_num		= 4,
+	.efuse_num		= 25,
+	.efuse_check		= 2,
+	.thermal_efuse_num	= 3,
+};
+
+static const struct of_device_id mtk_svs_of_match[] = {
+	{
+		.compatible = "mediatek,mt8183-svs",
+		.data = &svs_mt8183_platform,
+	}, {
+		/* Sentinel */
+	},
+};
+
+static int svs_probe(struct platform_device *pdev)
+{
+	const struct of_device_id *of_dev_id;
+	struct mtk_svs *svs;
+	int ret;
+	u32 svs_irq;
+
+	svs = devm_kzalloc(&pdev->dev, sizeof(*svs), GFP_KERNEL);
+	if (!svs)
+		return -ENOMEM;
+
+	svs->dev = &pdev->dev;
+	if (!svs->dev->of_node) {
+		pr_err("cannot find device node\n");
+		return -ENODEV;
+	}
+
+	svs->base = of_iomap(svs->dev->of_node, 0);
+	if (IS_ERR(svs->base)) {
+		pr_err("cannot find svs register base\n");
+		return PTR_ERR(svs->base);
+	}
+
+	of_dev_id = of_match_node(mtk_svs_of_match, svs->dev->of_node);
+	if (!of_dev_id || !of_dev_id->data)
+		return -EINVAL;
+
+	svs->platform = of_dev_id->data;
+	dev_set_drvdata(svs->dev, svs);
+
+	svs_irq = irq_of_parse_and_map(svs->dev->of_node, 0);
+	ret = devm_request_threaded_irq(svs->dev, svs_irq, NULL, svs_isr,
+					svs->platform->irqflags, "mtk-svs",
+					svs);
+	if (ret) {
+		pr_err("register irq(%d) failed: %d\n", svs_irq, ret);
+		return ret;
+	}
+
+	svs->main_clk = devm_clk_get(svs->dev, "main");
+	if (IS_ERR(svs->main_clk)) {
+		pr_err("failed to get clock: %ld\n", PTR_ERR(svs->main_clk));
+		return PTR_ERR(svs->main_clk);
+	}
+
+	ret = clk_prepare_enable(svs->main_clk);
+	if (ret) {
+		pr_err("cannot enable main clk: %d\n", ret);
+		return ret;
+	}
+
+	if (!svs_is_supported(svs)) {
+		pr_notice("svs is not supported\n");
+		ret = -EPERM;
+		goto svs_probe_fail;
+	}
+
+	ret = svs_resource_setup(svs);
+	if (ret)
+		goto svs_probe_fail;
+
+	ret = svs_start(svs);
+	if (ret)
+		goto svs_probe_fail;
+
+	ret = svs_create_svs_procfs(svs);
+	if (ret)
+		goto svs_probe_fail;
+
+	return 0;
+
+svs_probe_fail:
+	clk_disable_unprepare(svs->main_clk);
+
+	return ret;
+}
+
+static const struct dev_pm_ops svs_pm_ops = {
+	.prepare	= svs_pm_ops_prepare,
+	.complete	= svs_pm_ops_complete,
+};
+
+static struct platform_driver svs_driver = {
+	.probe	= svs_probe,
+	.driver	= {
+		.name		= "mtk-svs",
+		.pm		= &svs_pm_ops,
+		.of_match_table	= of_match_ptr(mtk_svs_of_match),
+	},
+};
+
+static int __init svs_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&svs_driver);
+	if (ret) {
+		pr_err("svs platform driver register failed: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+late_initcall_sync(svs_init);
+
+MODULE_DESCRIPTION("MediaTek SVS Driver v1.0");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/power/mtk_svs.h b/include/linux/power/mtk_svs.h
new file mode 100644
index 000000000000..5c03982e3576
--- /dev/null
+++ b/include/linux/power/mtk_svs.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (C) 2020 MediaTek Inc.
+ */
+
+#ifndef __MTK_SVS_H__
+#define __MTK_SVS_H__
+
+#if IS_ENABLED(CONFIG_MTK_SVS)
+unsigned long claim_mtk_svs_lock(void);
+void release_mtk_svs_lock(unsigned long flags);
+#else
+static inline unsigned long claim_mtk_svs_lock(void)
+{
+	return 0;
+}
+
+static inline void release_mtk_svs_lock(unsigned long flags)
+{
+}
+#endif /* CONFIG_MTK_SVS */
+
+#endif /* __MTK_SVS_H__ */
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
