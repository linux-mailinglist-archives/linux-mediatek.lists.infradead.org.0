Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2951200359
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jun 2020 10:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TIjet8G9RtMcxOba0RjavbgHSckp6qV7KNtsvvmovA=; b=UZBIl6sxy7KjuB
	/e+JkXfpiKBo5rDkDolht+3ebA3mqWREuOKTUp4LGW2Ed/h52/wIOSlAZoQOm7w8HYkGwly8E30ut
	pVwtL0yVbhcitsPcpHm4Tt5RP1ps90Fen8zD+0KU4zKQA+BTTYITDQd8g47F0908Bbae9Wf6e83KO
	FmbJLGT+M/VqI6ndZqbRIU92aS/WaESxvfzWI8LKI8MHOwPmwyU9Eai1GtvqwramRR477wLPnW+9Q
	WfFzZdATeT16fPrIaeI8eh17zy9UwElAkNhY8gD7REthb/bTpKkKD+o6hZuYnBdlSdyuVk+cO43CD
	+RnPs2HFPRSh3XINRmxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCBO-0007WF-TM; Fri, 19 Jun 2020 08:15:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCBK-0007Vr-LE; Fri, 19 Jun 2020 08:15:28 +0000
X-UUID: e2cd8a66796d4a8eac1aec89c73688ad-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ySEtHTH57bxejrMtxUW7baRYR2KhL0kU2xryPA6GWeY=; 
 b=ClaWGkPI9RpLVoRnBZifvdim+xIqrjdZPjEAOWfc3U9cAl8zghRfsiYu7/cOHk0NzeSE5JglQJOYwOjQY9ssN4NVngve7nT4mBTFGv7NMBvrXlzmqEtF8E3laAwL3eL1CRQ6mScKDdleuysXyDNqn25QnTHepArv5ZSIYpKdYpk=;
X-UUID: e2cd8a66796d4a8eac1aec89c73688ad-20200619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 301809450; Fri, 19 Jun 2020 00:15:36 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 01:05:20 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 16:05:06 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 19 Jun 2020 16:05:08 +0800
From: EastL <EastL.Lee@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH v5 3/4] dmaengine: mediatek-cqdma: add dma mask for capability
Date: Fri, 19 Jun 2020 16:05:01 +0800
Message-ID: <1592553902-30592-4-git-send-email-EastL.Lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1592553902-30592-1-git-send-email-EastL.Lee@mediatek.com>
References: <1592553902-30592-1-git-send-email-EastL.Lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5F99345FA7F246BBF9849BD1CEB69989773CB4DE139E4BBB3040F4B2C603A3392000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_011526_703138_6841DFC7 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Signed-off-by: EastL <EastL.Lee@mediatek.com>
---
 drivers/dma/mediatek/mtk-cqdma.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/dma/mediatek/mtk-cqdma.c b/drivers/dma/mediatek/mtk-cqdma.c
index 905bbcb..ed33c64 100644
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
@@ -607,6 +609,21 @@ static int mtk_cqdma_probe(struct platform_device *pdev)
 		cqdma->dma_channels = MTK_CQDMA_NR_PCHANS;
 	}
 
+	if (pdev->dev.of_node)
+		err = of_property_read_u32(pdev->dev.of_node,
+					   "dma-channel-mask",
+					   &cqdma->dma_mask);
+	if (err) {
+		dev_warn(&pdev->dev,
+			 "Using 0 as missing dma-channel-mask property\n");
+		cqdma->dma_mask = 0;
+	}
+
+	if (dma_set_mask(&pdev->dev, DMA_BIT_MASK(cqdma->dma_mask))) {
+		dev_warn(&pdev->dev, "DMA set mask fail\n");
+		return -EINVAL;
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
