Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4B35A847
	for <lists+linux-mediatek@lfdr.de>; Sat, 29 Jun 2019 04:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqif4tpvU8FhIyDdb3QKoST73682v9/f/7hBuzQsjQw=; b=ttIDohVtJTT+1/
	vfMFpHg7P2m1kMlAj3m1Arnb5YsbdTJqkKhjBewbgwiHGoN28SpWSnZXmlMJLaRkuQNHoBYzVdPHZ
	XxFXdBiOPtHr6At+WVFYlkb6szy08vl/uUQfqTkVR8jIoshFRiBGzHbGPO+In0C129BC8kJIxtBb2
	1zgRpk8CUra53AlO+/C2mlxNPc3bsSr/NOACWj+j48WuhtY2YOqc6bLbBm+b3nKd8xz8kR9bch5Qa
	YHZhJ/i+9AhOIu4Fz7ytxJs+SWjR4W67mWZiWqUBhd8LI5lHAvpR7d1DuMZ8NBeEmlKkbDTGvX4Nk
	BFoMZD/UwmP9n0y9qm6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh2rN-00005D-VJ; Sat, 29 Jun 2019 02:13:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh2pv-0007cz-91; Sat, 29 Jun 2019 02:11:34 +0000
X-UUID: fdc562ae35f44baea866427608cc85e7-20190628
X-UUID: fdc562ae35f44baea866427608cc85e7-20190628
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 645925204; Fri, 28 Jun 2019 18:11:19 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Jun 2019 19:11:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 29 Jun 2019 10:11:16 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 29 Jun 2019 10:11:15 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v8 06/21] iommu/io-pgtable-arm-v7s: Add paddr_to_iopte and
 iopte_to_paddr helpers
Date: Sat, 29 Jun 2019 10:09:12 +0800
Message-ID: <1561774167-24141-7-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1561774167-24141-1-git-send-email-yong.wu@mediatek.com>
References: <1561774167-24141-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_191131_826661_E6644B35 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com, Will
 Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add two helper functions: paddr_to_iopte and iopte_to_paddr.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
 drivers/iommu/io-pgtable-arm-v7s.c | 45 ++++++++++++++++++++++++++++----------
 1 file changed, 33 insertions(+), 12 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 9a8a887..94c38db 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -180,18 +180,38 @@ struct arm_v7s_io_pgtable {
 	spinlock_t		split_lock;
 };
 
+static bool arm_v7s_pte_is_cont(arm_v7s_iopte pte, int lvl);
+
 static dma_addr_t __arm_v7s_dma_addr(void *pages)
 {
 	return (dma_addr_t)virt_to_phys(pages);
 }
 
