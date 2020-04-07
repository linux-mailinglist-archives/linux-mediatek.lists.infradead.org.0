Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139571A14AA
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Apr 2020 20:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IxQuH351XsZ0LC9aZFKz8KMSea4W9ho4QcAHSJUeB/Y=; b=ZBYB9IhX4HqZYl/vupybdPuFxR
	NxmDFMuHp33UygCCwkslGLwsOXqyjlSGYspCbGeTr8QSdNMaBXIwZG73vnESbb8iyy0dYYJjfSGFg
	NNLRhzhUUVie8bWIUTIaVL7UOaV4A/a/Phcc8plhcAsHwi0uomgOwPk+XWXaKH8IksE+Zm5otCIfb
	s4buEN/Jb6rfhRkNHVtvU2FaIZG2aDStjkay8uW6+VHENUqxq+No66mvGof599feozzT4cQEtSnze
	v7l4L92MvMEQpQRavh12zpZh49nhP//zoHt4zhfox/jCVXPlKI3U1jA4zdN1jN5jIqUjKBhCZHMDo
	3zN9kgRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt8G-00008m-N1; Tue, 07 Apr 2020 18:39:32 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt6z-0006tx-B0; Tue, 07 Apr 2020 18:38:16 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 51AD96A1; Tue,  7 Apr 2020 20:37:54 +0200 (CEST)
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
Subject: [RFC PATCH 30/34] iommu/omap: Convert to probe/release_device()
 call-backs
Date: Tue,  7 Apr 2020 20:37:38 +0200
Message-Id: <20200407183742.4344-31-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113813_572544_942E9617 
X-CRM114-Status: GOOD (  15.18  )
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
 virtualization@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Convert the OMAP IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/omap-iommu.c | 49 ++++++++++----------------------------
 1 file changed, 13 insertions(+), 36 deletions(-)

diff --git a/drivers/iommu/omap-iommu.c b/drivers/iommu/omap-iommu.c
index ecc9d0829a91..6699fe6d9e06 100644
--- a/drivers/iommu/omap-iommu.c
+++ b/drivers/iommu/omap-iommu.c
@@ -1640,15 +1640,13 @@ static phys_addr_t omap_iommu_iova_to_phys(struct iommu_domain *domain,
 	return ret;
 }
 
-static int omap_iommu_add_device(struct device *dev)
+static struct iommu_device *omap_iommu_probe_device(struct device *dev)
 {
 	struct omap_iommu_arch_data *arch_data, *tmp;
+	struct platform_device *pdev;
 	struct omap_iommu *oiommu;
-	struct iommu_group *group;
 	struct device_node *np;
-	struct platform_device *pdev;
 	int num_iommus, i;
-	int ret;
 
 	/*
 	 * Allocate the archdata iommu structure for DT-based devices.
@@ -1657,7 +1655,7 @@ static int omap_iommu_add_device(struct device *dev)
 	 * IOMMU users.
 	 */
 	if (!dev->of_node)
-		return 0;
+		return ERR_PTR(-ENODEV);
 
 	/*
 	 * retrieve the count of IOMMU nodes using phandle size as element size
@@ -1670,27 +1668,27 @@ static int omap_iommu_add_device(struct device *dev)
 
 	arch_data = kcalloc(num_iommus + 1, sizeof(*arch_data), GFP_KERNEL);
 	if (!arch_data)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
 	for (i = 0, tmp = arch_data; i < num_iommus; i++, tmp++) {
 		np = of_parse_phandle(dev->of_node, "iommus", i);
 		if (!np) {
 			kfree(arch_data);
-			return -EINVAL;
+			return ERR_PTR(-EINVAL);
 		}
 
 		pdev = of_find_device_by_node(np);
 		if (!pdev) {
 			of_node_put(np);
 			kfree(arch_data);
-			return -ENODEV;
+			return ERR_PTR(-ENODEV);
 		}
 
 		oiommu = platform_get_drvdata(pdev);
 		if (!oiommu) {
 			of_node_put(np);
 			kfree(arch_data);
-			return -EINVAL;
+			return ERR_PTR(-EINVAL);
 		}
 
 		tmp->iommu_dev = oiommu;
@@ -1699,46 +1697,25 @@ static int omap_iommu_add_device(struct device *dev)
 		of_node_put(np);
 	}
 
+	dev->archdata.iommu = arch_data;
+
 	/*
 	 * use the first IOMMU alone for the sysfs device linking.
 	 * TODO: Evaluate if a single iommu_group needs to be
 	 * maintained for both IOMMUs
 	 */
 	oiommu = arch_data->iommu_dev;
-	ret = iommu_device_link(&oiommu->iommu, dev);
-	if (ret) {
-		kfree(arch_data);
-		return ret;
-	}
-
-	dev->archdata.iommu = arch_data;
-
-	/*
-	 * IOMMU group initialization calls into omap_iommu_device_group, which
-	 * needs a valid dev->archdata.iommu pointer
-	 */
-	group = iommu_group_get_for_dev(dev);
-	if (IS_ERR(group)) {
-		iommu_device_unlink(&oiommu->iommu, dev);
-		dev->archdata.iommu = NULL;
-		kfree(arch_data);
-		return PTR_ERR(group);
-	}
-	iommu_group_put(group);
 
-	return 0;
+	return &oiommu->iommu;
 }
 
-static void omap_iommu_remove_device(struct device *dev)
+static void omap_iommu_release_device(struct device *dev)
 {
 	struct omap_iommu_arch_data *arch_data = dev->archdata.iommu;
 
 	if (!dev->of_node || !arch_data)
 		return;
 
-	iommu_device_unlink(&arch_data->iommu_dev->iommu, dev);
-	iommu_group_remove_device(dev);
-
 	dev->archdata.iommu = NULL;
 	kfree(arch_data);
 
@@ -1763,8 +1740,8 @@ static const struct iommu_ops omap_iommu_ops = {
 	.map		= omap_iommu_map,
 	.unmap		= omap_iommu_unmap,
 	.iova_to_phys	= omap_iommu_iova_to_phys,
-	.add_device	= omap_iommu_add_device,
-	.remove_device	= omap_iommu_remove_device,
+	.probe_device	= omap_iommu_probe_device,
+	.release_device	= omap_iommu_release_device,
 	.device_group	= omap_iommu_device_group,
 	.pgsize_bitmap	= OMAP_IOMMU_PGSIZES,
 };
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
