Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9383B1E5C95
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 12:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnIdtujqfgjE0XwqmTpmMFjpydHAI6rMABCnwMyZhL4=; b=rKVa+ukZNykThX
	ELeUFABatzJK5EKZSsIZCu+k6fndJ0fXOnWmrc9xr9GAsi4L1XGysym/+ZBSmTLmPJBbX7egE1Zj9
	TufcZJy3H+hErJHDHL+2sr4hEslqyG4Pe8QK97VLZ/DZatVM5jdX1MeiLCPeXPrXSrYkziNUyYlms
	jxz5uCkclpotVsaLy961N3xD1mUJmC1CsAR34Z86NUJWYJcLhRdDrM4etcoN/FjSBlGc/Dibs/8DE
	kFw9p1Kr8Uc0grQBKRxFUSQPR+YAezAN2TASxzg5UvoFoJ+/u1SYiMzX6lFKufTCK1w/uUSL2+Sx2
	/i6vAmKVz9XLl00oNhDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFLy-0006c7-9I; Thu, 28 May 2020 10:01:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFLv-0006bQ-83; Thu, 28 May 2020 10:01:32 +0000
X-UUID: de902c93ba484b9391094533b8bf3954-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Hhp4Gq/lAQxSghJRwoF92XaAxe8EL9n2NHwdPyaDOAY=; 
 b=ZOiJQDrOsxf+NlhP5UYip6cN6QhIqSKTsMaNft0avbZI9+0PBxsthMGhLaI+6onCF/hMgN3E0IDbnkSXfNTOxIpb6dtqf39F9vDFBtfbmo7VudvufHsUaVcpjJmFNAgEaXQSPozR+CRbV1m7ZCW3muQE+rZVxtKQDCbdYmhjrNc=;
X-UUID: de902c93ba484b9391094533b8bf3954-20200528
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 420021002; Thu, 28 May 2020 02:01:24 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 02:57:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 17:57:29 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 28 May 2020 17:57:29 +0800
From: EastL <EastL.Lee@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH v4 4/4] dmaengine: mediatek-cqdma: add dma mask for capability
Date: Thu, 28 May 2020 17:57:12 +0800
Message-ID: <1590659832-31476-5-git-send-email-EastL.Lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590659832-31476-1-git-send-email-EastL.Lee@mediatek.com>
References: <1590659832-31476-1-git-send-email-EastL.Lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F93B03554329BDCDD88F2B63E056675CC432FAFBAF2E0F0D0441441AD2A2C1902000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_030131_288370_9CC45FB6 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, EastL <EastL.Lee@mediatek.com>,
 dmaengine@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch add dma mask for capability.

Change-Id: I31f4622f9541d769702029532e5f5f185815dda2
Signed-off-by: EastL <EastL.Lee@mediatek.com>
---
 drivers/dma/mediatek/mtk-cqdma.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/dma/mediatek/mtk-cqdma.c b/drivers/dma/mediatek/mtk-cqdma.c
index bca7118..1805a76 100644
--- a/drivers/dma/mediatek/mtk-cqdma.c
+++ b/drivers/dma/mediatek/mtk-cqdma.c
@@ -117,6 +117,7 @@ struct mtk_cqdma_vchan {
  * @clk:                    The clock that device internal is using
  * @dma_requests:           The number of VCs the device supports to
  * @dma_channels:           The number of PCs the device supports to
+ * @dma_mask:               A mask for DMA capability
  * @vc:                     The pointer to all available VCs
  * @pc:                     The pointer to all the underlying PCs
  */
@@ -126,6 +127,7 @@ struct mtk_cqdma_device {
 
 	u32 dma_requests;
 	u32 dma_channels;
+	u32 dma_mask;
 	struct mtk_cqdma_vchan *vc;
 	struct mtk_cqdma_pchan **pc;
 };
@@ -549,6 +551,7 @@ static void mtk_cqdma_hw_deinit(struct mtk_cqdma_device *cqdma)
 };
 MODULE_DEVICE_TABLE(of, mtk_cqdma_match);
 
+static u64 cqdma_dmamask;
 static int mtk_cqdma_probe(struct platform_device *pdev)
 {
 	struct mtk_cqdma_device *cqdma;
@@ -607,6 +610,16 @@ static int mtk_cqdma_probe(struct platform_device *pdev)
 		cqdma->dma_channels = MTK_CQDMA_NR_PCHANS;
 	}
 
+	if (pdev->dev.of_node && of_property_read_u32(pdev->dev.of_node,
+						      "dma-channel-mask",
+						      &cqdma->dma_mask)) {
+		dev_info(&pdev->dev,
+			 "Using 0 as missing dma-channel-mask property\n");
+	} else {
+		cqdma_dmamask = DMA_BIT_MASK(cqdma->dma_mask);
+		pdev->dev.dma_mask = &cqdma_dmamask;
+	}
+
 	cqdma->pc = devm_kcalloc(&pdev->dev, cqdma->dma_channels,
 				 sizeof(*cqdma->pc), GFP_KERNEL);
 	if (!cqdma->pc)
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
