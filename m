Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA431A7DD4
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 15:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=shJRxoMQnIT8ftMAxHjgEuZx5c4aLh8q+c6FgIXIDLg=; b=T5NMi5fi0ffuTANZmjT34baDmw
	hxNgKTbxHQkDyQr9bRHDP0h/vAV5tL4mE1gllIr9jtq21vrzvYx+UVSEEe35XZpwwrPTPghuUciML
	iHgzIZxbhla9cOuRm281tHQS1o43SSkCNzm1YC6h3MNchcD8C2s6Tr31eyl0rhJdTcdaDQManYyQh
	VlCtGw4b7Q9GbWkbHnqb3O1MJbY3FL4xchwPnNPXhtGM6RjzTYHtpu6Y7LWbN+nQjBpSp37x0kyEM
	0Ly8EuR202wTvo9+yXJFGzcG3nVi5jlSId8BWgOTDu7Iv7MZlUKsYynZqKy3wFfKDcM8S3J8FcSlw
	nDHaI6HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLXB-0003m0-58; Tue, 14 Apr 2020 13:23:25 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLPy-0002Cv-WD; Tue, 14 Apr 2020 13:16:03 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 71CA32A5; Tue, 14 Apr 2020 15:15:51 +0200 (CEST)
From: Joerg Roedel <joro@8bytes.org>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, Lu Baolu <baolu.lu@linux.intel.com>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH v2 01/33] iommu: Move default domain allocation to separate
 function
Date: Tue, 14 Apr 2020 15:15:10 +0200
Message-Id: <20200414131542.25608-2-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061559_387257_A487C60C 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Move the code out of iommu_group_get_for_dev() into a separate
function.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c | 74 ++++++++++++++++++++++++++-----------------
 1 file changed, 45 insertions(+), 29 deletions(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 2b471419e26c..bfe011760ed1 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -1361,6 +1361,41 @@ struct iommu_group *fsl_mc_device_group(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(fsl_mc_device_group);
 
+static int iommu_alloc_default_domain(struct device *dev,
+				      struct iommu_group *group)
+{
+	struct iommu_domain *dom;
+
+	if (group->default_domain)
+		return 0;
+
+	dom = __iommu_domain_alloc(dev->bus, iommu_def_domain_type);
+	if (!dom && iommu_def_domain_type != IOMMU_DOMAIN_DMA) {
+		dom = __iommu_domain_alloc(dev->bus, IOMMU_DOMAIN_DMA);
+		if (dom) {
+			dev_warn(dev,
+				 "failed to allocate default IOMMU domain of type %u; falling back to IOMMU_DOMAIN_DMA",
+				 iommu_def_domain_type);
+		}
+	}
+
+	if (!dom)
+		return -ENOMEM;
+
+	group->default_domain = dom;
+	if (!group->domain)
+		group->domain = dom;
+
+	if (!iommu_dma_strict) {
+		int attr = 1;
+		iommu_domain_set_attr(dom,
+				      DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE,
+				      &attr);
+	}
+
+	return 0;
+}
+
 /**
  * iommu_group_get_for_dev - Find or create the IOMMU group for a device
  * @dev: target device
@@ -1393,40 +1428,21 @@ struct iommu_group *iommu_group_get_for_dev(struct device *dev)
 
 	/*
 	 * Try to allocate a default domain - needs support from the
-	 * IOMMU driver.
+	 * IOMMU driver. There are still some drivers which don't support
+	 * default domains, so the return value is not yet checked.
 	 */
-	if (!group->default_domain) {
-		struct iommu_domain *dom;
-
-		dom = __iommu_domain_alloc(dev->bus, iommu_def_domain_type);
-		if (!dom && iommu_def_domain_type != IOMMU_DOMAIN_DMA) {
-			dom = __iommu_domain_alloc(dev->bus, IOMMU_DOMAIN_DMA);
-			if (dom) {
-				dev_warn(dev,
-					 "failed to allocate default IOMMU domain of type %u; falling back to IOMMU_DOMAIN_DMA",
-					 iommu_def_domain_type);
-			}
-		}
-
-		group->default_domain = dom;
-		if (!group->domain)
-			group->domain = dom;
-
-		if (dom && !iommu_dma_strict) {
-			int attr = 1;
-			iommu_domain_set_attr(dom,
-					      DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE,
-					      &attr);
-		}
-	}
+	iommu_alloc_default_domain(dev, group);
 
 	ret = iommu_group_add_device(group, dev);
-	if (ret) {
-		iommu_group_put(group);
-		return ERR_PTR(ret);
-	}
+	if (ret)
+		goto out_put_group;
 
 	return group;
+
+out_put_group:
+	iommu_group_put(group);
+
+	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL(iommu_group_get_for_dev);
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
