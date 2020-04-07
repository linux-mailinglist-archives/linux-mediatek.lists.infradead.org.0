Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0BB1A1482
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Apr 2020 20:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m6+qh4GI0mc3uECPAZZfLLLpHr1/l0Ti+ndOAE+mIaE=; b=RWuucwmrUtADZCKRBvnUZCSlcq
	0RluHm5hT736enZfSDpSR7sJKNa6dK6qKfhET9xbdwAa2xk82R/8CEzBfIZxw/uUt/vYO72w67v2q
	a2gbEWJ08vldKyqh1tlOB1eDlcXnLLDT9Yi4mN3ttSwyXeKggF/OGCc7Y+8vkX/e+zc8mBqAGSrNW
	cJqk2gXlTgL+kloJEEpLBNglMmJbR7V/kWK3HeUGu/rZsxWOKA+8i6qT/lupoV/7XowzO96lxdtnF
	wenKYKm0j3iHW1UJ3mD5UJLVj4fcavFPUIkzGNKj+g4PzcytubWLljIpEkh+OfhLfc4ay8SMOKQB6
	346OUKpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt81-0008Ap-KN; Tue, 07 Apr 2020 18:39:17 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt6t-0006od-Fz; Tue, 07 Apr 2020 18:38:11 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 3FD6B46B; Tue,  7 Apr 2020 20:37:51 +0200 (CEST)
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
Subject: [RFC PATCH 16/34] iommu/vt-d: Convert to probe/release_device()
 call-backs
Date: Tue,  7 Apr 2020 20:37:24 +0200
Message-Id: <20200407183742.4344-17-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113807_707574_DC4911B5 
X-CRM114-Status: GOOD (  13.58  )
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

Convert the Intel IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/intel-iommu.c | 67 ++++---------------------------------
 1 file changed, 6 insertions(+), 61 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index b9f905a55dda..b906727f5b85 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -5781,78 +5781,27 @@ static bool intel_iommu_capable(enum iommu_cap cap)
 	return false;
 }
 
-static int intel_iommu_add_device(struct device *dev)
+static struct iommu_device *intel_iommu_probe_device(struct device *dev)
 {
-	struct dmar_domain *dmar_domain;
-	struct iommu_domain *domain;
 	struct intel_iommu *iommu;
-	struct iommu_group *group;
 	u8 bus, devfn;
-	int ret;
 
 	iommu = device_to_iommu(dev, &bus, &devfn);
 	if (!iommu)
-		return -ENODEV;
-
-	iommu_device_link(&iommu->iommu, dev);
+		return ERR_PTR(-ENODEV);
 
 	if (translation_pre_enabled(iommu))
 		dev->archdata.iommu = DEFER_DEVICE_DOMAIN_INFO;
 
-	group = iommu_group_get_for_dev(dev);
-
-	if (IS_ERR(group)) {
-		ret = PTR_ERR(group);
-		goto unlink;
-	}
-
-	iommu_group_put(group);
-
-	domain = iommu_get_domain_for_dev(dev);
-	dmar_domain = to_dmar_domain(domain);
-	if (domain->type == IOMMU_DOMAIN_DMA) {
-		if (device_def_domain_type(dev) == IOMMU_DOMAIN_IDENTITY) {
-			ret = iommu_request_dm_for_dev(dev);
-			if (ret) {
-				dmar_remove_one_dev_info(dev);
-				dmar_domain->flags |= DOMAIN_FLAG_LOSE_CHILDREN;
-				domain_add_dev_info(si_domain, dev);
-				dev_info(dev,
-					 "Device uses a private identity domain.\n");
-			}
-		}
-	} else {
-		if (device_def_domain_type(dev) == IOMMU_DOMAIN_DMA) {
-			ret = iommu_request_dma_domain_for_dev(dev);
-			if (ret) {
-				dmar_remove_one_dev_info(dev);
-				dmar_domain->flags |= DOMAIN_FLAG_LOSE_CHILDREN;
-				if (!get_private_domain_for_dev(dev)) {
-					dev_warn(dev,
-						 "Failed to get a private domain.\n");
-					ret = -ENOMEM;
-					goto unlink;
-				}
-
-				dev_info(dev,
-					 "Device uses a private dma domain.\n");
-			}
-		}
-	}
-
 	if (device_needs_bounce(dev)) {
 		dev_info(dev, "Use Intel IOMMU bounce page dma_ops\n");
 		set_dma_ops(dev, &bounce_dma_ops);
 	}
 
-	return 0;
-
-unlink:
-	iommu_device_unlink(&iommu->iommu, dev);
-	return ret;
+	return &iommu->iommu;
 }
 
-static void intel_iommu_remove_device(struct device *dev)
+static void intel_iommu_release_device(struct device *dev)
 {
 	struct intel_iommu *iommu;
 	u8 bus, devfn;
@@ -5863,10 +5812,6 @@ static void intel_iommu_remove_device(struct device *dev)
 
 	dmar_remove_one_dev_info(dev);
 
-	iommu_group_remove_device(dev);
-
-	iommu_device_unlink(&iommu->iommu, dev);
-
 	if (device_needs_bounce(dev))
 		set_dma_ops(dev, NULL);
 }
@@ -6198,8 +6143,8 @@ const struct iommu_ops intel_iommu_ops = {
 	.map			= intel_iommu_map,
 	.unmap			= intel_iommu_unmap,
 	.iova_to_phys		= intel_iommu_iova_to_phys,
-	.add_device		= intel_iommu_add_device,
-	.remove_device		= intel_iommu_remove_device,
+	.probe_device		= intel_iommu_probe_device,
+	.release_device		= intel_iommu_release_device,
 	.get_resv_regions	= intel_iommu_get_resv_regions,
 	.put_resv_regions	= generic_iommu_put_resv_regions,
 	.apply_resv_region	= intel_iommu_apply_resv_region,
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
