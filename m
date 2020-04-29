Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79021BDEB5
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 Apr 2020 15:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B/zwMHCA3rzucmDkKf+f0GQC37u4zk3xRJBl8PZynQE=; b=LBpp1gXP/82Jj7Ky/GyEosyyHX
	EmGRHusdvv2EWY1uZPVaeyIIxTbsqKn5ZHaHXfrmPSE4+LOD2AiAVFp1g9tn4yeB6776Jadn4rjxE
	BeGreaAf3wS2JmvOT55wios4MDcU7RW78WE94itQsMZhvnosAxI/RulHv1iSjbHccQMeNI+20fcm0
	4sDLk6kpbQEJNe2ITp7U7HfeWNBLGQz1gf3E8PSb1dkMki4h0/87VPrpnZX9V+cKehAUKN+onoXgt
	72HBZJVF+NPm25J15cn+f55dzGK9M4861B+KTUayefQr0HO0CRfu3wDsbQbrLqH/Vh0cDkIw+ctPa
	k/SYpSeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmwQ-0000uw-A2; Wed, 29 Apr 2020 13:39:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmuZ-0006aH-53; Wed, 29 Apr 2020 13:38:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Qfyd6ja2gbCEb9gPUPeTzVgoOIB/wJSpHtio4TB+dp4=; b=kRZli8yKRr39AfbuU+Pl93nKWO
 Chku1PFric4pmex+z1PoGwnpe8C9+qFRmKLsRMobHFuO94x3oBIIzqeM3TBMQPeEVNg7ARNrTrLWF
 lAmUQFLcAPY3d3uXrMPteACPCci23yCB0uR3mMR5xAftsOvwnYQ0paaiF5BWB0qMyq+ad1VhFm4JR
 HTvBLm+nNr+UOzkanSdWcFm03KYWGO3jKFJR1GIKmu3vCZXwXmWH7WCyBKA3PRKt1kaelcuuWOali
 usZvKDi0JPdRoZQ0HLNTYJPyohPSKr3fhxZJEnWb/Dtzgty88UABZCjVnLw13t67MllDHWsJHvTT/
 yWkYQcpg==;
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmuU-00088v-Sh; Wed, 29 Apr 2020 13:38:01 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 77A11F10; Wed, 29 Apr 2020 15:37:41 +0200 (CEST)
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
Subject: [PATCH v3 32/34] iommu: Remove add_device()/remove_device() code-paths
Date: Wed, 29 Apr 2020 15:37:10 +0200
Message-Id: <20200429133712.31431-33-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429133712.31431-1-joro@8bytes.org>
References: <20200429133712.31431-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_143759_183764_1D32CF0F 
X-CRM114-Status: GOOD (  27.50  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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

All drivers are converted to use the probe/release_device()
call-backs, so the add_device/remove_device() pointers are unused and
the code using them can be removed.

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Acked-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c | 158 ++++++++++--------------------------------
 include/linux/iommu.h |   4 --
 2 files changed, 38 insertions(+), 124 deletions(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 397fd4fd0c32..7f99e5ae432c 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -220,12 +220,20 @@ static int __iommu_probe_device(struct device *dev, struct list_head *group_list
 	return ret;
 }
 
-static int __iommu_probe_device_helper(struct device *dev)
+int iommu_probe_device(struct device *dev)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
 	struct iommu_group *group;
 	int ret;
 
+	if (!dev_iommu_get(dev))
+		return -ENOMEM;
+
+	if (!try_module_get(ops->owner)) {
+		ret = -EINVAL;
+		goto err_out;
+	}
+
 	ret = __iommu_probe_device(dev, NULL);
 	if (ret)
 		goto err_out;
@@ -259,75 +267,23 @@ static int __iommu_probe_device_helper(struct device *dev)
 
 err_release:
 	iommu_release_device(dev);
+
 err_out:
 	return ret;
 
 }
 
-int iommu_probe_device(struct device *dev)
+void iommu_release_device(struct device *dev)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
-	struct iommu_group *group;
-	int ret;
-
-	WARN_ON(dev->iommu_group);
-
-	if (!ops)
-		return -EINVAL;
-
-	if (!dev_iommu_get(dev))
-		return -ENOMEM;
-
-	if (!try_module_get(ops->owner)) {
-		ret = -EINVAL;
-		goto err_free_dev_param;
-	}
-
-	if (ops->probe_device)
-		return __iommu_probe_device_helper(dev);
-
-	ret = ops->add_device(dev);
-	if (ret)
-		goto err_module_put;
 
-	group = iommu_group_get(dev);
-	iommu_create_device_direct_mappings(group, dev);
-	iommu_group_put(group);
-
-	if (ops->probe_finalize)
-		ops->probe_finalize(dev);
-
-	return 0;
-
-err_module_put:
-	module_put(ops->owner);
-err_free_dev_param:
-	dev_iommu_free(dev);
-	return ret;
-}
-
-static void __iommu_release_device(struct device *dev)
-{
-	const struct iommu_ops *ops = dev->bus->iommu_ops;
+	if (!dev->iommu)
+		return;
 
 	iommu_device_unlink(dev->iommu->iommu_dev, dev);
-
 	iommu_group_remove_device(dev);
 
 	ops->release_device(dev);
-}
-
-void iommu_release_device(struct device *dev)
-{
-	const struct iommu_ops *ops = dev->bus->iommu_ops;
-
-	if (!dev->iommu)
-		return;
-
-	if (ops->release_device)
-		__iommu_release_device(dev);
-	else if (dev->iommu_group)
-		ops->remove_device(dev);
 
 	module_put(ops->owner);
 	dev_iommu_free(dev);
@@ -1560,23 +1516,6 @@ struct iommu_group *iommu_group_get_for_dev(struct device *dev)
 	if (ret)
 		goto out_put_group;
 
-	/*
-	 * Try to allocate a default domain - needs support from the
-	 * IOMMU driver. There are still some drivers which don't support
-	 * default domains, so the return value is not yet checked. Only
-	 * allocate the domain here when the driver still has the
-	 * add_device/remove_device call-backs implemented.
-	 */
-	if (!ops->probe_device) {
-		iommu_alloc_default_domain(dev);
-
-		if (group->default_domain)
-			ret = __iommu_attach_device(group->default_domain, dev);
-
-		if (ret)
-			goto out_put_group;
-	}
-
 	return group;
 
 out_put_group:
@@ -1591,21 +1530,6 @@ struct iommu_domain *iommu_group_default_domain(struct iommu_group *group)
 	return group->default_domain;
 }
 
