Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6C01BDEA1
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 Apr 2020 15:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=psk5MJpYUgq5XyRzpgPnzEplU3i7JqI0nUUHbDiAfhw=; b=Eua+welqsXWravrLjCo7UDQXmq
	c2MNDvDKDNbSP5fdQGcprFqq7/GgNS2q9k3BrFGqiWilgaTZRrLE7JNhbb9OJRB3ELeru+ODAH/v0
	5uaWiH9ZZOPk7H2OQKakXjCdV8NiZ6XAgtuZ8i38XEQBimSDnskcblvoyo7FNN+2OnwpMgH2xKVMD
	EHzGnJRsw0NBjHXPUnl4vEiSHGWz5+Typqtg39N4+tNNAB6zqcOHcvh4EWm63t1HuneLjVVsoC+us
	Zmug/1F/L7wS584S83wTTQBu+9hZT2C+RRUvMWZZy4tAznZjrjV8h5g8OCgUbMRXCLbMTiM1YaRk3
	mgnBikUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmvs-0008Uw-2B; Wed, 29 Apr 2020 13:39:24 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmuQ-0006O8-A6; Wed, 29 Apr 2020 13:37:59 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 7A310F07; Wed, 29 Apr 2020 15:37:40 +0200 (CEST)
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
Subject: [PATCH v3 27/34] iommu/renesas: Convert to probe/release_device()
 call-backs
Date: Wed, 29 Apr 2020 15:37:05 +0200
Message-Id: <20200429133712.31431-28-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429133712.31431-1-joro@8bytes.org>
References: <20200429133712.31431-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_063754_578174_1B3B8D66 
X-CRM114-Status: GOOD (  17.70  )
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

Convert the Renesas IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/ipmmu-vmsa.c | 60 +++++++++++++-------------------------
 1 file changed, 20 insertions(+), 40 deletions(-)

diff --git a/drivers/iommu/ipmmu-vmsa.c b/drivers/iommu/ipmmu-vmsa.c
index 310cf09feea3..fb7e702dee23 100644
--- a/drivers/iommu/ipmmu-vmsa.c
+++ b/drivers/iommu/ipmmu-vmsa.c
@@ -805,24 +805,8 @@ static int ipmmu_of_xlate(struct device *dev,
 static int ipmmu_init_arm_mapping(struct device *dev)
 {
 	struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);
-	struct iommu_group *group;
 	int ret;
 
-	/* Create a device group and add the device to it. */
-	group = iommu_group_alloc();
-	if (IS_ERR(group)) {
-		dev_err(dev, "Failed to allocate IOMMU group\n");
-		return PTR_ERR(group);
-	}
-
-	ret = iommu_group_add_device(group, dev);
-	iommu_group_put(group);
-
-	if (ret < 0) {
-		dev_err(dev, "Failed to add device to IPMMU group\n");
-		return ret;
-	}
-
 	/*
 	 * Create the ARM mapping, used by the ARM DMA mapping core to allocate
 	 * VAs. This will allocate a corresponding IOMMU domain.
@@ -856,48 +840,39 @@ static int ipmmu_init_arm_mapping(struct device *dev)
 	return 0;
 
 error:
-	iommu_group_remove_device(dev);
 	if (mmu->mapping)
 		arm_iommu_release_mapping(mmu->mapping);
 
 	return ret;
 }
 
-static int ipmmu_add_device(struct device *dev)
+static struct iommu_device *ipmmu_probe_device(struct device *dev)
 {
 	struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);
-	struct iommu_group *group;
-	int ret;
 
 	/*
 	 * Only let through devices that have been verified in xlate()
 	 */
 	if (!mmu)
-		return -ENODEV;
+		return ERR_PTR(-ENODEV);
 
-	if (IS_ENABLED(CONFIG_ARM) && !IS_ENABLED(CONFIG_IOMMU_DMA)) {
-		ret = ipmmu_init_arm_mapping(dev);
-		if (ret)
-			return ret;
-	} else {
-		group = iommu_group_get_for_dev(dev);
-		if (IS_ERR(group))
-			return PTR_ERR(group);
+	return &mmu->iommu;
+}
 
-		iommu_group_put(group);
-	}
+static void ipmmu_probe_finalize(struct device *dev)
+{
+	int ret = 0;
 
-	iommu_device_link(&mmu->iommu, dev);
-	return 0;
+	if (IS_ENABLED(CONFIG_ARM) && !IS_ENABLED(CONFIG_IOMMU_DMA))
+		ret = ipmmu_init_arm_mapping(dev);
+
+	if (ret)
+		dev_err(dev, "Can't create IOMMU mapping - DMA-OPS will not work\n");
 }
 
-static void ipmmu_remove_device(struct device *dev)
+static void ipmmu_release_device(struct device *dev)
 {
-	struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);
-
-	iommu_device_unlink(&mmu->iommu, dev);
 	arm_iommu_detach_device(dev);
-	iommu_group_remove_device(dev);
 }
 
 static struct iommu_group *ipmmu_find_group(struct device *dev)
@@ -925,9 +900,14 @@ static const struct iommu_ops ipmmu_ops = {
 	.flush_iotlb_all = ipmmu_flush_iotlb_all,
 	.iotlb_sync = ipmmu_iotlb_sync,
 	.iova_to_phys = ipmmu_iova_to_phys,
-	.add_device = ipmmu_add_device,
-	.remove_device = ipmmu_remove_device,
+	.probe_device = ipmmu_probe_device,
+	.release_device = ipmmu_release_device,
+	.probe_finalize = ipmmu_probe_finalize,
+#if defined(CONFIG_ARM) && !defined(CONFIG_IOMMU_DMA)
+	.device_group = generic_device_group,
+#else
 	.device_group = ipmmu_find_group,
+#endif
 	.pgsize_bitmap = SZ_1G | SZ_2M | SZ_4K,
 	.of_xlate = ipmmu_of_xlate,
 };
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
