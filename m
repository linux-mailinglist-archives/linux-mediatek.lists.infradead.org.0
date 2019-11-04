Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0AAEDF9A
	for <lists+linux-mediatek@lfdr.de>; Mon,  4 Nov 2019 13:04:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NkxK9RWy4HoM9PRtP4C4ANKwJDtR0aclMFKciTJkPI8=; b=WNRbc7IRH45MdJ
	kfBz1g79W8+d8DsIJBMBfQ5IagLDYvv0sHiaRnYxvS6bBZ6ubqQaJE0qNXKKm8GpXAcZvKhXTMl4l
	KfkqSDvPzznyJxhok1ItE/yLQLgj4bHLP51EuDWmFgJy5XIBviOApeiwArgoLGzpmbj3quTICb4Ay
	y5+MnrNbIL06lAkR1kiFtoJnHfX0JBCBjYJd+k3p0kakMR14J9Mn148r+iLsTXSFsvzTF7oCBo1vl
	ALe4R7gTCayMumBqDcfSPban7S9wy9w31ynslmn6XOYk2Pu5prifbGDVcxKh3DFwKvIF5rh3znpf6
	Px9G1lA55jGHylWCzQ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRb5S-0007Ge-Sw; Mon, 04 Nov 2019 12:03:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRb4T-0006H3-DN; Mon, 04 Nov 2019 12:02:59 +0000
X-UUID: 55e0bc7dcfa241d1896b79c9ae4e1f31-20191104
X-UUID: 55e0bc7dcfa241d1896b79c9ae4e1f31-20191104
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 208693262; Mon, 04 Nov 2019 04:02:57 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 03:52:48 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 19:52:46 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 19:52:45 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [RESEND, PATCH 04/13] iommu/mediatek: Remove mtk_iommu_domain_finalise
Date: Mon, 4 Nov 2019 19:52:29 +0800
Message-ID: <20191104115238.2394-5-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191104115238.2394-1-chao.hao@mediatek.com>
References: <20191104115238.2394-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_040257_494079_E4C36DD7 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Cui Zhang <cui.zhang@mediatek.com>, Jun Yan <jun.yan@mediatek.com>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Chao Hao <chao.hao@mediatek.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 Miles Chen <miles.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Guangming Cao <guangming.cao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

We already have global mtk_iommu_pgtable structure to describe
page table and create it in group_device, "mtk_iommu_domain_finalise"
is as the same as that, so so we will remove mtk_iommu_domain_finalise.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 48 ++++++++-------------------------------
 1 file changed, 10 insertions(+), 38 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index fcbde6b0f58d..3fa09b12e9f9 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -329,40 +329,6 @@ static void mtk_iommu_config(struct mtk_iommu_data *data,
 	}
 }
 
-static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
-{
-	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
-
-	if (data->pgtable) {
-		dom->cfg = data->pgtable->cfg;
-		dom->iop = data->pgtable->iop;
-		dom->domain.pgsize_bitmap = data->pgtable->cfg.pgsize_bitmap;
-		return 0;
-	}
-
-	dom->cfg = (struct io_pgtable_cfg) {
-		.quirks = IO_PGTABLE_QUIRK_ARM_NS |
-			IO_PGTABLE_QUIRK_NO_PERMS |
-			IO_PGTABLE_QUIRK_TLBI_ON_MAP |
-			IO_PGTABLE_QUIRK_ARM_MTK_EXT,
-		.pgsize_bitmap = mtk_iommu_ops.pgsize_bitmap,
-		.ias = 32,
-		.oas = 34,
-		.tlb = &mtk_iommu_flush_ops,
-		.iommu_dev = data->dev,
-	};
-
-	dom->iop = alloc_io_pgtable_ops(ARM_V7S, &dom->cfg, data);
-	if (!dom->iop) {
-		dev_err(data->dev, "Failed to alloc io pgtable\n");
-		return -EINVAL;
-	}
-
-	/* Update our support page sizes bitmap */
-	dom->domain.pgsize_bitmap = dom->cfg.pgsize_bitmap;
-	return 0;
-}
-
 static struct mtk_iommu_pgtable *create_pgtable(struct mtk_iommu_data *data)
 {
 	struct mtk_iommu_pgtable *pgtable;
@@ -420,11 +386,17 @@ static int mtk_iommu_attach_pgtable(struct mtk_iommu_data *data,
 
 static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 {
+	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
 	struct mtk_iommu_domain *dom;
 
 	if (type != IOMMU_DOMAIN_DMA)
 		return NULL;
 
+	if (!pgtable) {
+		pr_err("%s, pgtable is not ready\n", __func__);
+		return NULL;
+	}
+
 	dom = kzalloc(sizeof(*dom), GFP_KERNEL);
 	if (!dom)
 		return NULL;
@@ -432,8 +404,10 @@ static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 	if (iommu_get_dma_cookie(&dom->domain))
 		goto  free_dom;
 
-	if (mtk_iommu_domain_finalise(dom))
-		goto  put_dma_cookie;
+	dom->cfg = pgtable->cfg;
+	dom->iop = pgtable->iop;
+	/* Update our support page sizes bitmap */
+	dom->domain.pgsize_bitmap = pgtable->cfg.pgsize_bitmap;
 
 	dom->domain.geometry.aperture_start = 0;
 	dom->domain.geometry.aperture_end = DMA_BIT_MASK(32);
@@ -441,8 +415,6 @@ static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 
 	return &dom->domain;
 
-put_dma_cookie:
-	iommu_put_dma_cookie(&dom->domain);
 free_dom:
 	kfree(dom);
 	return NULL;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
