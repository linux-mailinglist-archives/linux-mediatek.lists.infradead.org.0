Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACCCF8D88
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 Nov 2019 12:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aL6B+fUU/nxGvxEHUUgr3MfuiGgMs/Ta2QGAD6Nody4=; b=tqKNa1cWLWbDl7
	rrVWkVxqs51oClzBVhoGhcbX7gZeYC029kuQrbHjO6NmEe+mX2clyDBqqqN5Rg3/ExZW3r71j+H5r
	5t7Lh3hf0lqAq8I5n7WQc6yp6SDy+8ocsOjiOcDCC6Wl8wfmTTXra5gMb7//wdO9z88SZcQj+NK/0
	fWoYDAonXUhlBg7fkd8LumsB1h8vbxui8L1MR359O/aJ1tCUSmdYru5m+fqtgNLZMfUdnhXxHMfwd
	3+Ecp2Y3OelnK2giou6cR6+XkAwXDN9czx3T9YrO9L/lIzIFK2YtfjmmoeLK3JH7DAiHS6shvas/q
	+KmnWLwfeA0e3cMislTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUTyw-0006C9-GL; Tue, 12 Nov 2019 11:05:10 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUTyK-0005fI-Eo
 for linux-mediatek@lists.infradead.org; Tue, 12 Nov 2019 11:04:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id h13so3865746plr.1
 for <linux-mediatek@lists.infradead.org>; Tue, 12 Nov 2019 03:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=96pxX3KrdthvRGD5a5vuBv60RPV5/Ony1UXR6VC35Jg=;
 b=CVIohitEjMOSL/IcqsyR4Z/wmyiYlaRtI+xUaGha2CLEy+IkfLMzUKuvayIEP/Ir9y
 upMX2szP3gt441RNn0MEY5C3HQ3ZrD8lHUbd8uQfrKr96En9RmhfLGPQtNzNE2LFYojA
 WtEOQG9Qn57mkCPNYOfCE7kMsnZbyBURwSIaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=96pxX3KrdthvRGD5a5vuBv60RPV5/Ony1UXR6VC35Jg=;
 b=f5RNcBDXaVU2mN++xc9DsjsmKRwCGbVtcQhwakW0n/qsUPnE9PSnD8Pb3IRpZuJNyK
 AKB5p2boZfYR8+OJT86pqScc3o//5EIm+dE/Ch+6ohqEzbYTrdDPpQKQ0BA/14/hvfLW
 Wh2kxxD1KtB60AVsEWkKB5lE9IWxpYR/CT5ZTGaggXmDi4RGHedhiIQUGoc7cKiVWm/h
 9F3zbTbVS4StJklZfOpwl//uek6pItrdVhTjD1+EEjuHvnpTVPMSPqx7c4yo3eMGLuMV
 BDugMMn78sxaoN1mCmDMbJlWnlEskWE7Qe7XzEyUGsOEoB8iY9Oumebp7a6pQhVlxJVA
 J/Kg==
X-Gm-Message-State: APjAAAUrILhTNFndvCsoFr2UmZd+j12Z/bnxTAO2IxY2y4Qlphc8MxP+
 0pQFbOQ3rouWV9qV7xon1iynow==
X-Google-Smtp-Source: APXvYqwT6UvvU363Wkgnwk4Le9NyepMoV98e4BXjSEQtSO2IlS4yVEvwwVWx5e1H01p8znd339Noug==
X-Received: by 2002:a17:902:900b:: with SMTP id
 a11mr30098936plp.116.1573556670944; 
 Tue, 12 Nov 2019 03:04:30 -0800 (PST)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id 6sm21528389pfy.43.2019.11.12.03.04.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 03:04:30 -0800 (PST)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v21 2/4] remoteproc/mediatek: add SCP support for mt8183
Date: Tue, 12 Nov 2019 19:03:25 +0800
Message-Id: <20191112110330.179649-3-pihsun@chromium.org>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191112110330.179649-1-pihsun@chromium.org>
References: <20191112110330.179649-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_030432_619084_11440952 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Nicolas Boichat <drinkcat@chromium.org>,
 Erin Lo <erin.lo@mediatek.com>,
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Erin Lo <erin.lo@mediatek.com>

Provide a basic driver to control Cortex M4 co-processor

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
Changes from v20:
 - Change all public API usage of (struct platform_device *) to (struct
   mtk_scp *).
 - Rename some variables to be more specific.
 - Move docs to implementation, and improve docs.
 - Address review comments.

Changes from v19:
 - No change.

Changes from v18:
 - Use of_reserved_mem_device_init_by_idx() to hook the scp device to
   DMA mapping API to provide a shared dma pool of SCP DMA buffers for
   SCP's client, such as DIP and ISP Pass 1 drivers.

Changes from v17:
 - Fix mixture use of __iomem found by sparse.
 - Change the ipi handler to take a u32 instead of enum scp_ipi_id.

Changes from v16:
 - Change the desc_lock mutex to be a per-id lock.
 - Put the execution of handler inside the per-id lock, to prevent race
   between scp_ipi_unregister and handler being run.
 - Move the initialization of mutex to before scp_ipi_register.

Changes from v15:
 - Fix a bug on incorrect usage of wait_event_timeout return value.

Changes from v14:
 - No change.

Changes from v13:
 - Move include/linux/platform_data/mtk_scp.h to
   include/linux/remoteproc/mtk_scp.h.
 - Add lock for access of scp->ipi_desc.
 - Lock the whole ipi_send function.
 - Move more setting of cache size from SCP firmware to kernel driver,
   to prevent problem while loading firmware onto DRAM.
 - Cleanup and remove unused branch in scp_da_to_va.
 - Minor fixes addressing comment.

