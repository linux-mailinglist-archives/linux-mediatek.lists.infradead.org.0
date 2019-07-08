Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0650761D9D
	for <lists+linux-mediatek@lfdr.de>; Mon,  8 Jul 2019 13:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggIKvjCFRQ0kUvKl4kCdtLLj/mD5JNLVtffIrheoMwc=; b=u2rM9k1J2bDMe+
	PE/liBHl8Kj02yg5TniOg+W0XrzDuRbUgms5vhluq0fskn3btaLgxTICLXrzLKu/LCVkRlveUXG+w
	agUPOwg2oD1gTchOby/AnavB7JGe6lu2R2qyA75DyEFgGz+XyI8RBPq5uEpT1ToAbR93xEgocs7K9
	vCjKsjdqz7r3b8p0OF6O57HBgmXWN3LK6wU57XthBIHTIi0z3LoQKfZNsEmUe/0DvxL1OC5EGMWWg
	smO5nZf1Ig6DndKP/vrtLxLnCJKpMqf7SHqeIoyU1hcNjI7bdpHz6tczNMUrgAgXWkprS5iscXJ55
	x9hOpYqwSOe/9YO6I4Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkRTw-0003rQ-Jq; Mon, 08 Jul 2019 11:06:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkRSZ-0002nq-T5; Mon, 08 Jul 2019 11:05:31 +0000
X-UUID: 2d61691631e64233a59a5341c41ef879-20190708
X-UUID: 2d61691631e64233a59a5341c41ef879-20190708
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <frederic.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1928795390; Mon, 08 Jul 2019 03:05:18 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 04:05:17 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 19:05:16 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 8 Jul 2019 19:05:15 +0800
From: <frederic.chen@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC PATCH V2 5/6] remoteproc/mediatek: add SCP's shared dma pool
 support for mt8183
Date: Mon, 8 Jul 2019 19:04:59 +0800
Message-ID: <20190708110500.7242-6-frederic.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190708110500.7242-1-frederic.chen@mediatek.com>
References: <20190708110500.7242-1-frederic.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_040528_043407_C4B4CEF0 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 Rynn.Wu@mediatek.com, Allan.Yang@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Frederic Chen <frederic.chen@mediatek.com>

This patch uses of_reserved_mem_device_init_by_idx() to hook the
scp device to DMA mapping API to provide a shared dma pool of
SCP DMA buffers for SCP's client such as DIP and ISP Pass 1
drivers.

Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
---
 drivers/remoteproc/mtk_scp.c | 54 ++++++++++++++++++++++--------------
 1 file changed, 33 insertions(+), 21 deletions(-)

diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
index 4c093dec52b9..0cffe4b63dba 100644
--- a/drivers/remoteproc/mtk_scp.c
+++ b/drivers/remoteproc/mtk_scp.c
@@ -4,12 +4,14 @@
 
 #include <asm/barrier.h>
 #include <linux/clk.h>
+#include <linux/dma-mapping.h>
 #include <linux/err.h>
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_platform.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/platform_data/mtk_scp.h>
 #include <linux/platform_device.h>
 #include <linux/remoteproc.h>
@@ -487,29 +489,29 @@ EXPORT_SYMBOL_GPL(scp_get_reserve_mem_size);
 
 static int scp_map_memory_region(struct mtk_scp *scp)
 {
-	struct device_node *node;
-	struct resource r;
-	int ret;
+	int ret, id;
 
-	node = of_parse_phandle(scp->dev->of_node, "memory-region", 0);
-	if (!node) {
-		dev_err(scp->dev, "no memory-region specified\n");
-		return -EINVAL;
+	ret = of_reserved_mem_device_init_by_idx(scp->dev, scp->dev->of_node,
+						 0);
+	if (ret) {
+		dev_err(scp->dev,
+			"%s:of_reserved_mem_device_init_by_idx(0) failed:(%d)",
+			__func__, ret);
+		return -ENOMEM;
 	}
 
-	ret = of_address_to_resource(node, 0, &r);
-	if (ret)
-		return ret;
+	/* Pre-allocate the working buffers */
+	scp->dram_size = MAX_CODE_SIZE;
+	for (id = 0; id < SCP_NUMS_MEM_ID; id++)
+		scp->dram_size += scp_reserve_mblock[id].size;
 
-	scp->phys_addr = r.start;
-	scp->dram_size = resource_size(&r);
-	scp->cpu_addr =
-		devm_ioremap_wc(scp->dev, scp->phys_addr, scp->dram_size);
+	scp->cpu_addr = dma_alloc_coherent(scp->dev, scp->dram_size,
+					   &scp->phys_addr, GFP_KERNEL);
 
 	if (!scp->cpu_addr) {
-		dev_err(scp->dev, "unable to map memory region: %pa+%zx\n",
-			&r.start, scp->dram_size);
-		return -EBUSY;
+		dev_err(scp->dev, "unable to pre-allocate memory for SCP: %zx\n",
+			scp->dram_size);
+		return -ENOMEM;
 	}
 
 #if SCP_RESERVED_MEM
@@ -519,6 +521,13 @@ static int scp_map_memory_region(struct mtk_scp *scp)
 	return 0;
 }
 
+static void scp_unmap_memory_region(struct mtk_scp *scp)
+{
+	dma_free_coherent(scp->dev, scp->dram_size, scp->cpu_addr,
+			  scp->phys_addr);
+	of_reserved_mem_device_release(scp->dev);
+}
+
 static struct mtk_rpmsg_info mtk_scp_rpmsg_info = {
 	.send_ipi = scp_ipi_send,
 	.register_ipi = scp_ipi_register,
@@ -594,20 +603,20 @@ static int scp_probe(struct platform_device *pdev)
 	if (IS_ERR(scp->clk)) {
 		dev_err(dev, "Failed to get clock\n");
 		ret = PTR_ERR(scp->clk);
-		goto free_rproc;
+		goto release_dev_mem;
 	}
 
 	ret = clk_prepare_enable(scp->clk);
 	if (ret) {
 		dev_err(dev, "failed to enable clocks\n");
-		goto free_rproc;
+		goto release_dev_mem;
 	}
 
 	ret = scp_ipi_init(scp);
 	clk_disable_unprepare(scp->clk);
 	if (ret) {
 		dev_err(dev, "Failed to init ipi\n");
-		goto free_rproc;
+		goto release_dev_mem;
 	}
 
 	/* register SCP initialization IPI */
@@ -617,7 +626,7 @@ static int scp_probe(struct platform_device *pdev)
 			       scp);
 	if (ret) {
 		dev_err(dev, "Failed to register IPI_SCP_INIT\n");
-		goto free_rproc;
+		goto release_dev_mem;
 	}
 
 	mutex_init(&scp->lock);
@@ -645,6 +654,8 @@ static int scp_probe(struct platform_device *pdev)
 remove_subdev:
 	scp_remove_rpmsg_subdev(scp);
 	mutex_destroy(&scp->lock);
+release_dev_mem:
+	scp_unmap_memory_region(scp);
 free_rproc:
 	rproc_free(rproc);
 
@@ -658,6 +669,7 @@ static int scp_remove(struct platform_device *pdev)
 	scp_remove_rpmsg_subdev(scp);
 	rproc_del(scp->rproc);
 	rproc_free(scp->rproc);
+	scp_unmap_memory_region(scp);
 
 	return 0;
 }
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
