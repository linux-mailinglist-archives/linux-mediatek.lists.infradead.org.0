Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 205081BDE9E
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 Apr 2020 15:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OCZXrEJwnPo/EEMN0KvMVd9CAlyGHswq1GUMMp7f0Dk=; b=NqvNMaG+SlOBvNbl0Bv1kTc1cC
	3R4piiUynQvoSAeyuePRM6KvUlR24ykJgWsu4NAYksBNAHe7fw4Arwp7lJ1Q5hUCcnmL+ITO8cMlm
	R36NSclXmTtUvdJunzGTzdzULHR49xTwXpl+BRjqcvunrSEupcboD8H5q4ZLMqnWHHitBjs1PJWNF
	1EzF+TS0HZWj+pflUmN/JENhRRQscOCFvcwN0nYp7FTVRD1a858HrkmZFgI8Tbt4Xs4Ppqu1mNPr+
	yn07P6YHsK2CC2uZ5NSn4A9AxZRLDLsbDAphujhT/QF+s02dVsoNZvC32jwzq2o5jDFV2e6sR/l30
	5M9WIMcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmvq-0008Sz-51; Wed, 29 Apr 2020 13:39:22 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmuQ-0006OJ-5F; Wed, 29 Apr 2020 13:37:59 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id A6F54F08; Wed, 29 Apr 2020 15:37:40 +0200 (CEST)
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
Subject: [PATCH v3 28/34] iommu/omap: Remove orphan_dev tracking
Date: Wed, 29 Apr 2020 15:37:06 +0200
Message-Id: <20200429133712.31431-29-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429133712.31431-1-joro@8bytes.org>
References: <20200429133712.31431-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_063754_591754_760CC069 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Daniel Drake <drake@endlessm.com>, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 virtualization@lists.linux-foundation.org, jonathan.derrick@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Remove the tracking of device which could not be probed because
their IOMMU is not probed yet. Replace it with a call to
bus_iommu_probe() when a new IOMMU is probed.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/omap-iommu.c | 54 +++-----------------------------------
 1 file changed, 4 insertions(+), 50 deletions(-)

diff --git a/drivers/iommu/omap-iommu.c b/drivers/iommu/omap-iommu.c
index 887fefcb03b4..ecc9d0829a91 100644
--- a/drivers/iommu/omap-iommu.c
+++ b/drivers/iommu/omap-iommu.c
@@ -35,15 +35,6 @@
 
 static const struct iommu_ops omap_iommu_ops;
 
-struct orphan_dev {
-	struct device *dev;
-	struct list_head node;
-};
-
-static LIST_HEAD(orphan_dev_list);
-
-static DEFINE_SPINLOCK(orphan_lock);
-
 #define to_iommu(dev)	((struct omap_iommu *)dev_get_drvdata(dev))
 
 /* bitmap of the page sizes currently supported */
@@ -62,8 +53,6 @@ static DEFINE_SPINLOCK(orphan_lock);
 static struct platform_driver omap_iommu_driver;
 static struct kmem_cache *iopte_cachep;
 
-static int _omap_iommu_add_device(struct device *dev);
-
 /**
  * to_omap_domain - Get struct omap_iommu_domain from generic iommu_domain
  * @dom:	generic iommu domain handle
@@ -1177,7 +1166,6 @@ static int omap_iommu_probe(struct platform_device *pdev)
 	struct omap_iommu *obj;
 	struct resource *res;
 	struct device_node *of = pdev->dev.of_node;
-	struct orphan_dev *orphan_dev, *tmp;
 
 	if (!of) {
 		pr_err("%s: only DT-based devices are supported\n", __func__);
@@ -1260,13 +1248,8 @@ static int omap_iommu_probe(struct platform_device *pdev)
 
 	dev_info(&pdev->dev, "%s registered\n", obj->name);
 
-	list_for_each_entry_safe(orphan_dev, tmp, &orphan_dev_list, node) {
-		err = _omap_iommu_add_device(orphan_dev->dev);
-		if (!err) {
-			list_del(&orphan_dev->node);
-			kfree(orphan_dev);
-		}
-	}
+	/* Re-probe bus to probe device attached to this IOMMU */
+	bus_iommu_probe(&platform_bus_type);
 
 	return 0;
 
@@ -1657,7 +1640,7 @@ static phys_addr_t omap_iommu_iova_to_phys(struct iommu_domain *domain,
 	return ret;
 }
 
-static int _omap_iommu_add_device(struct device *dev)
+static int omap_iommu_add_device(struct device *dev)
 {
 	struct omap_iommu_arch_data *arch_data, *tmp;
 	struct omap_iommu *oiommu;
@@ -1666,8 +1649,6 @@ static int _omap_iommu_add_device(struct device *dev)
 	struct platform_device *pdev;
 	int num_iommus, i;
 	int ret;
-	struct orphan_dev *orphan_dev;
-	unsigned long flags;
 
 	/*
 	 * Allocate the archdata iommu structure for DT-based devices.
@@ -1702,23 +1683,7 @@ static int _omap_iommu_add_device(struct device *dev)
 		if (!pdev) {
 			of_node_put(np);
 			kfree(arch_data);
-			spin_lock_irqsave(&orphan_lock, flags);
-			list_for_each_entry(orphan_dev, &orphan_dev_list,
-					    node) {
-				if (orphan_dev->dev == dev)
-					break;
-			}
-			spin_unlock_irqrestore(&orphan_lock, flags);
-
-			if (orphan_dev && orphan_dev->dev == dev)
-				return -EPROBE_DEFER;
-
-			orphan_dev = kzalloc(sizeof(*orphan_dev), GFP_KERNEL);
-			orphan_dev->dev = dev;
-			spin_lock_irqsave(&orphan_lock, flags);
-			list_add(&orphan_dev->node, &orphan_dev_list);
-			spin_unlock_irqrestore(&orphan_lock, flags);
-			return -EPROBE_DEFER;
+			return -ENODEV;
 		}
 
 		oiommu = platform_get_drvdata(pdev);
@@ -1764,17 +1729,6 @@ static int _omap_iommu_add_device(struct device *dev)
 	return 0;
 }
 
-static int omap_iommu_add_device(struct device *dev)
-{
-	int ret;
-
-	ret = _omap_iommu_add_device(dev);
-	if (ret == -EPROBE_DEFER)
-		return 0;
-
-	return ret;
-}
-
 static void omap_iommu_remove_device(struct device *dev)
 {
 	struct omap_iommu_arch_data *arch_data = dev->archdata.iommu;
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
