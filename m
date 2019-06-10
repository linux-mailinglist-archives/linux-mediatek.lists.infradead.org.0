Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B8F3B574
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Jun 2019 14:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ommS9zpqPp/Xp7arSMn9H+gKx62oMnNKz/08hTJK04Y=; b=Si67fPezkesHYo
	hOxxTWzwSieCztl/1/Ark9KA3+ilTzjAZrMmLgiSaPnPoQcOG+tq8hdAoQIZhvKpKAw9Km1C+8V0Z
	YoVjuW+odO1KqMVAvzQw9Yfqo7B+2OX1dtnqBJhrBJeHLM0Q7xQL3VKVYLPLO5ZlTbfYZQRjOYs8R
	YAbZNy3ehC3a3VRjtuoGV2dQBeBCSmBPt1+tE+sicezNmCymnEvGynfa3oyERtJc+NXknMHyocahm
	XB2Rbpkh0MpLN6aNY+CHIjleKUaisHxSSJRCrrrx/cAOgivVZY+NRMO4cEC4SNMRFEfMAdgh47hu5
	hjnZv4tL+bg3c/U/Ro9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJrd-0004JK-1H; Mon, 10 Jun 2019 12:57:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJrX-0004He-MY; Mon, 10 Jun 2019 12:57:25 +0000
X-UUID: 08d794ff9b85470ba48fa85070d269be-20190610
X-UUID: 08d794ff9b85470ba48fa85070d269be-20190610
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1055066438; Mon, 10 Jun 2019 04:56:32 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 05:56:31 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:56:29 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 20:56:28 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 05/12] media: mtk-jpeg: Get rid of mtk_smi_larb_get/put
Date: Mon, 10 Jun 2019 20:55:06 +0800
Message-ID: <1560171313-28299-6-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
References: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055723_762075_1A7FBB7C 
X-CRM114-Status: GOOD (  10.35  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, Rick Chang <rick.chang@mediatek.com>,
 srv_heupstream@mediatek.com, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

MediaTek IOMMU has already added device_link between the consumer
and smi-larb device. If the jpg device call the pm_runtime_get_sync,
the smi-larb's pm_runtime_get_sync also be called automatically.

CC: Rick Chang <rick.chang@mediatek.com>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 22 ----------------------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h |  2 --
 2 files changed, 24 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index f761e4d..2f37538 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -29,7 +29,6 @@
 #include <media/v4l2-ioctl.h>
 #include <media/videobuf2-core.h>
 #include <media/videobuf2-dma-contig.h>
-#include <soc/mediatek/smi.h>
 
 #include "mtk_jpeg_hw.h"
 #include "mtk_jpeg_core.h"
@@ -901,11 +900,6 @@ static int mtk_jpeg_queue_init(void *priv, struct vb2_queue *src_vq,
 
 static void mtk_jpeg_clk_on(struct mtk_jpeg_dev *jpeg)
 {
-	int ret;
-
-	ret = mtk_smi_larb_get(jpeg->larb);
-	if (ret)
-		dev_err(jpeg->dev, "mtk_smi_larb_get larbvdec fail %d\n", ret);
 	clk_prepare_enable(jpeg->clk_jdec_smi);
 	clk_prepare_enable(jpeg->clk_jdec);
 }
@@ -914,7 +908,6 @@ static void mtk_jpeg_clk_off(struct mtk_jpeg_dev *jpeg)
 {
 	clk_disable_unprepare(jpeg->clk_jdec);
 	clk_disable_unprepare(jpeg->clk_jdec_smi);
-	mtk_smi_larb_put(jpeg->larb);
 }
 
 static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
@@ -1059,21 +1052,6 @@ static int mtk_jpeg_release(struct file *file)
 
 static int mtk_jpeg_clk_init(struct mtk_jpeg_dev *jpeg)
 {
-	struct device_node *node;
-	struct platform_device *pdev;
-
-	node = of_parse_phandle(jpeg->dev->of_node, "mediatek,larb", 0);
-	if (!node)
-		return -EINVAL;
-	pdev = of_find_device_by_node(node);
-	if (WARN_ON(!pdev)) {
-		of_node_put(node);
-		return -EINVAL;
-	}
-	of_node_put(node);
-
-	jpeg->larb = &pdev->dev;
-
 	jpeg->clk_jdec = devm_clk_get(jpeg->dev, "jpgdec");
 	if (IS_ERR(jpeg->clk_jdec))
 		return PTR_ERR(jpeg->clk_jdec);
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
index 1a6cdfd..e35fb79 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
@@ -55,7 +55,6 @@ enum mtk_jpeg_ctx_state {
  * @dec_reg_base:	JPEG registers mapping
  * @clk_jdec:		JPEG hw working clock
  * @clk_jdec_smi:	JPEG SMI bus clock
- * @larb:		SMI device
  */
 struct mtk_jpeg_dev {
 	struct mutex		lock;
@@ -69,7 +68,6 @@ struct mtk_jpeg_dev {
 	void __iomem		*dec_reg_base;
 	struct clk		*clk_jdec;
 	struct clk		*clk_jdec_smi;
-	struct device		*larb;
 };
 
 /**
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
