Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04BA8E56B
	for <lists+linux-mediatek@lfdr.de>; Thu, 15 Aug 2019 09:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxgcC460M8qa4lGNZ+Uonua8dDax4S6ZKWXY0CtAQe8=; b=hS3dy371a68WZI
	UsaV3pvk8o0Dxltn2lDiAevQH5P+P8wXp+548J44JtlwNQgHUhMCOcvs/6O6FCgS+SMf1hKkKQkjY
	Wl1BTdTzf124FTeauQO1gkowPFL2/Z1iusrJnwB3ZzSizP4f5Qinx5neVUdslxD8WJYmbzjQ/npr4
	NgrgrLmLGCGod8j1v91Ef0Ou6UejRK7OcS6iKi9kt+huq5jwpdhNMI7+KpUbvp26VYxcSm5H89ORq
	zFEmyNDxl2A452fRbFLi1y/J6r3L9gVi0Y+Mpo5mI7eAFW1xmYU4+8EN+B6VNEXLk2Hd4Bdx9+M9I
	SUHensThQcsbyHce67mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyA1z-00069p-P0; Thu, 15 Aug 2019 07:18:43 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyA0H-0004p7-Rd
 for linux-mediatek@lists.infradead.org; Thu, 15 Aug 2019 07:17:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id 4so771383pld.10
 for <linux-mediatek@lists.infradead.org>; Thu, 15 Aug 2019 00:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DZTSX7ccJSUyuLEoO13AIUQ0zDAbaqX7jusVYQstoEY=;
 b=mv2WnTyqIhIjgIg8VlwNudQKW+Zr3W0OJ5jLAMVtptrUHvNYV+c7lS0KLP3qWS0tHN
 JuJmuSHTYDbhV7InzxUh5rkBcJQlRVRp+ka0u9JAQYomBXe9XAyvpi4s2I14yelBNWLV
 LawfQ8dF0aDr3Kc31nfF9AV0xBqJQS+uzdcjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DZTSX7ccJSUyuLEoO13AIUQ0zDAbaqX7jusVYQstoEY=;
 b=I9ifM/MXRUxFPb/i/cCREOM41X4CfNi37aRaWE5sZ9NT1Znc+/s93yIu7+/O96GyhK
 5xQGO1ShlzgR88F2xSfcZHFjU3L5Z2NZ8oZpCw98wBFd6y0LE4TlVg0CDUOdKS1EY8Hi
 3IAwrkTQlCJn3jq68E3l4N5kY0s2SRYKj9637IMpzGfp/fTsEYvtDZ62GHfMOgYrtz5w
 bnTuZASUDZbuxtrr2UGLyu/JIE2NGdyTP8n+HKaUPl+V6DF2OYBzAgx92koPnX8wHr3h
 gJs9BGo7FlAoOwY8MhIpVRkL7tXCiTKC2A8O5GtIUxmdfckbFhsnvi/5dh7qrCWuNMLH
 cLkQ==
X-Gm-Message-State: APjAAAXaBcB5upv9aIkKTB9n6sQeelUYq/AxfXybseM1mc5psgCOGY+M
 Tt46OTbRlk+tv8iTPoLmhmwfOw==
X-Google-Smtp-Source: APXvYqwHUi5bxcmpkkTZbRFIWzdcV07eywpOuebzpvvmz39/MTzoautID3g3P1wVnY15ZLVyHW0U0g==
X-Received: by 2002:a17:902:b48f:: with SMTP id
 y15mr3186839plr.268.1565853416847; 
 Thu, 15 Aug 2019 00:16:56 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id v6sm1768727pff.78.2019.08.15.00.16.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 15 Aug 2019 00:16:56 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v16 4/5] rpmsg: add rpmsg support for mt8183 SCP.
