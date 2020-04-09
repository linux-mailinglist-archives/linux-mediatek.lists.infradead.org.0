Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A301A337B
	for <lists+linux-mediatek@lfdr.de>; Thu,  9 Apr 2020 13:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tmd9fSc7KTkNWVhS1nIEpGdn0lsn3xO2crnBc6gYo/Q=; b=UDkCObgpQB8ITC
	O+OldP8bF6f2JOm5e/OpFllH08IV+Op0T3WNefKWU8lnv9InvkkP3zIDDyvqH6SEA4RteKvVL5hof
	kGxhbs67o5P8TU6FNShb0J6PqeS3YxZfp8ZUCuRF+7RjSljf+SPDblzb3YwnpODJ2X/Swn+guMkYI
	Z7b4RyHuA6UE/LVs/4fnnqKK5m3ctSureybVTIBLGlv19J2PFhEsyD9936dWZFYtobQPXnx/+gAI9
	NWzcgopsPtOPRKaXqeuxrnXjWXs5R57I/sh0shr9Wwdi9CNaQIU8pnK0y6WMLavT03V6P8Hg2I41/
	Ba07jKs/Wb1TMxrR1z/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMVdp-0005Zg-CX; Thu, 09 Apr 2020 11:46:41 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMVdi-0005Yr-MW; Thu, 09 Apr 2020 11:46:39 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 60A51398; Thu,  9 Apr 2020 13:46:25 +0200 (CEST)
Date: Thu, 9 Apr 2020 13:46:20 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH] iommu/exynos: Get rid of 'struct exynos_iommu_owner'
 exynos_iommu_owner
Message-ID: <20200409114620.GA16298@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
 <CGME20200407184501eucas1p25407bc96e4345df406cf6ba061ae6a82@eucas1p2.samsung.com>
 <20200407183742.4344-32-joro@8bytes.org>
 <449e7f16-e719-9617-ec92-63b82c0bc33f@samsung.com>
 <f59b0bb3-8c08-9cc9-bb1a-e69b7b226f60@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f59b0bb3-8c08-9cc9-bb1a-e69b7b226f60@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_044635_038663_B3F03898 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Joerg Roedel <jroedel@suse.de>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Marek,

I had some more thoughts and discussions with Robin about how to make
this work with the Exynos driver. The result is the patch below, can you
please test it and report back? Even better if you can fix up any
breakage it might cause :)

From 60a288509baa34df6a0bf437c977925a0a617c72 Mon Sep 17 00:00:00 2001
From: Joerg Roedel <jroedel@suse.de>
Date: Thu, 9 Apr 2020 13:38:18 +0200
Subject: [PATCH] iommu/exynos: Get rid of 'struct exynos_iommu_owner'

Remove 'struct exynos_iommu_owner' and replace it with a single-linked
list of 'struct sysmmu_drvdata'. The first item in the list acts as a
replacement for the previous exynos_iommu_owner structure. The
iommu_device member of the first list item is reported to the IOMMU
core code for the master device.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/exynos-iommu.c | 155 ++++++++++++++++++++---------------
 1 file changed, 88 insertions(+), 67 deletions(-)

diff --git a/drivers/iommu/exynos-iommu.c b/drivers/iommu/exynos-iommu.c
index 186ff5cc975c..e70eb360093f 100644
--- a/drivers/iommu/exynos-iommu.c
+++ b/drivers/iommu/exynos-iommu.c
@@ -225,18 +225,6 @@ static const struct sysmmu_fault_info sysmmu_v5_faults[] = {
 	{ 20, REG_V5_FAULT_AW_VA, "AW SECURITY PROTECTION", IOMMU_FAULT_WRITE },
 };
 