-static int add_iommu_group(struct device *dev, void *data)
-{
-	int ret = iommu_probe_device(dev);
-
-	/*
-	 * We ignore -ENODEV errors for now, as they just mean that the
-	 * device is not translated by an IOMMU. We still care about
-	 * other errors and fail to initialize when they happen.
-	 */
-	if (ret == -ENODEV)
-		ret = 0;
-
-	return ret;
-}
-
 static int probe_iommu_group(struct device *dev, void *data)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
@@ -1793,47 +1717,41 @@ static int iommu_group_create_direct_mappings(struct iommu_group *group)
 
 int bus_iommu_probe(struct bus_type *bus)
 {
-	const struct iommu_ops *ops = bus->iommu_ops;
+	struct iommu_group *group, *next;
+	LIST_HEAD(group_list);
 	int ret;
 
-	if (ops->probe_device) {
-		struct iommu_group *group, *next;
-		LIST_HEAD(group_list);
-
-		/*
-		 * This code-path does not allocate the default domain when
-		 * creating the iommu group, so do it after the groups are
-		 * created.
-		 */
-		ret = bus_for_each_dev(bus, NULL, &group_list, probe_iommu_group);
-		if (ret)
-			return ret;
+	/*
+	 * This code-path does not allocate the default domain when
+	 * creating the iommu group, so do it after the groups are
+	 * created.
+	 */
+	ret = bus_for_each_dev(bus, NULL, &group_list, probe_iommu_group);
+	if (ret)
+		return ret;
 
-		list_for_each_entry_safe(group, next, &group_list, entry) {
-			/* Remove item from the list */
-			list_del_init(&group->entry);
+	list_for_each_entry_safe(group, next, &group_list, entry) {
+		/* Remove item from the list */
+		list_del_init(&group->entry);
 
-			mutex_lock(&group->mutex);
+		mutex_lock(&group->mutex);
 
-			/* Try to allocate default domain */
-			probe_alloc_default_domain(bus, group);
+		/* Try to allocate default domain */
+		probe_alloc_default_domain(bus, group);
 
-			if (!group->default_domain) {
-				mutex_unlock(&group->mutex);
-				continue;
-			}
+		if (!group->default_domain) {
+			mutex_unlock(&group->mutex);
+			continue;
+		}
 
-			iommu_group_create_direct_mappings(group);
+		iommu_group_create_direct_mappings(group);
 
-			ret = __iommu_group_dma_attach(group);
+		ret = __iommu_group_dma_attach(group);
 
-			mutex_unlock(&group->mutex);
+		mutex_unlock(&group->mutex);
 
-			if (ret)
-				break;
-		}
-	} else {
-		ret = bus_for_each_dev(bus, NULL, NULL, add_iommu_group);
+		if (ret)
+			break;
 	}
 
 	return ret;
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index fea1622408ad..dd076366383f 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -223,8 +223,6 @@ struct iommu_iotlb_gather {
  * @iotlb_sync: Flush all queued ranges from the hardware TLBs and empty flush
  *            queue
  * @iova_to_phys: translate iova to physical address
- * @add_device: add device to iommu grouping
- * @remove_device: remove device from iommu grouping
  * @probe_device: Add device to iommu driver handling
  * @release_device: Remove device from iommu driver handling
  * @probe_finalize: Do final setup work after the device is added to an IOMMU
@@ -277,8 +275,6 @@ struct iommu_ops {
 	void (*iotlb_sync)(struct iommu_domain *domain,
 			   struct iommu_iotlb_gather *iotlb_gather);
 	phys_addr_t (*iova_to_phys)(struct iommu_domain *domain, dma_addr_t iova);
-	int (*add_device)(struct device *dev);
-	void (*remove_device)(struct device *dev);
 	struct iommu_device *(*probe_device)(struct device *dev);
 	void (*release_device)(struct device *dev);
 	void (*probe_finalize)(struct device *dev);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