Changes from v12:
 - Initialize cache before firmware load, to avoid problem while loading
   large firmware.
 - Disable watchdog before stopping SCP, to avoid extra warning message.
 - Use strscpy instead of strncpy.

Changes from v11:
 - No change.

Changes from v10:
 - Add a clock reset before loading firmware.

Changes from v9:
 - No change.

Changes from v8:
 - Add a missing space.

Changes from v7:
 - Moved the location of shared SCP buffer.
 - Fix clock enable/disable sequence.
 - Add more IPI ID that would be used.

Changes from v6:
 - No change.

Changes from v5:
 - Changed some space to tab.

Changes from v4:
 - Rename most function from mtk_scp_* to scp_*.
 - Change the irq to threaded handler.
 - Load ELF file instead of plain binary file as firmware by default
   (Squashed patch 6 in v4 into this patch).

Changes from v3:
 - Fix some issue found by checkpatch.
 - Make writes aligned in scp_ipi_send.

Changes from v2:
 - Squash patch 3 from v2 (separate the ipi interface) into this patch.
 - Remove unused name argument from scp_ipi_register.
 - Add scp_ipi_unregister for proper cleanup.
 - Move IPI ids in sync with firmware.
 - Add mb() in proper place, and correctly clear the run->signaled.

Changes from v1:
 - Extract functions and rename variables in mtk_scp.c.
---
 drivers/remoteproc/Kconfig         |   9 +
 drivers/remoteproc/Makefile        |   1 +
 drivers/remoteproc/mtk_common.h    |  92 +++++
 drivers/remoteproc/mtk_scp.c       | 610 +++++++++++++++++++++++++++++
 drivers/remoteproc/mtk_scp_ipi.c   | 218 +++++++++++
 include/linux/remoteproc/mtk_scp.h |  65 +++
 6 files changed, 995 insertions(+)
 create mode 100644 drivers/remoteproc/mtk_common.h
 create mode 100644 drivers/remoteproc/mtk_scp.c
 create mode 100644 drivers/remoteproc/mtk_scp_ipi.c
 create mode 100644 include/linux/remoteproc/mtk_scp.h

diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
index 94afdde4bc9f..85d594df12e3 100644
--- a/drivers/remoteproc/Kconfig
+++ b/drivers/remoteproc/Kconfig
@@ -23,6 +23,15 @@ config IMX_REMOTEPROC
 
 	  It's safe to say N here.
 
+config MTK_SCP
+	tristate "Mediatek SCP support"
+	depends on ARCH_MEDIATEK
+	help
+	  Say y here to support Mediatek's System Companion Processor (SCP) via
+	  the remote processor framework.
+
+	  It's safe to say N here.
+
 config OMAP_REMOTEPROC
 	tristate "OMAP remoteproc support"
 	depends on ARCH_OMAP4 || SOC_OMAP5
diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
index 00f09e658cb3..e30a1b15fbac 100644
--- a/drivers/remoteproc/Makefile
+++ b/drivers/remoteproc/Makefile
@@ -10,6 +10,7 @@ remoteproc-y				+= remoteproc_sysfs.o
 remoteproc-y				+= remoteproc_virtio.o
 remoteproc-y				+= remoteproc_elf_loader.o
 obj-$(CONFIG_IMX_REMOTEPROC)		+= imx_rproc.o
+obj-$(CONFIG_MTK_SCP)			+= mtk_scp.o mtk_scp_ipi.o
 obj-$(CONFIG_OMAP_REMOTEPROC)		+= omap_remoteproc.o
 obj-$(CONFIG_WKUP_M3_RPROC)		+= wkup_m3_rproc.o
 obj-$(CONFIG_DA8XX_REMOTEPROC)		+= da8xx_remoteproc.o