-/*
- * This structure is attached to dev.archdata.iommu of the master device
- * on device add, contains a list of SYSMMU controllers defined by device tree,
- * which are bound to given master device. It is usually referenced by 'owner'
- * pointer.
-*/
-struct exynos_iommu_owner {
-	struct list_head controllers;	/* list of sysmmu_drvdata.owner_node */
-	struct iommu_domain *domain;	/* domain this device is attached */
-	struct mutex rpm_lock;		/* for runtime pm of all sysmmus */
-};
-
 /*
  * This structure exynos specific generalization of struct iommu_domain.
  * It contains list of SYSMMU controllers from all master devices, which has
@@ -271,13 +259,23 @@ struct sysmmu_drvdata {
 	bool active;			/* current status */
 	struct exynos_iommu_domain *domain; /* domain we belong to */
 	struct list_head domain_node;	/* node for domain clients list */
-	struct list_head owner_node;	/* node for owner controllers list */
+	struct sysmmu_drvdata *next;	/* Single-linked list to group SMMUs for
+					   one master. NULL means not in any
+					   list, ERR_PTR(-ENODEV) means end of
+					   list */
+	struct mutex rpm_lock;		/* for runtime pm of all sysmmus */
 	phys_addr_t pgtable;		/* assigned page table structure */
 	unsigned int version;		/* our version */
 
 	struct iommu_device iommu;	/* IOMMU core handle */
 };
 