Date: Thu, 15 Aug 2019 15:16:28 +0800
Message-Id: <20190815071635.168671-5-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
In-Reply-To: <20190815071635.168671-1-pihsun@chromium.org>
References: <20190815071635.168671-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_001658_006387_007EB5E8 
X-CRM114-Status: GOOD (  27.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
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

Add a simple rpmsg support for mt8183 SCP, that use IPI / IPC directly.

Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
Changes from v15:
 - No change.

Changes from v14:
 - Change year on Copyright header to 2019.

Changes from v13:
 - No change.

Changes from v12:
 - Use strscpy instead of strncpy.

Changes from v11:
 - Fix a bug that when rproc_boot fails, the ns_ept won't be properly
   destroyed, causing memory leak.
 - Add documentation for mtk_rpmsg_info.

Changes from v10, v9, v8, v7:
 - No change.

Changes from v6:
 - Decouple mtk_rpmsg from mtk_scp by putting all necessary informations
   (name service IPI id, register/unregister/send functions) into a
   struct, and pass it to the mtk_rpmsg_create_rproc_subdev function.

Changes from v5:
 - CONFIG_MTK_SCP now selects CONFIG_RPMSG_MTK_SCP, and the dummy
   implementation for mtk_rpmsg_{create,destroy}_rproc_subdev when
   CONFIG_RPMSG_MTK_SCP is not defined is removed.

Changes from v4:
 - Match and fill the device tree node to the created rpmsg subdevice,
   so the rpmsg subdevice can utilize the properties and subnodes on
   device tree (This is similar to what drivers/rpmsg/qcom_smd.c does).

Changes from v3:
 - Change from unprepare to stop, to stop the rpmsg driver before the
   rproc is stopped, avoiding problem that some rpmsg would fail after
   rproc is stopped.
 - Add missing spin_lock_init, and use destroy_ept instead of kref_put.

Changes from v2:
 - Unregiser IPI handler on unprepare.
 - Lock the channel list on operations.
 - Move SCP_IPI_NS_SERVICE to 0xFF.

Changes from v1:
 - Do cleanup properly in mtk_rpmsg.c, which also removes the problem of
   short-lived work items.
 - Fix several issues checkpatch found.
---
 drivers/remoteproc/Kconfig         |   1 +
 drivers/remoteproc/mtk_common.h    |   2 +
 drivers/remoteproc/mtk_scp.c       |  38 ++-
 drivers/remoteproc/mtk_scp_ipi.c   |   1 +
 drivers/rpmsg/Kconfig              |   9 +
 drivers/rpmsg/Makefile             |   1 +
 drivers/rpmsg/mtk_rpmsg.c          | 414 +++++++++++++++++++++++++++++
 include/linux/remoteproc/mtk_scp.h |   4 +-
 include/linux/rpmsg/mtk_rpmsg.h    |  38 +++
 9 files changed, 503 insertions(+), 5 deletions(-)
 create mode 100644 drivers/rpmsg/mtk_rpmsg.c
 create mode 100644 include/linux/rpmsg/mtk_rpmsg.h

diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
index ea71cad399f7..cff3a9fa817b 100644
--- a/drivers/remoteproc/Kconfig
+++ b/drivers/remoteproc/Kconfig
@@ -26,6 +26,7 @@ config IMX_REMOTEPROC
 config MTK_SCP
 	tristate "Mediatek SCP support"
 	depends on ARCH_MEDIATEK
+	select RPMSG_MTK_SCP
 	help
 	  Say y here to support Mediatek's System Companion Processor (SCP) via
 	  the remote processor framework.
diff --git a/drivers/remoteproc/mtk_common.h b/drivers/remoteproc/mtk_common.h
index e213039543ec..dbf9b339a0b7 100644
--- a/drivers/remoteproc/mtk_common.h
+++ b/drivers/remoteproc/mtk_common.h
@@ -69,6 +69,8 @@ struct mtk_scp {
 	void __iomem *cpu_addr;
 	phys_addr_t phys_addr;
 	size_t dram_size;
+
+	struct rproc_subdev *rpmsg_subdev;
 };
 
 /**
diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
index ae820a35bd52..33d98903c195 100644
--- a/drivers/remoteproc/mtk_scp.c
+++ b/drivers/remoteproc/mtk_scp.c
@@ -13,6 +13,7 @@
 #include <linux/platform_device.h>
 #include <linux/remoteproc.h>
 #include <linux/remoteproc/mtk_scp.h>
+#include <linux/rpmsg/mtk_rpmsg.h>
 
 #include "mtk_common.h"
 #include "remoteproc_internal.h"
@@ -541,6 +542,31 @@ static int scp_map_memory_region(struct mtk_scp *scp)
 	return 0;
 }
 
+static struct mtk_rpmsg_info mtk_scp_rpmsg_info = {
+	.send_ipi = scp_ipi_send,
+	.register_ipi = scp_ipi_register,
+	.unregister_ipi = scp_ipi_unregister,
+	.ns_ipi_id = SCP_IPI_NS_SERVICE,
+};
+
+static void scp_add_rpmsg_subdev(struct mtk_scp *scp)
+{
+	scp->rpmsg_subdev =
+		mtk_rpmsg_create_rproc_subdev(to_platform_device(scp->dev),
+					      &mtk_scp_rpmsg_info);
+	if (scp->rpmsg_subdev)
+		rproc_add_subdev(scp->rproc, scp->rpmsg_subdev);
+}
+
+static void scp_remove_rpmsg_subdev(struct mtk_scp *scp)
+{
+	if (scp->rpmsg_subdev) {
+		rproc_remove_subdev(scp->rproc, scp->rpmsg_subdev);
+		mtk_rpmsg_destroy_rproc_subdev(scp->rpmsg_subdev);
+		scp->rpmsg_subdev = NULL;
+	}
+}
+
 static int scp_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -623,22 +649,25 @@ static int scp_probe(struct platform_device *pdev)
 	init_waitqueue_head(&scp->run.wq);
 	init_waitqueue_head(&scp->ack_wq);
 
+	scp_add_rpmsg_subdev(scp);
+
 	ret = devm_request_threaded_irq(dev, platform_get_irq(pdev, 0), NULL,
 					scp_irq_handler, IRQF_ONESHOT,
 					pdev->name, scp);
 
 	if (ret) {
 		dev_err(dev, "failed to request irq\n");
-		goto destroy_mutex;
+		goto remove_subdev;
 	}
 
 	ret = rproc_add(rproc);
 	if (ret)
-		goto destroy_mutex;
+		goto remove_subdev;
 
-	return ret;
+	return 0;
 
-destroy_mutex:
+remove_subdev:
+	scp_remove_rpmsg_subdev(scp);
 	mutex_destroy(&scp->desc_lock);
 	mutex_destroy(&scp->send_lock);
 free_rproc:
@@ -651,6 +680,7 @@ static int scp_remove(struct platform_device *pdev)
 {
 	struct mtk_scp *scp = platform_get_drvdata(pdev);
 
+	scp_remove_rpmsg_subdev(scp);
 	mutex_destroy(&scp->desc_lock);
 	mutex_destroy(&scp->send_lock);
 	rproc_del(scp->rproc);
diff --git a/drivers/remoteproc/mtk_scp_ipi.c b/drivers/remoteproc/mtk_scp_ipi.c
index 1bff5567df8e..7d59491bec9c 100644
--- a/drivers/remoteproc/mtk_scp_ipi.c
+++ b/drivers/remoteproc/mtk_scp_ipi.c
@@ -99,6 +99,7 @@ int scp_ipi_send(struct platform_device *pdev,
 	int ret;
 
 	if (WARN_ON(id <= SCP_IPI_INIT) || WARN_ON(id >= SCP_IPI_MAX) ||
+	    WARN_ON(id == SCP_IPI_NS_SERVICE) ||
 	    WARN_ON(len > sizeof(send_obj->share_buf)) || WARN_ON(!buf))
 		return -EINVAL;
 
diff --git a/drivers/rpmsg/Kconfig b/drivers/rpmsg/Kconfig
index d0322b41eca5..85e3cc075cb4 100644
--- a/drivers/rpmsg/Kconfig
+++ b/drivers/rpmsg/Kconfig
@@ -15,6 +15,15 @@ config RPMSG_CHAR
 	  in /dev. They make it possible for user-space programs to send and
 	  receive rpmsg packets.
 
+config RPMSG_MTK_SCP
+	tristate "MediaTek SCP"
+	depends on MTK_SCP
+	select RPMSG
+	help
+	  Say y here to enable support providing communication channels to
+	  remote processors in MediaTek platforms.
+	  This use IPI and IPC to communicate with remote processors.
+
 config RPMSG_QCOM_GLINK_NATIVE
 	tristate
 	select RPMSG
diff --git a/drivers/rpmsg/Makefile b/drivers/rpmsg/Makefile
index 9aa859502d27..ae92a7fb08f6 100644
--- a/drivers/rpmsg/Makefile
+++ b/drivers/rpmsg/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_RPMSG)		+= rpmsg_core.o
 obj-$(CONFIG_RPMSG_CHAR)	+= rpmsg_char.o
+obj-$(CONFIG_RPMSG_MTK_SCP)	+= mtk_rpmsg.o
 obj-$(CONFIG_RPMSG_QCOM_GLINK_RPM) += qcom_glink_rpm.o
 obj-$(CONFIG_RPMSG_QCOM_GLINK_NATIVE) += qcom_glink_native.o
 obj-$(CONFIG_RPMSG_QCOM_GLINK_SMEM) += qcom_glink_smem.o
diff --git a/drivers/rpmsg/mtk_rpmsg.c b/drivers/rpmsg/mtk_rpmsg.c
new file mode 100644
index 000000000000..ebe52c302734
--- /dev/null
+++ b/drivers/rpmsg/mtk_rpmsg.c
@@ -0,0 +1,414 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright 2019 Google LLC.
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/remoteproc.h>
+#include <linux/rpmsg/mtk_rpmsg.h>
+#include <linux/workqueue.h>
+
+#include "rpmsg_internal.h"
+
+struct mtk_rpmsg_rproc_subdev {
+	struct platform_device *pdev;
+	struct mtk_rpmsg_info *info;
+	struct rpmsg_endpoint *ns_ept;
+	struct rproc_subdev subdev;
+
+	struct work_struct register_work;
+	struct list_head channels;
+	struct mutex channels_lock;
+};
+
+#define to_mtk_subdev(d) container_of(d, struct mtk_rpmsg_rproc_subdev, subdev)
+
+struct mtk_rpmsg_channel_info {
+	struct rpmsg_channel_info info;
+	bool registered;
+	struct list_head list;
+};
+
+/**
+ * struct rpmsg_ns_msg - dynamic name service announcement message
+ * @name: name of remote service that is published
+ * @addr: address of remote service that is published
+ *
+ * This message is sent across to publish a new service. When we receive these
+ * messages, an appropriate rpmsg channel (i.e device) is created. In turn, the
+ * ->probe() handler of the appropriate rpmsg driver will be invoked
+ *  (if/as-soon-as one is registered).
+ */
+struct rpmsg_ns_msg {
+	char name[RPMSG_NAME_SIZE];
+	u32 addr;
+} __packed;
+
+struct mtk_rpmsg_device {
+	struct rpmsg_device rpdev;
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev;
+};
+
+struct mtk_rpmsg_endpoint {
+	struct rpmsg_endpoint ept;
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev;
+};
+
+#define to_mtk_rpmsg_device(r) container_of(r, struct mtk_rpmsg_device, rpdev)
+#define to_mtk_rpmsg_endpoint(r) container_of(r, struct mtk_rpmsg_endpoint, ept)
+
+static const struct rpmsg_endpoint_ops mtk_rpmsg_endpoint_ops;
+
+static void __ept_release(struct kref *kref)
+{
+	struct rpmsg_endpoint *ept = container_of(kref, struct rpmsg_endpoint,
+						  refcount);
+	kfree(to_mtk_rpmsg_endpoint(ept));
+}
+
+static void mtk_rpmsg_ipi_handler(void *data, unsigned int len, void *priv)
+{
+	struct mtk_rpmsg_endpoint *mept = priv;
+	struct rpmsg_endpoint *ept = &mept->ept;
+	int ret;
+
+	ret = (*ept->cb)(ept->rpdev, data, len, ept->priv, ept->addr);
+	if (ret)
+		dev_warn(&ept->rpdev->dev, "rpmsg handler return error = %d",
+			 ret);
+}
+
+static struct rpmsg_endpoint *
+__rpmsg_create_ept(struct mtk_rpmsg_rproc_subdev *mtk_subdev,
+		   struct rpmsg_device *rpdev, rpmsg_rx_cb_t cb, void *priv,
+		   u32 id)
+{
+	struct mtk_rpmsg_endpoint *mept;
+	struct rpmsg_endpoint *ept;
+	struct platform_device *pdev = mtk_subdev->pdev;
+	int ret;
+
+	mept = kzalloc(sizeof(*mept), GFP_KERNEL);
+	if (!mept)
+		return NULL;
+	mept->mtk_subdev = mtk_subdev;
+
+	ept = &mept->ept;
+	kref_init(&ept->refcount);
+
+	ept->rpdev = rpdev;
+	ept->cb = cb;
+	ept->priv = priv;
+	ept->ops = &mtk_rpmsg_endpoint_ops;
+	ept->addr = id;
+
+	ret = mtk_subdev->info->register_ipi(pdev, id, mtk_rpmsg_ipi_handler,
+					     mept);
+	if (ret) {
+		dev_err(&pdev->dev, "IPI register failed, id = %d", id);
+		kref_put(&ept->refcount, __ept_release);
+		return NULL;
+	}
+
+	return ept;
+}
+
+static struct rpmsg_endpoint *
+mtk_rpmsg_create_ept(struct rpmsg_device *rpdev, rpmsg_rx_cb_t cb, void *priv,
+		     struct rpmsg_channel_info chinfo)
+{
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev =
+		to_mtk_rpmsg_device(rpdev)->mtk_subdev;
+
+	return __rpmsg_create_ept(mtk_subdev, rpdev, cb, priv, chinfo.src);
+}
+
+static void mtk_rpmsg_destroy_ept(struct rpmsg_endpoint *ept)
+{
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev =
+		to_mtk_rpmsg_endpoint(ept)->mtk_subdev;
+
+	mtk_subdev->info->unregister_ipi(mtk_subdev->pdev, ept->addr);
+	kref_put(&ept->refcount, __ept_release);
+}
+
+static int mtk_rpmsg_send(struct rpmsg_endpoint *ept, void *data, int len)
+{
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev =
+		to_mtk_rpmsg_endpoint(ept)->mtk_subdev;
+
+	return mtk_subdev->info->send_ipi(mtk_subdev->pdev, ept->addr, data,
+					  len, 0);
+}
+
+static int mtk_rpmsg_trysend(struct rpmsg_endpoint *ept, void *data, int len)
+{
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev =
+		to_mtk_rpmsg_endpoint(ept)->mtk_subdev;
+
+	/*
+	 * TODO: This currently is same as mtk_rpmsg_send, and wait until SCP
+	 * received the last command.
+	 */
+	return mtk_subdev->info->send_ipi(mtk_subdev->pdev, ept->addr, data,
+					  len, 0);
+}
+
+static const struct rpmsg_endpoint_ops mtk_rpmsg_endpoint_ops = {
+	.destroy_ept = mtk_rpmsg_destroy_ept,
+	.send = mtk_rpmsg_send,
+	.trysend = mtk_rpmsg_trysend,
+};
+
+static void mtk_rpmsg_release_device(struct device *dev)
+{
+	struct rpmsg_device *rpdev = to_rpmsg_device(dev);
+	struct mtk_rpmsg_device *mdev = to_mtk_rpmsg_device(rpdev);
+
+	kfree(mdev);
+}
+
+static const struct rpmsg_device_ops mtk_rpmsg_device_ops = {
+	.create_ept = mtk_rpmsg_create_ept,
+};
+
+static struct device_node *
+mtk_rpmsg_match_device_subnode(struct device_node *node, const char *channel)
+{
+	struct device_node *child;
+	const char *name;
+	int ret;
+
+	for_each_available_child_of_node(node, child) {
+		ret = of_property_read_string(child, "mtk,rpmsg-name", &name);
+		if (ret)
+			continue;
+
+		if (strcmp(name, channel) == 0)
+			return child;
+	}
+
+	return NULL;
+}
+
+static int mtk_rpmsg_register_device(struct mtk_rpmsg_rproc_subdev *mtk_subdev,
+				     struct rpmsg_channel_info *info)
+{
+	struct rpmsg_device *rpdev;
+	struct mtk_rpmsg_device *mdev;
+	struct platform_device *pdev = mtk_subdev->pdev;
+	int ret;
+
+	mdev = kzalloc(sizeof(*mdev), GFP_KERNEL);
+	if (!mdev)
+		return -ENOMEM;
+
+	mdev->mtk_subdev = mtk_subdev;
+
+	rpdev = &mdev->rpdev;
+	rpdev->ops = &mtk_rpmsg_device_ops;
+	rpdev->src = info->src;
+	rpdev->dst = info->dst;
+	strscpy(rpdev->id.name, info->name, RPMSG_NAME_SIZE);
+
+	rpdev->dev.of_node =
+		mtk_rpmsg_match_device_subnode(pdev->dev.of_node, info->name);
+	rpdev->dev.parent = &pdev->dev;
+	rpdev->dev.release = mtk_rpmsg_release_device;
+
+	ret = rpmsg_register_device(rpdev);
+	if (ret) {
+		kfree(mdev);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void mtk_register_device_work_function(struct work_struct *register_work)
+{
+	struct mtk_rpmsg_rproc_subdev *subdev = container_of(
+		register_work, struct mtk_rpmsg_rproc_subdev, register_work);
+	struct platform_device *pdev = subdev->pdev;
+	struct mtk_rpmsg_channel_info *info;
+	int ret;
+
+	mutex_lock(&subdev->channels_lock);
+	list_for_each_entry(info, &subdev->channels, list) {
+		if (info->registered)
+			continue;
+
+		ret = mtk_rpmsg_register_device(subdev, &info->info);
+		if (ret) {
+			dev_err(&pdev->dev, "Can't create rpmsg_device\n");
+			continue;
+		}
+
+		info->registered = true;
+	}
+	mutex_unlock(&subdev->channels_lock);
+}
+
+static int mtk_rpmsg_create_device(struct mtk_rpmsg_rproc_subdev *mtk_subdev,
+				   char *name, u32 addr)
+{
+	struct mtk_rpmsg_channel_info *info;
+
+	info = kzalloc(sizeof(*info), GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+
+	strscpy(info->info.name, name, RPMSG_NAME_SIZE);
+	info->info.src = addr;
+	info->info.dst = RPMSG_ADDR_ANY;
+	mutex_lock(&mtk_subdev->channels_lock);
+	list_add(&info->list, &mtk_subdev->channels);
+	mutex_unlock(&mtk_subdev->channels_lock);
+
+	schedule_work(&mtk_subdev->register_work);
+	return 0;
+}
+
+static int mtk_rpmsg_ns_cb(struct rpmsg_device *rpdev, void *data, int len,
+			   void *priv, u32 src)
+{
+	struct rpmsg_ns_msg *msg = data;
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev = priv;
+	struct device *dev = &mtk_subdev->pdev->dev;
+
+	int ret;
+
+	if (len != sizeof(*msg)) {
+		dev_err(dev, "malformed ns msg (%d)\n", len);
+		return -EINVAL;
+	}
+
+	/*
+	 * the name service ept does _not_ belong to a real rpmsg channel,
+	 * and is handled by the rpmsg bus itself.
+	 * for sanity reasons, make sure a valid rpdev has _not_ sneaked
+	 * in somehow.
+	 */
+	if (rpdev) {
+		dev_err(dev, "anomaly: ns ept has an rpdev handle\n");
+		return -EINVAL;
+	}
+
+	/* don't trust the remote processor for null terminating the name */
+	msg->name[RPMSG_NAME_SIZE - 1] = '\0';
+
+	dev_info(dev, "creating channel %s addr 0x%x\n", msg->name, msg->addr);
+
+	ret = mtk_rpmsg_create_device(mtk_subdev, msg->name, msg->addr);
+	if (ret) {
+		dev_err(dev, "create rpmsg device failed\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+int mtk_rpmsg_prepare(struct rproc_subdev *subdev)
+{
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev = to_mtk_subdev(subdev);
+
+	/* a dedicated endpoint handles the name service msgs */
+	if (mtk_subdev->info->ns_ipi_id >= 0) {
+		mtk_subdev->ns_ept =
+			__rpmsg_create_ept(mtk_subdev, NULL, mtk_rpmsg_ns_cb,
+					   mtk_subdev,
+					   mtk_subdev->info->ns_ipi_id);
+		if (!mtk_subdev->ns_ept) {
+			dev_err(&mtk_subdev->pdev->dev,
+				"failed to create name service endpoint\n");
+			return -ENOMEM;
+		}
+	}
+
+	return 0;
+}
+
+void mtk_rpmsg_unprepare(struct rproc_subdev *subdev)
+{
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev = to_mtk_subdev(subdev);
+
+	if (mtk_subdev->ns_ept) {
+		mtk_rpmsg_destroy_ept(mtk_subdev->ns_ept);
+		mtk_subdev->ns_ept = NULL;
+	}
+}
+
+void mtk_rpmsg_stop(struct rproc_subdev *subdev, bool crashed)
+{
+	struct mtk_rpmsg_channel_info *info, *next;
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev = to_mtk_subdev(subdev);
+	struct device *dev = &mtk_subdev->pdev->dev;
+
+	/*
+	 * Destroy the name service endpoint here, to avoid new channel being
+	 * created after the rpmsg_unregister_device loop below.
+	 */
+	if (mtk_subdev->ns_ept) {
+		mtk_rpmsg_destroy_ept(mtk_subdev->ns_ept);
+		mtk_subdev->ns_ept = NULL;
+	}
+
+	cancel_work_sync(&mtk_subdev->register_work);
+
+	mutex_lock(&mtk_subdev->channels_lock);
+	list_for_each_entry(info, &mtk_subdev->channels, list) {
+		if (!info->registered)
+			continue;
+		if (rpmsg_unregister_device(dev, &info->info)) {
+			dev_warn(
+				dev,
+				"rpmsg_unregister_device failed for %s.%d.%d\n",
+				info->info.name, info->info.src,
+				info->info.dst);
+		}
+	}
+
+	list_for_each_entry_safe(info, next,
+				 &mtk_subdev->channels, list) {
+		list_del(&info->list);
+		kfree(info);
+	}
+	mutex_unlock(&mtk_subdev->channels_lock);
+}
+
+struct rproc_subdev *
+mtk_rpmsg_create_rproc_subdev(struct platform_device *pdev,
+			      struct mtk_rpmsg_info *info)
+{
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev;
+
+	mtk_subdev = kzalloc(sizeof(*mtk_subdev), GFP_KERNEL);
+	if (!mtk_subdev)
+		return NULL;
+
+	mtk_subdev->pdev = pdev;
+	mtk_subdev->subdev.prepare = mtk_rpmsg_prepare;
+	mtk_subdev->subdev.stop = mtk_rpmsg_stop;
+	mtk_subdev->subdev.unprepare = mtk_rpmsg_unprepare;
+	mtk_subdev->info = info;
+	INIT_LIST_HEAD(&mtk_subdev->channels);
+	INIT_WORK(&mtk_subdev->register_work,
+		  mtk_register_device_work_function);
+	mutex_init(&mtk_subdev->channels_lock);
+
+	return &mtk_subdev->subdev;
+}
+EXPORT_SYMBOL_GPL(mtk_rpmsg_create_rproc_subdev);
+
+void mtk_rpmsg_destroy_rproc_subdev(struct rproc_subdev *subdev)
+{
+	struct mtk_rpmsg_rproc_subdev *mtk_subdev = to_mtk_subdev(subdev);
+
+	kfree(mtk_subdev);
+}
+EXPORT_SYMBOL_GPL(mtk_rpmsg_destroy_rproc_subdev);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("MediaTek scp rpmsg driver");
diff --git a/include/linux/remoteproc/mtk_scp.h b/include/linux/remoteproc/mtk_scp.h
index 707556f6b899..67ae6674397b 100644
--- a/include/linux/remoteproc/mtk_scp.h
+++ b/include/linux/remoteproc/mtk_scp.h
@@ -40,9 +40,11 @@ enum scp_ipi_id {
 	SCP_IPI_ISP_FRAME,
 	SCP_IPI_FD_CMD,
 	SCP_IPI_CROS_HOST_CMD,
-	SCP_IPI_MAX,
+	SCP_IPI_NS_SERVICE = 0xFF,
+	SCP_IPI_MAX = 0x100,
 };
 
+
 /**
  * scp_ipi_register - register an ipi function
  *
diff --git a/include/linux/rpmsg/mtk_rpmsg.h b/include/linux/rpmsg/mtk_rpmsg.h
new file mode 100644
index 000000000000..861c1cbea523
--- /dev/null
+++ b/include/linux/rpmsg/mtk_rpmsg.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2018 Google LLC.
+ */
+
+#ifndef __LINUX_RPMSG_MTK_RPMSG_H
+#define __LINUX_RPMSG_MTK_RPMSG_H
+
+#include <linux/device.h>
+#include <linux/remoteproc.h>
+
+typedef void (*ipi_handler_t)(void *data, unsigned int len, void *priv);
+
+/*
+ * struct mtk_rpmsg_info - IPI functions tied to the rpmsg device.
+ * @register_ipi: register IPI handler for an IPI id.
+ * @unregister_ipi: unregister IPI handler for a registered IPI id.
+ * @send_ipi: send IPI to an IPI id. wait is the timeout (in msecs) to wait
+ *            until response, or 0 if there's no timeout.
+ * @ns_ipi_id: the IPI id used for name service, or -1 if name service isn't
+ *             supported.
+ */
+struct mtk_rpmsg_info {
+	int (*register_ipi)(struct platform_device *pdev, u32 id,
+			    ipi_handler_t handler, void *priv);
+	void (*unregister_ipi)(struct platform_device *pdev, u32 id);
+	int (*send_ipi)(struct platform_device *pdev, u32 id,
+			void *buf, unsigned int len, unsigned int wait);
+	int ns_ipi_id;
+};
+
+struct rproc_subdev *
+mtk_rpmsg_create_rproc_subdev(struct platform_device *pdev,
+			      struct mtk_rpmsg_info *info);
+
+void mtk_rpmsg_destroy_rproc_subdev(struct rproc_subdev *subdev);
+
+#endif
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