diff --git a/drivers/remoteproc/mtk_common.h b/drivers/remoteproc/mtk_common.h
new file mode 100644
index 000000000000..4afcec19c34c
--- /dev/null
+++ b/drivers/remoteproc/mtk_common.h
@@ -0,0 +1,92 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef __RPROC_MTK_COMMON_H
+#define __RPROC_MTK_COMMON_H
+
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/platform_device.h>
+#include <linux/remoteproc.h>
+#include <linux/remoteproc/mtk_scp.h>
+
+#define MT8183_SW_RSTN			0x0
+#define MT8183_SW_RSTN_BIT		BIT(0)
+#define MT8183_SCP_TO_HOST		0x1C
+#define MT8183_SCP_IPC_INT_BIT		BIT(0)
+#define MT8183_SCP_WDT_INT_BIT		BIT(8)
+#define MT8183_HOST_TO_SCP		0x28
+#define MT8183_HOST_IPC_INT_BIT		BIT(0)
+#define MT8183_WDT_CFG			0x84
+#define MT8183_SCP_CLK_SW_SEL		0x4000
+#define MT8183_SCP_CLK_DIV_SEL		0x4024
+#define MT8183_SCP_SRAM_PDN		0x402C
+#define MT8183_SCP_L1_SRAM_PD		0x4080
+#define MT8183_SCP_TCM_TAIL_SRAM_PD	0x4094
+
+#define MT8183_SCP_CACHE_SEL(x)		(0x14000 + (x) * 0x3000)
+#define MT8183_SCP_CACHE_CON		MT8183_SCP_CACHE_SEL(0)
+#define MT8183_SCP_DCACHE_CON		MT8183_SCP_CACHE_SEL(1)
+#define MT8183_SCP_CACHESIZE_8KB	BIT(8)
+#define MT8183_SCP_CACHE_CON_WAYEN	BIT(10)
+
+#define SCP_FW_VER_LEN			32
+#define SCP_SHARE_BUFFER_SIZE		288
+
+struct scp_run {
+	u32 signaled;
+	s8 fw_ver[SCP_FW_VER_LEN];
+	u32 dec_capability;
+	u32 enc_capability;
+	wait_queue_head_t wq;
+};
+
+struct scp_ipi_desc {
+	/* For protecting handler. */
+	struct mutex lock;
+	scp_ipi_handler_t handler;
+	void *priv;
+};
+
+struct mtk_scp {
+	struct device *dev;
+	struct rproc *rproc;
+	struct clk *clk;
+	void __iomem *reg_base;
+	void __iomem *sram_base;
+	size_t sram_size;
+
+	struct mtk_share_obj __iomem *recv_buf;
+	struct mtk_share_obj __iomem *send_buf;
+	struct scp_run run;
+	/* To prevent multiple ipi_send run concurrently. */
+	struct mutex send_lock;
+	struct scp_ipi_desc ipi_desc[SCP_IPI_MAX];
+	bool ipi_id_ack[SCP_IPI_MAX];
+	wait_queue_head_t ack_wq;
+
+	void __iomem *cpu_addr;
+	phys_addr_t phys_addr;
+	size_t dram_size;
+};
+
+/**
+ * struct mtk_share_obj - SRAM buffer shared with AP and SCP
+ *
+ * @id:		IPI id
+ * @len:	share buffer length
+ * @share_buf:	share buffer data
+ */
+struct mtk_share_obj {
+	u32 id;
+	u32 len;
+	u8 share_buf[SCP_SHARE_BUFFER_SIZE];
+};
+
+void scp_memcpy_aligned(void __iomem *dst, const void *src, unsigned int len);
+void scp_ipi_lock(struct mtk_scp *scp, u32 id);
+void scp_ipi_unlock(struct mtk_scp *scp, u32 id);
+
+#endif
diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
new file mode 100644
index 000000000000..dc5babb3af59
--- /dev/null
+++ b/drivers/remoteproc/mtk_scp.c
@@ -0,0 +1,610 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2019 MediaTek Inc.
+
+#include <asm/barrier.h>
+#include <linux/clk.h>
+#include <linux/dma-mapping.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_platform.h>
+#include <linux/of_reserved_mem.h>
+#include <linux/platform_device.h>
+#include <linux/remoteproc.h>
+#include <linux/remoteproc/mtk_scp.h>
+
+#include "mtk_common.h"
+#include "remoteproc_internal.h"
+
+#define MAX_CODE_SIZE 0x500000
+#define SCP_FW_END 0x7C000
+
+/**
+ * scp_get() - get a reference to SCP.
+ *
+ * @pdev:	the platform device of the module requesting SCP platform
+ *		device for using SCP API.
+ *
+ * Return: Return NULL if failed.  otherwise reference to SCP.
+ **/
+struct mtk_scp *scp_get(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *scp_node;
+	struct platform_device *scp_pdev;
+
+	scp_node = of_parse_phandle(dev->of_node, "mediatek,scp", 0);
+	if (!scp_node) {
+		dev_err(dev, "can't get SCP node\n");
+		return NULL;
+	}
+
+	scp_pdev = of_find_device_by_node(scp_node);
+	of_node_put(scp_node);
+
+	if (WARN_ON(!scp_pdev)) {
+		dev_err(dev, "SCP pdev failed\n");
+		return NULL;
+	}
+
+	return platform_get_drvdata(scp_pdev);
+}
+EXPORT_SYMBOL_GPL(scp_get);
+
+/**
+ * scp_put() - "free" the SCP
+ *
+ * @scp:	mtk_scp structure from scp_get().
+ **/
+void scp_put(struct mtk_scp *scp)
+{
+	put_device(scp->dev);
+}
+EXPORT_SYMBOL_GPL(scp_put);
+
+static void scp_wdt_handler(struct mtk_scp *scp, u32 scp_to_host)
+{
+	dev_err(scp->dev, "SCP watchdog timeout! 0x%x", scp_to_host);
+	rproc_report_crash(scp->rproc, RPROC_WATCHDOG);
+}
+
+static void scp_init_ipi_handler(void *data, unsigned int len, void *priv)
+{
+	struct mtk_scp *scp = (struct mtk_scp *)priv;
+	struct scp_run *run = (struct scp_run *)data;
+
+	scp->run.signaled = run->signaled;
+	strscpy(scp->run.fw_ver, run->fw_ver, SCP_FW_VER_LEN);
+	scp->run.dec_capability = run->dec_capability;
+	scp->run.enc_capability = run->enc_capability;
+	wake_up_interruptible(&scp->run.wq);
+}
+
+static void scp_ipi_handler(struct mtk_scp *scp)
+{
+	struct mtk_share_obj __iomem *rcv_obj = scp->recv_buf;
+	struct scp_ipi_desc *ipi_desc = scp->ipi_desc;
+	u8 tmp_data[SCP_SHARE_BUFFER_SIZE];
+	scp_ipi_handler_t handler;
+	u32 id = readl(&rcv_obj->id);
+	u32 len = readl(&rcv_obj->len);
+
+	if (len > SCP_SHARE_BUFFER_SIZE) {
+		dev_err(scp->dev, "ipi message too long (len %d, max %d)", len,
+			SCP_SHARE_BUFFER_SIZE);
+		return;
+	}
+	if (id >= SCP_IPI_MAX) {
+		dev_err(scp->dev, "No such ipi id = %d\n", id);
+		return;
+	}
+
+	scp_ipi_lock(scp, id);
+	handler = ipi_desc[id].handler;
+	if (!handler) {
+		dev_err(scp->dev, "No such ipi id = %d\n", id);
+		scp_ipi_unlock(scp, id);
+		return;
+	}
+
+	memcpy_fromio(tmp_data, &rcv_obj->share_buf, len);
+	handler(tmp_data, len, ipi_desc[id].priv);
+	scp_ipi_unlock(scp, id);
+
+	scp->ipi_id_ack[id] = true;
+	wake_up(&scp->ack_wq);
+}
+
+static int scp_ipi_init(struct mtk_scp *scp)
+{
+	size_t send_offset = SCP_FW_END - sizeof(struct mtk_share_obj);
+	size_t recv_offset = send_offset - sizeof(struct mtk_share_obj);
+
+	/* Disable SCP to host interrupt */
+	writel(MT8183_SCP_IPC_INT_BIT, scp->reg_base + MT8183_SCP_TO_HOST);
+
+	/* shared buffer initialization */
+	scp->recv_buf =
+		(struct mtk_share_obj __iomem *)(scp->sram_base + recv_offset);
+	scp->send_buf =
+		(struct mtk_share_obj __iomem *)(scp->sram_base + send_offset);
+	memset_io(scp->recv_buf, 0, sizeof(scp->recv_buf));
+	memset_io(scp->send_buf, 0, sizeof(scp->send_buf));
+
+	return 0;
+}
+
+static void scp_reset_assert(const struct mtk_scp *scp)
+{
+	u32 val;
+
+	val = readl(scp->reg_base + MT8183_SW_RSTN);
+	val &= ~MT8183_SW_RSTN_BIT;
+	writel(val, scp->reg_base + MT8183_SW_RSTN);
+}
+
+static void scp_reset_deassert(const struct mtk_scp *scp)
+{
+	u32 val;
+
+	val = readl(scp->reg_base + MT8183_SW_RSTN);
+	val |= MT8183_SW_RSTN_BIT;
+	writel(val, scp->reg_base + MT8183_SW_RSTN);
+}
+
+static irqreturn_t scp_irq_handler(int irq, void *priv)
+{
+	struct mtk_scp *scp = priv;
+	u32 scp_to_host;
+	int ret;
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(scp->dev, "failed to enable clocks\n");
+		return IRQ_NONE;
+	}
+
+	scp_to_host = readl(scp->reg_base + MT8183_SCP_TO_HOST);
+	if (scp_to_host & MT8183_SCP_IPC_INT_BIT)
+		scp_ipi_handler(scp);
+	else
+		scp_wdt_handler(scp, scp_to_host);
+
+	/* SCP won't send another interrupt until we set SCP_TO_HOST to 0. */
+	writel(MT8183_SCP_IPC_INT_BIT | MT8183_SCP_WDT_INT_BIT,
+	       scp->reg_base + MT8183_SCP_TO_HOST);
+	clk_disable_unprepare(scp->clk);
+
+	return IRQ_HANDLED;
+}
+
+static int scp_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
+{
+	struct device *dev = &rproc->dev;
+	struct elf32_hdr *ehdr;
+	struct elf32_phdr *phdr;
+	int i, ret = 0;
+	const u8 *elf_data = fw->data;
+
+	ehdr = (struct elf32_hdr *)elf_data;
+	phdr = (struct elf32_phdr *)(elf_data + ehdr->e_phoff);
+
+	/* go through the available ELF segments */
+	for (i = 0; i < ehdr->e_phnum; i++, phdr++) {
+		u32 da = phdr->p_paddr;
+		u32 memsz = phdr->p_memsz;
+		u32 filesz = phdr->p_filesz;
+		u32 offset = phdr->p_offset;
+		void __iomem *ptr;
+
+		if (phdr->p_type != PT_LOAD)
+			continue;
+
+		dev_dbg(dev, "phdr: type %d da 0x%x memsz 0x%x filesz 0x%x\n",
+			phdr->p_type, da, memsz, filesz);
+
+		if (filesz > memsz) {
+			dev_err(dev, "bad phdr filesz 0x%x memsz 0x%x\n",
+				filesz, memsz);
+			ret = -EINVAL;
+			break;
+		}
+
+		if (offset + filesz > fw->size) {
+			dev_err(dev, "truncated fw: need 0x%x avail 0x%zx\n",
+				offset + filesz, fw->size);
+			ret = -EINVAL;
+			break;
+		}
+
+		/* grab the kernel address for this device address */
+		ptr = (void __iomem *)rproc_da_to_va(rproc, da, memsz);
+		if (!ptr) {
+			dev_err(dev, "bad phdr da 0x%x mem 0x%x\n", da, memsz);
+			ret = -EINVAL;
+			break;
+		}
+
+		/* put the segment where the remote processor expects it */
+		if (phdr->p_filesz)
+			scp_memcpy_aligned(ptr, elf_data + phdr->p_offset,
+					   filesz);
+	}
+
+	return ret;
+}
+
+static int scp_load(struct rproc *rproc, const struct firmware *fw)
+{
+	const struct mtk_scp *scp = rproc->priv;
+	struct device *dev = scp->dev;
+	int ret;
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(dev, "failed to enable clocks\n");
+		return ret;
+	}
+
+	/* Hold SCP in reset while loading FW. */
+	scp_reset_assert(scp);
+
+	/* Reset clocks before loading FW */
+	writel(0x0, scp->reg_base + MT8183_SCP_CLK_SW_SEL);
+	writel(0x0, scp->reg_base + MT8183_SCP_CLK_DIV_SEL);
+
+	/* Initialize TCM before loading FW. */
+	writel(0x0, scp->reg_base + MT8183_SCP_L1_SRAM_PD);
+	writel(0x0, scp->reg_base + MT8183_SCP_TCM_TAIL_SRAM_PD);
+
+	/* Turn on the power of SCP's SRAM before using it. */
+	writel(0x0, scp->reg_base + MT8183_SCP_SRAM_PDN);
+
+	/*
+	 * Set I-cache and D-cache size before loading SCP FW.
+	 * SCP SRAM logical address may change when cache size setting differs.
+	 */
+	writel(MT8183_SCP_CACHE_CON_WAYEN | MT8183_SCP_CACHESIZE_8KB,
+	       scp->reg_base + MT8183_SCP_CACHE_CON);
+	writel(MT8183_SCP_CACHESIZE_8KB, scp->reg_base + MT8183_SCP_DCACHE_CON);
+
+	ret = scp_elf_load_segments(rproc, fw);
+	clk_disable_unprepare(scp->clk);
+
+	return ret;
+}
+
+static int scp_start(struct rproc *rproc)
+{
+	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
+	struct device *dev = scp->dev;
+	struct scp_run *run = &scp->run;
+	int ret;
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(dev, "failed to enable clocks\n");
+		return ret;
+	}
+
+	run->signaled = false;
+
+	scp_reset_deassert(scp);
+
+	ret = wait_event_interruptible_timeout(
+					run->wq,
+					run->signaled,
+					msecs_to_jiffies(2000));
+
+	if (ret == 0) {
+		dev_err(dev, "wait SCP initialization timeout!\n");
+		ret = -ETIME;
+		goto stop;
+	}
+	if (ret == -ERESTARTSYS) {
+		dev_err(dev, "wait SCP interrupted by a signal!\n");
+		goto stop;
+	}
+	clk_disable_unprepare(scp->clk);
+	dev_info(dev, "SCP is ready. FW version %s\n", run->fw_ver);
+
+	return 0;
+
+stop:
+	scp_reset_assert(scp);
+	clk_disable_unprepare(scp->clk);
+	return ret;
+}
+
+static void *scp_da_to_va(struct rproc *rproc, u64 da, int len)
+{
+	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
+	int offset;
+
+	if (da < scp->sram_size) {
+		offset = da;
+		if (offset >= 0 && (offset + len) < scp->sram_size)
+			return (void __force *)scp->sram_base + offset;
+	} else {
+		offset = da - scp->phys_addr;
+		if (offset >= 0 && (offset + len) < scp->dram_size)
+			return (void __force *)scp->cpu_addr + offset;
+	}
+
+	return NULL;
+}
+
+static int scp_stop(struct rproc *rproc)
+{
+	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
+	int ret;
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(scp->dev, "failed to enable clocks\n");
+		return ret;
+	}
+
+	scp_reset_assert(scp);
+	/* Disable SCP watchdog */
+	writel(0, scp->reg_base + MT8183_WDT_CFG);
+	clk_disable_unprepare(scp->clk);
+
+	return 0;
+}
+
+static const struct rproc_ops scp_ops = {
+	.start		= scp_start,
+	.stop		= scp_stop,
+	.load		= scp_load,
+	.da_to_va	= scp_da_to_va,
+};
+
+/**
+ * scp_get_device() - get device struct of SCP
+ *
+ * @scp:	mtk_scp structure
+ **/
+struct device *scp_get_device(struct mtk_scp *scp)
+{
+	return scp->dev;
+}
+EXPORT_SYMBOL_GPL(scp_get_device);
+
+/**
+ * scp_get_rproc() - get rproc struct of SCP
+ *
+ * @scp:	mtk_scp structure
+ **/
+struct rproc *scp_get_rproc(struct mtk_scp *scp)
+{
+	return scp->rproc;
+}
+EXPORT_SYMBOL_GPL(scp_get_rproc);
+
+/**
+ * scp_get_vdec_hw_capa() - get video decoder hardware capability
+ *
+ * @scp:	mtk_scp structure
+ *
+ * Return: video decoder hardware capability
+ **/
+unsigned int scp_get_vdec_hw_capa(struct mtk_scp *scp)
+{
+	return scp->run.dec_capability;
+}
+EXPORT_SYMBOL_GPL(scp_get_vdec_hw_capa);
+
+/**
+ * scp_get_venc_hw_capa() - get video encoder hardware capability
+ *
+ * @scp:	mtk_scp structure
+ *
+ * Return: video encoder hardware capability
+ **/
+unsigned int scp_get_venc_hw_capa(struct mtk_scp *scp)
+{
+	return scp->run.enc_capability;
+}
+EXPORT_SYMBOL_GPL(scp_get_venc_hw_capa);
+
+/**
+ * scp_mapping_dm_addr() - Mapping SRAM/DRAM to kernel virtual address
+ *
+ * @scp:	mtk_scp structure
+ * @mem_addr:	SCP views memory address
+ *
+ * Mapping the SCP's SRAM address /
+ * DMEM (Data Extended Memory) memory address /
+ * Working buffer memory address to
+ * kernel virtual address.
+ *
+ * Return: Return ERR_PTR(-EINVAL) if mapping failed,
+ * otherwise the mapped kernel virtual address
+ **/
+void *scp_mapping_dm_addr(struct mtk_scp *scp, u32 mem_addr)
+{
+	void *ptr;
+
+	ptr = scp_da_to_va(scp->rproc, mem_addr, 0);
+	if (!ptr)
+		return ERR_PTR(-EINVAL);
+
+	return ptr;
+}
+EXPORT_SYMBOL_GPL(scp_mapping_dm_addr);
+
+static int scp_map_memory_region(struct mtk_scp *scp)
+{
+	int ret;
+
+	ret = of_reserved_mem_device_init(scp->dev);
+	if (ret) {
+		dev_err(scp->dev, "failed to assign memory-region: %d\n", ret);
+		return -ENOMEM;
+	}
+
+	/* Reserved SCP code size */
+	scp->dram_size = MAX_CODE_SIZE;
+	scp->cpu_addr = dma_alloc_coherent(scp->dev, scp->dram_size,
+					   &scp->phys_addr, GFP_KERNEL);
+	if (!scp->cpu_addr)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static void scp_unmap_memory_region(struct mtk_scp *scp)
+{
+	dma_free_coherent(scp->dev, scp->dram_size, scp->cpu_addr,
+			  scp->phys_addr);
+	of_reserved_mem_device_release(scp->dev);
+}
+
+static int scp_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct mtk_scp *scp;
+	struct rproc *rproc;
+	struct resource *res;
+	char *fw_name = "scp.img";
+	int ret, i;
+
+	rproc = rproc_alloc(dev,
+			    np->name,
+			    &scp_ops,
+			    fw_name,
+			    sizeof(*scp));
+	if (!rproc) {
+		dev_err(dev, "unable to allocate remoteproc\n");
+		return -ENOMEM;
+	}
+
+	scp = (struct mtk_scp *)rproc->priv;
+	scp->rproc = rproc;
+	scp->dev = dev;
+	platform_set_drvdata(pdev, scp);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "sram");
+	scp->sram_base = devm_ioremap_resource(dev, res);
+	if (IS_ERR((__force void *)scp->sram_base)) {
+		dev_err(dev, "Failed to parse and map sram memory\n");
+		ret = PTR_ERR((__force void *)scp->sram_base);
+		goto free_rproc;
+	}
+	scp->sram_size = resource_size(res);
+
+	mutex_init(&scp->send_lock);
+	for (i = 0; i < SCP_IPI_MAX; i++)
+		mutex_init(&scp->ipi_desc[i].lock);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "cfg");
+	scp->reg_base = devm_ioremap_resource(dev, res);
+	if (IS_ERR((__force void *)scp->reg_base)) {
+		dev_err(dev, "Failed to parse and map cfg memory\n");
+		ret = PTR_ERR((__force void *)scp->reg_base);
+		goto destroy_mutex;
+	}
+
+	ret = scp_map_memory_region(scp);
+	if (ret)
+		goto destroy_mutex;
+
+	scp->clk = devm_clk_get(dev, "main");
+	if (IS_ERR(scp->clk)) {
+		dev_err(dev, "Failed to get clock\n");
+		ret = PTR_ERR(scp->clk);
+		goto release_dev_mem;
+	}
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(dev, "failed to enable clocks\n");
+		goto release_dev_mem;
+	}
+
+	ret = scp_ipi_init(scp);
+	clk_disable_unprepare(scp->clk);
+	if (ret) {
+		dev_err(dev, "Failed to init ipi\n");
+		goto release_dev_mem;
+	}
+
+	/* register SCP initialization IPI */
+	ret = scp_ipi_register(scp, SCP_IPI_INIT, scp_init_ipi_handler, scp);
+	if (ret) {
+		dev_err(dev, "Failed to register IPI_SCP_INIT\n");
+		goto release_dev_mem;
+	}
+
+	init_waitqueue_head(&scp->run.wq);
+	init_waitqueue_head(&scp->ack_wq);
+
+	ret = devm_request_threaded_irq(dev, platform_get_irq(pdev, 0), NULL,
+					scp_irq_handler, IRQF_ONESHOT,
+					pdev->name, scp);
+
+	if (ret) {
+		dev_err(dev, "failed to request irq\n");
+		goto unregister_ipi;
+	}
+
+	ret = rproc_add(rproc);
+	if (ret)
+		goto unregister_ipi;
+
+	return ret;
+
+unregister_ipi:
+	scp_ipi_unregister(scp, SCP_IPI_INIT);
+release_dev_mem:
+	scp_unmap_memory_region(scp);
+destroy_mutex:
+	for (i = 0; i < SCP_IPI_MAX; i++)
+		mutex_destroy(&scp->ipi_desc[i].lock);
+	mutex_destroy(&scp->send_lock);
+free_rproc:
+	rproc_free(rproc);
+
+	return ret;
+}
+
+static int scp_remove(struct platform_device *pdev)
+{
+	struct mtk_scp *scp = platform_get_drvdata(pdev);
+	int i;
+
+	rproc_del(scp->rproc);
+	scp_ipi_unregister(scp, SCP_IPI_INIT);
+	scp_unmap_memory_region(scp);
+	for (i = 0; i < SCP_IPI_MAX; i++)
+		mutex_destroy(&scp->ipi_desc[i].lock);
+	mutex_destroy(&scp->send_lock);
+	rproc_free(scp->rproc);
+
+	return 0;
+}
+
+static const struct of_device_id mtk_scp_of_match[] = {
+	{ .compatible = "mediatek,mt8183-scp"},
+	{},
+};
+MODULE_DEVICE_TABLE(of, mtk_scp_of_match);
+
+static struct platform_driver mtk_scp_driver = {
+	.probe = scp_probe,
+	.remove = scp_remove,
+	.driver = {
+		.name = "mtk-scp",
+		.of_match_table = of_match_ptr(mtk_scp_of_match),
+	},
+};
+
+module_platform_driver(mtk_scp_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("MediaTek SCP control driver");
diff --git a/drivers/remoteproc/mtk_scp_ipi.c b/drivers/remoteproc/mtk_scp_ipi.c
new file mode 100644
index 000000000000..abdb7944368a
--- /dev/null
+++ b/drivers/remoteproc/mtk_scp_ipi.c
@@ -0,0 +1,218 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2019 MediaTek Inc.
+
+#include <asm/barrier.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/remoteproc/mtk_scp.h>
+
+#include "mtk_common.h"
+
+/**
+ * scp_ipi_register() - register an ipi function
+ *
+ * @scp:	mtk_scp structure
+ * @id:		IPI ID
+ * @handler:	IPI handler
+ * @priv:	private data for IPI handler
+ *
+ * Register an ipi function to receive ipi interrupt from SCP.
+ *
+ * Returns 0 if ipi registers successfully, -error on error.
+ */
+int scp_ipi_register(struct mtk_scp *scp,
+		     u32 id,
+		     scp_ipi_handler_t handler,
+		     void *priv)
+{
+	if (!scp) {
+		dev_err(scp->dev, "scp device is not ready\n");
+		return -EPROBE_DEFER;
+	}
+
+	if (WARN_ON(id >= SCP_IPI_MAX) || WARN_ON(handler == NULL))
+		return -EINVAL;
+
+	scp_ipi_lock(scp, id);
+	scp->ipi_desc[id].handler = handler;
+	scp->ipi_desc[id].priv = priv;
+	scp_ipi_unlock(scp, id);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(scp_ipi_register);
+
+/**
+ * scp_ipi_unregister() - unregister an ipi function
+ *
+ * @scp:	mtk_scp structure
+ * @id:		IPI ID
+ *
+ * Unregister an ipi function to receive ipi interrupt from SCP.
+ */
+void scp_ipi_unregister(struct mtk_scp *scp, u32 id)
+{
+	if (!scp)
+		return;
+
+	if (WARN_ON(id >= SCP_IPI_MAX))
+		return;
+
+	scp_ipi_lock(scp, id);
+	scp->ipi_desc[id].handler = NULL;
+	scp->ipi_desc[id].priv = NULL;
+	scp_ipi_unlock(scp, id);
+}
+EXPORT_SYMBOL_GPL(scp_ipi_unregister);
+
+/*
+ * scp_memcpy_aligned() - Copy src to dst, where dst is in SCP SRAM region.
+ *
+ * @dst:	Pointer to the destination buffer, should be in SCP SRAM region.
+ * @src:	Pointer to the source buffer.
+ * @len:	Length of the source buffer to be copied.
+ *
+ * Since AP access of SCP SRAM don't support byte write, this always write a
+ * full word at a time, and may cause some extra bytes to be written at the
+ * beginning & ending of dst.
+ */
+void scp_memcpy_aligned(void __iomem *dst, const void *src, unsigned int len)
+{
+	void __iomem *ptr;
+	u32 val;
+	unsigned int i = 0, remain;
+
+	if (!IS_ALIGNED((unsigned long)dst, 4)) {
+		ptr = (void __iomem *)ALIGN_DOWN((unsigned long)dst, 4);
+		i = 4 - (dst - ptr);
+		val = readl_relaxed(ptr);
+		memcpy((u8 *)&val + (4 - i), src, i);
+		writel_relaxed(val, ptr);
+	}
+
+	__iowrite32_copy(dst + i, src + i, (len - i) / 4);
+	remain = (len - i) % 4;
+
+	if (remain > 0) {
+		val = readl_relaxed(dst + len - remain);
+		memcpy(&val, src + len - remain, remain);
+		writel_relaxed(val, dst + len - remain);
+	}
+}
+EXPORT_SYMBOL_GPL(scp_memcpy_aligned);
+
+/**
+ * scp_ipi_lock() - Lock before operations of an IPI ID
+ *
+ * @scp:	mtk_scp structure
+ * @id:		IPI ID
+ *
+ * Note: This should not be used by drivers other than mtk_scp.
+ */
+void scp_ipi_lock(struct mtk_scp *scp, u32 id)
+{
+	if (WARN_ON(id >= SCP_IPI_MAX))
+		return;
+	mutex_lock(&scp->ipi_desc[id].lock);
+}
+EXPORT_SYMBOL_GPL(scp_ipi_lock);
+
+/**
+ * scp_ipi_lock() - Unlock after operations of an IPI ID
+ *
+ * @scp:	mtk_scp structure
+ * @id:		IPI ID
+ *
+ * Note: This should not be used by drivers other than mtk_scp.
+ */
+void scp_ipi_unlock(struct mtk_scp *scp, u32 id)
+{
+	if (WARN_ON(id >= SCP_IPI_MAX))
+		return;
+	mutex_unlock(&scp->ipi_desc[id].lock);
+}
+EXPORT_SYMBOL_GPL(scp_ipi_unlock);
+
+/**
+ * scp_ipi_send() - send data from AP to scp.
+ *
+ * @scp:	mtk_scp structure
+ * @id:		IPI ID
+ * @buf:	the data buffer
+ * @len:	the data buffer length
+ * @wait:	number of msecs to wait for ack. 0 to skip waiting.
+ *
+ * This function is thread-safe. When this function returns,
+ * SCP has received the data and starts the processing.
+ * When the processing completes, IPI handler registered
+ * by scp_ipi_register will be called in interrupt context.
+ *
+ * Returns 0 if sending data successfully, -error on error.
+ **/
+int scp_ipi_send(struct mtk_scp *scp, u32 id, void *buf, unsigned int len,
+		 unsigned int wait)
+{
+	struct mtk_share_obj __iomem *send_obj = scp->send_buf;
+	unsigned long timeout;
+	int ret;
+
+	if (WARN_ON(id <= SCP_IPI_INIT) || WARN_ON(id >= SCP_IPI_MAX) ||
+	    WARN_ON(len > sizeof(send_obj->share_buf)) || WARN_ON(!buf))
+		return -EINVAL;
+
+	mutex_lock(&scp->send_lock);
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(scp->dev, "failed to enable clock\n");
+		goto unlock_mutex;
+	}
+
+	 /* Wait until SCP receives the last command */
+	timeout = jiffies + msecs_to_jiffies(2000);
+	do {
+		if (time_after(jiffies, timeout)) {
+			dev_err(scp->dev, "%s: IPI timeout!\n", __func__);
+			ret = -ETIMEDOUT;
+			goto clock_disable;
+		}
+	} while (readl(scp->reg_base + MT8183_HOST_TO_SCP));
+
+	scp_memcpy_aligned(send_obj->share_buf, buf, len);
+
+	writel(len, &send_obj->len);
+	writel(id, &send_obj->id);
+
+	scp->ipi_id_ack[id] = false;
+	/* send the command to SCP */
+	writel(MT8183_HOST_IPC_INT_BIT, scp->reg_base + MT8183_HOST_TO_SCP);
+
+	if (wait) {
+		/* wait for SCP's ACK */
+		timeout = msecs_to_jiffies(wait);
+		ret = wait_event_timeout(scp->ack_wq,
+					 scp->ipi_id_ack[id],
+					 timeout);
+		scp->ipi_id_ack[id] = false;
+		if (WARN(!ret, "scp ipi %d ack time out !", id))
+			ret = -EIO;
+		else
+			ret = 0;
+	}
+
+clock_disable:
+	clk_disable_unprepare(scp->clk);
+unlock_mutex:
+	mutex_unlock(&scp->send_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(scp_ipi_send);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("MediaTek scp IPI interface");
diff --git a/include/linux/remoteproc/mtk_scp.h b/include/linux/remoteproc/mtk_scp.h
new file mode 100644
index 000000000000..80f5eab2ac2d
--- /dev/null
+++ b/include/linux/remoteproc/mtk_scp.h
@@ -0,0 +1,65 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef _MTK_SCP_H
+#define _MTK_SCP_H
+
+#include <linux/platform_device.h>
+
+typedef void (*scp_ipi_handler_t) (void *data,
+				   unsigned int len,
+				   void *priv);
+struct mtk_scp;
+
+/**
+ * enum ipi_id - the id of inter-processor interrupt
+ *
+ * @SCP_IPI_INIT:	 The interrupt from scp is to notfiy kernel
+ *			 SCP initialization completed.
+ *			 IPI_SCP_INIT is sent from SCP when firmware is
+ *			 loaded. AP doesn't need to send IPI_SCP_INIT
+ *			 command to SCP.
+ *			 For other IPI below, AP should send the request
+ *			 to SCP to trigger the interrupt.
+ * @SCP_IPI_MAX:	 The maximum IPI number
+ */
+
+enum scp_ipi_id {
+	SCP_IPI_INIT = 0,
+	SCP_IPI_VDEC_H264,
+	SCP_IPI_VDEC_VP8,
+	SCP_IPI_VDEC_VP9,
+	SCP_IPI_VENC_H264,
+	SCP_IPI_VENC_VP8,
+	SCP_IPI_MDP_INIT,
+	SCP_IPI_MDP_DEINIT,
+	SCP_IPI_MDP_FRAME,
+	SCP_IPI_DIP,
+	SCP_IPI_ISP_CMD,
+	SCP_IPI_ISP_FRAME,
+	SCP_IPI_FD_CMD,
+	SCP_IPI_CROS_HOST_CMD,
+	SCP_IPI_MAX,
+};
+
+struct mtk_scp *scp_get(struct platform_device *pdev);
+void scp_put(struct mtk_scp *scp);
+
+struct device *scp_get_device(struct mtk_scp *scp);
+struct rproc *scp_get_rproc(struct mtk_scp *scp);
+
+int scp_ipi_register(struct mtk_scp *scp, u32 id, scp_ipi_handler_t handler,
+		     void *priv);
+void scp_ipi_unregister(struct mtk_scp *scp, u32 id);
+
+int scp_ipi_send(struct mtk_scp *scp, u32 id, void *buf, unsigned int len,
+		 unsigned int wait);
+
+unsigned int scp_get_vdec_hw_capa(struct mtk_scp *scp);
+unsigned int scp_get_venc_hw_capa(struct mtk_scp *scp);
+
+void *scp_mapping_dm_addr(struct mtk_scp *scp, u32 mem_addr);
+
+#endif /* _MTK_SCP_H */
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