+/* Helper to iterate over all SYSMMUs for a given platform device */
+#define for_each_sysmmu(dev, drvdata)			\
+	for (drvdata = (dev)->archdata.iommu;		\
+	     drvdata != ERR_PTR(-ENODEV);		\
+	     drvdata = drvdata->next)
+
 static struct exynos_iommu_domain *to_exynos_domain(struct iommu_domain *dom)
 {
 	return container_of(dom, struct exynos_iommu_domain, domain);
@@ -624,6 +622,8 @@ static int exynos_sysmmu_probe(struct platform_device *pdev)
 
 	data->sysmmu = dev;
 	spin_lock_init(&data->lock);
+	data->next = NULL;
+	mutex_init(&data->rpm_lock);
 
 	ret = iommu_device_sysfs_add(&data->iommu, &pdev->dev, NULL,
 				     dev_name(data->sysmmu));
@@ -668,17 +668,20 @@ static int __maybe_unused exynos_sysmmu_suspend(struct device *dev)
 {
 	struct sysmmu_drvdata *data = dev_get_drvdata(dev);
 	struct device *master = data->master;
+	struct sysmmu_drvdata *master_data;
 
-	if (master) {
-		struct exynos_iommu_owner *owner = master->archdata.iommu;
+	if (!master)
+		return 0;
 
-		mutex_lock(&owner->rpm_lock);
-		if (data->domain) {
-			dev_dbg(data->sysmmu, "saving state\n");
-			__sysmmu_disable(data);
-		}
-		mutex_unlock(&owner->rpm_lock);
+	master_data = master->archdata.iommu;
+
+	mutex_lock(&master_data->rpm_lock);
+	if (data->domain) {
+		dev_dbg(data->sysmmu, "saving state\n");
+		__sysmmu_disable(data);
 	}
+	mutex_unlock(&master_data->rpm_lock);
+
 	return 0;
 }
 
@@ -686,17 +689,20 @@ static int __maybe_unused exynos_sysmmu_resume(struct device *dev)
 {
 	struct sysmmu_drvdata *data = dev_get_drvdata(dev);
 	struct device *master = data->master;
+	struct sysmmu_drvdata *master_data;
 
-	if (master) {
-		struct exynos_iommu_owner *owner = master->archdata.iommu;
+	if (!master)
+		return 0;
 
-		mutex_lock(&owner->rpm_lock);
-		if (data->domain) {
-			dev_dbg(data->sysmmu, "restoring state\n");
-			__sysmmu_enable(data);
-		}
-		mutex_unlock(&owner->rpm_lock);
+	master_data = master->archdata.iommu;
+
+	mutex_lock(&master_data->rpm_lock);
+	if (data->domain) {
+		dev_dbg(data->sysmmu, "restoring state\n");
+		__sysmmu_enable(data);
 	}
+	mutex_unlock(&master_data->rpm_lock);
+
 	return 0;
 }
 
@@ -834,21 +840,21 @@ static void exynos_iommu_domain_free(struct iommu_domain *iommu_domain)
 	kfree(domain);
 }
 
-static void exynos_iommu_detach_device(struct iommu_domain *iommu_domain,
-				    struct device *dev)
+static void __exynos_iommu_detach_device(struct exynos_iommu_domain *domain,
+					 struct device *dev)
 {
-	struct exynos_iommu_owner *owner = dev->archdata.iommu;
-	struct exynos_iommu_domain *domain = to_exynos_domain(iommu_domain);
 	phys_addr_t pagetable = virt_to_phys(domain->pgtable);
-	struct sysmmu_drvdata *data, *next;
+	struct sysmmu_drvdata *dev_data, *data, *next;
 	unsigned long flags;
 
-	if (!has_sysmmu(dev) || owner->domain != iommu_domain)
+	dev_data = dev->archdata.iommu;
+
+	if (!has_sysmmu(dev) || dev_data->domain != domain)
 		return;
 
-	mutex_lock(&owner->rpm_lock);
+	mutex_lock(&dev_data->rpm_lock);
 
-	list_for_each_entry(data, &owner->controllers, owner_node) {
+	for_each_sysmmu(dev, data) {
 		pm_runtime_get_noresume(data->sysmmu);
 		if (pm_runtime_active(data->sysmmu))
 			__sysmmu_disable(data);
@@ -863,51 +869,59 @@ static void exynos_iommu_detach_device(struct iommu_domain *iommu_domain,
 		list_del_init(&data->domain_node);
 		spin_unlock(&data->lock);
 	}
-	owner->domain = NULL;
 	spin_unlock_irqrestore(&domain->lock, flags);
 
-	mutex_unlock(&owner->rpm_lock);
+	mutex_unlock(&dev_data->rpm_lock);
 
 	dev_dbg(dev, "%s: Detached IOMMU with pgtable %pa\n", __func__,
 		&pagetable);
 }
 
+static void exynos_iommu_detach_device(struct iommu_domain *iommu_domain,
+				       struct device *dev)
+{
+	struct exynos_iommu_domain *domain = to_exynos_domain(iommu_domain);
+
+	__exynos_iommu_detach_device(domain, dev);
+}
+
 static int exynos_iommu_attach_device(struct iommu_domain *iommu_domain,
 				   struct device *dev)
 {
-	struct exynos_iommu_owner *owner = dev->archdata.iommu;
 	struct exynos_iommu_domain *domain = to_exynos_domain(iommu_domain);
-	struct sysmmu_drvdata *data;
+	struct sysmmu_drvdata *dev_data, *data;
 	phys_addr_t pagetable = virt_to_phys(domain->pgtable);
 	unsigned long flags;
 
 	if (!has_sysmmu(dev))
 		return -ENODEV;
 
-	if (owner->domain)
-		exynos_iommu_detach_device(owner->domain, dev);
+	dev_data = dev->archdata.iommu;
 
-	mutex_lock(&owner->rpm_lock);
+	if (dev_data->domain)
+		__exynos_iommu_detach_device(dev_data->domain, dev);
+
+	mutex_lock(&dev_data->rpm_lock);
 
 	spin_lock_irqsave(&domain->lock, flags);
-	list_for_each_entry(data, &owner->controllers, owner_node) {
+	for_each_sysmmu(dev, data) {
 		spin_lock(&data->lock);
 		data->pgtable = pagetable;
 		data->domain = domain;
 		list_add_tail(&data->domain_node, &domain->clients);
 		spin_unlock(&data->lock);
 	}
-	owner->domain = iommu_domain;
 	spin_unlock_irqrestore(&domain->lock, flags);
 
-	list_for_each_entry(data, &owner->controllers, owner_node) {
+
+	for_each_sysmmu(dev, data) {
 		pm_runtime_get_noresume(data->sysmmu);
 		if (pm_runtime_active(data->sysmmu))
 			__sysmmu_enable(data);
 		pm_runtime_put(data->sysmmu);
 	}
 
-	mutex_unlock(&owner->rpm_lock);
+	mutex_unlock(&dev_data->rpm_lock);
 
 	dev_dbg(dev, "%s: Attached IOMMU with pgtable %pa\n", __func__,
 		&pagetable);
@@ -1237,7 +1251,6 @@ static phys_addr_t exynos_iommu_iova_to_phys(struct iommu_domain *iommu_domain,
 
 static int exynos_iommu_add_device(struct device *dev)
 {
-	struct exynos_iommu_owner *owner = dev->archdata.iommu;
 	struct sysmmu_drvdata *data;
 	struct iommu_group *group;
 
@@ -1249,7 +1262,7 @@ static int exynos_iommu_add_device(struct device *dev)
 	if (IS_ERR(group))
 		return PTR_ERR(group);
 
-	list_for_each_entry(data, &owner->controllers, owner_node) {
+	for_each_sysmmu(dev, data) {
 		/*
 		 * SYSMMU will be runtime activated via device link
 		 * (dependency) to its master device, so there are no
@@ -1261,37 +1274,39 @@ static int exynos_iommu_add_device(struct device *dev)
 	}
 	iommu_group_put(group);
 
+	data = dev->archdata.iommu;
+	iommu_device_link(&data->iommu, dev);
+
 	return 0;
 }
 
 static void exynos_iommu_remove_device(struct device *dev)
 {
-	struct exynos_iommu_owner *owner = dev->archdata.iommu;
-	struct sysmmu_drvdata *data;
+	struct sysmmu_drvdata *data = dev->archdata.iommu;
 
 	if (!has_sysmmu(dev))
 		return;
 
-	if (owner->domain) {
+	if (data->domain) {
 		struct iommu_group *group = iommu_group_get(dev);
 
 		if (group) {
-			WARN_ON(owner->domain !=
+			WARN_ON(&data->domain->domain !=
 				iommu_group_default_domain(group));
-			exynos_iommu_detach_device(owner->domain, dev);
+			__exynos_iommu_detach_device(data->domain, dev);
 			iommu_group_put(group);
 		}
 	}
+	iommu_device_unlink(&data->iommu, dev);
 	iommu_group_remove_device(dev);
 
-	list_for_each_entry(data, &owner->controllers, owner_node)
+	for_each_sysmmu(dev, data)
 		device_link_del(data->link);
 }
 
 static int exynos_iommu_of_xlate(struct device *dev,
 				 struct of_phandle_args *spec)
 {
-	struct exynos_iommu_owner *owner = dev->archdata.iommu;
 	struct platform_device *sysmmu = of_find_device_by_node(spec->np);
 	struct sysmmu_drvdata *data, *entry;
 
@@ -1302,22 +1317,28 @@ static int exynos_iommu_of_xlate(struct device *dev,
 	if (!data)
 		return -ENODEV;
 
-	if (!owner) {
-		owner = kzalloc(sizeof(*owner), GFP_KERNEL);
-		if (!owner)
-			return -ENOMEM;
+	data->master = dev;
 
-		INIT_LIST_HEAD(&owner->controllers);
-		mutex_init(&owner->rpm_lock);
-		dev->archdata.iommu = owner;
+	if (!dev->archdata.iommu) {
+		WARN_ON(data->next != NULL);
+
+		/* SYSMMU list is empty - add drvdata and return */
+		data->next = ERR_PTR(-ENODEV);
+		dev->archdata.iommu = data;
+
+		return 0;
 	}
 
-	list_for_each_entry(entry, &owner->controllers, owner_node)
+	/* Check if SYSMMU is already in the list */
+	for_each_sysmmu(dev, entry)
 		if (entry == data)
 			return 0;
 
-	list_add_tail(&data->owner_node, &owner->controllers);
-	data->master = dev;
+	/* Not in the list yet */
+	WARN_ON(data->next != NULL);
+	entry = dev->archdata.iommu;
+	data->next  = entry->next;
+	entry->next = data;
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
