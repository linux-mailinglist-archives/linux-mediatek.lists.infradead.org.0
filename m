Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6332AEDFAA
	for <lists+linux-mediatek@lfdr.de>; Mon,  4 Nov 2019 13:04:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJ/x6uxSpj08Y7eG2thBvFq7/cgiF97ivNDMqhP+wlU=; b=rfgiY9bIHDhk7H
	FTebWofuf7VRE1ddQqd9cjrNb3Yb+Ek7nM2dTp3MJzU5D1a0QM/Xs5kcGUwx8pz9/si3pVyBpL9/t
	PqJqKnMaKNhRYo3rkXVgtK1y93q19di/t6D+0c8atjkfB+7uxMwp98b7/d1QX8QYQ58arRfFAOHWf
	Td053qT+mCYjxogrmqe9lqJp+Osum2Ta1nltct724iv5Jop/xL+b9FrWdj6iKZ9XbBtsac3f2Kbx4
	0jFy3KShZclSMJ/tUbqxWpsgOHlzlJgXplHvJhzNKt/4CPa98d43KhepJVaX5/hNhI6XGLwTvdrHm
	LRwJVrzFNZs1eLvnlDVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRb6G-0008Au-OV; Mon, 04 Nov 2019 12:04:48 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRb4Z-0006Li-4r; Mon, 04 Nov 2019 12:03:05 +0000
X-UUID: 129d968aeb5c4634bd407d64775a6af5-20191104
X-UUID: 129d968aeb5c4634bd407d64775a6af5-20191104
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1952705030; Mon, 04 Nov 2019 04:03:07 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 03:53:11 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 19:53:12 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 19:53:08 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [RESEND,PATCH 11/13] iommu/mediatek: Add iova reserved function
Date: Mon, 4 Nov 2019 19:52:36 +0800
Message-ID: <20191104115238.2394-12-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191104115238.2394-1-chao.hao@mediatek.com>
References: <20191104115238.2394-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_040303_240507_54FFC122 
X-CRM114-Status: GOOD (  12.01  )
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

For multiple iommu_domains, we need to reserve some iova
regions, so we will add mtk_iommu_resv_iova_region structure.
It includes the start address and size of iova and iommu_resv_type.
Based on the function, we will realize multiple mtk_iommu_domains

Signed-off-by: Anan Sun <anan.sun@mediatek.com>
Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 47 +++++++++++++++++++++++++++++++++++++++
 drivers/iommu/mtk_iommu.h | 12 ++++++++++
 2 files changed, 59 insertions(+)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 8c06d2a793a7..c0cd7da71c2c 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -697,6 +697,51 @@ static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
 	return iommu_fwspec_add_ids(dev, args->args, 1);
 }
 
+/* reserve/dir-map iova region */
+static void mtk_iommu_get_resv_regions(struct device *dev,
+				       struct list_head *head)
+{
+	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
+	unsigned int i, total_cnt = data->plat_data->resv_cnt;
+	const struct mtk_iommu_resv_iova_region *resv_data;
+	struct iommu_resv_region *region;
+	unsigned long base = 0;
+	size_t size = 0;
+	int prot = IOMMU_WRITE | IOMMU_READ;
+
+	resv_data = data->plat_data->resv_region;
+
+	for (i = 0; i < total_cnt; i++) {
+		size = 0;
+		if (resv_data[i].iova_size) {
+			base = (unsigned long)resv_data[i].iova_base;
+			size = resv_data[i].iova_size;
+		}
+		if (!size)
+			continue;
+
+		region = iommu_alloc_resv_region(base, size, prot,
+						 resv_data[i].type);
+		if (!region)
+			return;
+
+		list_add_tail(&region->list, head);
+
+		dev_dbg(data->dev, "%s iova 0x%x ~ 0x%x\n",
+			(resv_data[i].type == IOMMU_RESV_DIRECT) ? "dm" : "rsv",
+			(unsigned int)base, (unsigned int)(base + size - 1));
+	}
+}
+
+static void mtk_iommu_put_resv_regions(struct device *dev,
+				       struct list_head *head)
+{
+	struct iommu_resv_region *entry, *next;
+
+	list_for_each_entry_safe(entry, next, head, list)
+		kfree(entry);
+}
+
 static const struct iommu_ops mtk_iommu_ops = {
 	.domain_alloc	= mtk_iommu_domain_alloc,
 	.domain_free	= mtk_iommu_domain_free,
@@ -711,6 +756,8 @@ static const struct iommu_ops mtk_iommu_ops = {
 	.remove_device	= mtk_iommu_remove_device,
 	.device_group	= mtk_iommu_device_group,
 	.of_xlate	= mtk_iommu_of_xlate,
+	.get_resv_regions = mtk_iommu_get_resv_regions,
+	.put_resv_regions = mtk_iommu_put_resv_regions,
 	.pgsize_bitmap	= SZ_4K | SZ_64K | SZ_1M | SZ_16M,
 };
 
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index d8aef0d57b1a..10476b23adee 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -36,6 +36,12 @@ enum mtk_iommu_plat {
 	M4U_MT8183,
 };
 
+struct mtk_iommu_resv_iova_region {
+	dma_addr_t		iova_base;
+	size_t			iova_size;
+	enum iommu_resv_type	type;
+};
+
 /*
  * reserved IOVA Domain for IOMMU users of HW limitation.
  */
@@ -68,6 +74,12 @@ struct mtk_iommu_plat_data {
 	u32		    dom_cnt;
 	unsigned char       larbid_remap[2][MTK_LARB_NR_MAX];
 	const struct mtk_domain_data	*dom_data;
+	/*
+	 * reserve/dir-mapping iova region data
+	 * todo: for different reserve needs on multiple iommu domains
+	 */
+	const unsigned int  resv_cnt;
+	const struct mtk_iommu_resv_iova_region *resv_region;
 };
 
 struct mtk_iommu_domain;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