-static arm_v7s_iopte *iopte_deref(arm_v7s_iopte pte, int lvl)
+static arm_v7s_iopte paddr_to_iopte(phys_addr_t paddr, int lvl,
+				    struct io_pgtable_cfg *cfg)
 {
+	return paddr & ARM_V7S_LVL_MASK(lvl);
+}
+
+static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
+				  struct io_pgtable_cfg *cfg)
+{
+	arm_v7s_iopte mask;
+
 	if (ARM_V7S_PTE_IS_TABLE(pte, lvl))
-		pte &= ARM_V7S_TABLE_MASK;
+		mask = ARM_V7S_TABLE_MASK;
+	else if (arm_v7s_pte_is_cont(pte, lvl))
+		mask = ARM_V7S_LVL_MASK(lvl) * ARM_V7S_CONT_PAGES;
 	else
-		pte &= ARM_V7S_LVL_MASK(lvl);
-	return phys_to_virt(pte);
+		mask = ARM_V7S_LVL_MASK(lvl);
+
+	return pte & mask;
+}
+
+static arm_v7s_iopte *iopte_deref(arm_v7s_iopte pte, int lvl,
+				  struct arm_v7s_io_pgtable *data)
+{
+	return phys_to_virt(iopte_to_paddr(pte, lvl, &data->iop.cfg));
 }
 
 static void *__arm_v7s_alloc_table(int lvl, gfp_t gfp,
@@ -407,7 +427,7 @@ static int arm_v7s_init_pte(struct arm_v7s_io_pgtable *data,
 	if (num_entries > 1)
 		pte = arm_v7s_pte_to_cont(pte, lvl);
 
-	pte |= paddr & ARM_V7S_LVL_MASK(lvl);
+	pte |= paddr_to_iopte(paddr, lvl, cfg);
 
 	__arm_v7s_set_pte(ptep, pte, num_entries, cfg);
 	return 0;
@@ -473,7 +493,7 @@ static int __arm_v7s_map(struct arm_v7s_io_pgtable *data, unsigned long iova,
 	}
 
 	if (ARM_V7S_PTE_IS_TABLE(pte, lvl)) {
-		cptep = iopte_deref(pte, lvl);
+		cptep = iopte_deref(pte, lvl, data);
 	} else if (pte) {
 		/* We require an unmap first */
 		WARN_ON(!selftest_running);
@@ -523,7 +543,8 @@ static void arm_v7s_free_pgtable(struct io_pgtable *iop)
 		arm_v7s_iopte pte = data->pgd[i];
 
 		if (ARM_V7S_PTE_IS_TABLE(pte, 1))
-			__arm_v7s_free_table(iopte_deref(pte, 1), 2, data);
+			__arm_v7s_free_table(iopte_deref(pte, 1, data),
+					     2, data);
 	}
 	__arm_v7s_free_table(data->pgd, 1, data);
 	kmem_cache_destroy(data->l2_tables);
@@ -593,7 +614,7 @@ static size_t arm_v7s_split_blk_unmap(struct arm_v7s_io_pgtable *data,
 		if (!ARM_V7S_PTE_IS_TABLE(pte, 1))
 			return 0;
 
-		tablep = iopte_deref(pte, 1);
+		tablep = iopte_deref(pte, 1, data);
 		return __arm_v7s_unmap(data, iova, size, 2, tablep);
 	}
 
@@ -652,7 +673,7 @@ static size_t __arm_v7s_unmap(struct arm_v7s_io_pgtable *data,
 				io_pgtable_tlb_add_flush(iop, iova, blk_size,
 					ARM_V7S_BLOCK_SIZE(lvl + 1), false);
 				io_pgtable_tlb_sync(iop);
-				ptep = iopte_deref(pte[i], lvl);
+				ptep = iopte_deref(pte[i], lvl, data);
 				__arm_v7s_free_table(ptep, lvl + 1, data);
 			} else if (iop->cfg.quirks & IO_PGTABLE_QUIRK_NON_STRICT) {
 				/*
@@ -677,7 +698,7 @@ static size_t __arm_v7s_unmap(struct arm_v7s_io_pgtable *data,
 	}
 
 	/* Keep on walkin' */
-	ptep = iopte_deref(pte[0], lvl);
+	ptep = iopte_deref(pte[0], lvl, data);
 	return __arm_v7s_unmap(data, iova, size, lvl + 1, ptep);
 }
 
@@ -703,7 +724,7 @@ static phys_addr_t arm_v7s_iova_to_phys(struct io_pgtable_ops *ops,
 	do {
 		ptep += ARM_V7S_LVL_IDX(iova, ++lvl);
 		pte = READ_ONCE(*ptep);
-		ptep = iopte_deref(pte, lvl);
+		ptep = iopte_deref(pte, lvl, data);
 	} while (ARM_V7S_PTE_IS_TABLE(pte, lvl));
 
 	if (!ARM_V7S_PTE_IS_VALID(pte))
@@ -712,7 +733,7 @@ static phys_addr_t arm_v7s_iova_to_phys(struct io_pgtable_ops *ops,
 	mask = ARM_V7S_LVL_MASK(lvl);
 	if (arm_v7s_pte_is_cont(pte, lvl))
 		mask *= ARM_V7S_CONT_PAGES;
-	return (pte & mask) | (iova & ~mask);
+	return iopte_to_paddr(pte, lvl, &data->iop.cfg) | (iova & ~mask);
 }
 
 static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
