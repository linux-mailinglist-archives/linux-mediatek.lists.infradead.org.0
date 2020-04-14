Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DFE1A7DB9
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 15:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z908pqieKt4xQ3lhMKnPXxfiGcVtNmF/9wqH7uot7ms=; b=UshP6i9SCLFIG4skdF2ezxAcSu
	SP/oAVJrYlZCZLQKzEQ2ldAyo3NikanJCe3vWQj/5C1b2RHcDZYlLlC0jkBGp441+mrNBToHv4AmD
	3BRRIStkh4zU+D9qsLL0Kzz8a4DaeoMFeVc+9XRBvIn45VcHr5tIsy8nc+4BuZ2cFOxPkvsh/Z4AA
	qCPoL43v7XHy8Zj8MRPUp1IzJZyfZPkbohgcTdE2uYRgY5bCp6LQy8BcOd3h3APpUdvHEHYz8lBri
	U18O9UaWmEgBpSVhJepG/jeEfMQDzt1Dz4EKMcVKvmVVKVchQpfJbWIfIJjegBK1ml3N/s+8asKCt
	tQjZ9wJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLXm-0004V6-21; Tue, 14 Apr 2020 13:24:02 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQ8-0002Wc-0Q; Tue, 14 Apr 2020 13:16:15 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 0F20F5FF; Tue, 14 Apr 2020 15:15:53 +0200 (CEST)
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
Subject: [PATCH v2 14/33] iommu/amd: Remove dev_data->passthrough
Date: Tue, 14 Apr 2020 15:15:23 +0200
Message-Id: <20200414131542.25608-15-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061608_354752_23582F93 
X-CRM114-Status: GOOD (  14.93  )
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

Make use of generic IOMMU infrastructure to gather the same information
carried in dev_data->passthrough and remove the struct member.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/amd_iommu.c       | 10 +++++-----
 drivers/iommu/amd_iommu_types.h |  1 -
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index 3e0d27f7622e..0b4b4faa876d 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -2047,8 +2047,8 @@ static int pdev_iommuv2_enable(struct pci_dev *pdev)
 static int attach_device(struct device *dev,
 			 struct protection_domain *domain)
 {
-	struct pci_dev *pdev;
 	struct iommu_dev_data *dev_data;
+	struct pci_dev *pdev;
 	unsigned long flags;
 	int ret;
 
@@ -2067,8 +2067,10 @@ static int attach_device(struct device *dev,
 
 	pdev = to_pci_dev(dev);
 	if (domain->flags & PD_IOMMUV2_MASK) {
+		struct iommu_domain *def_domain = iommu_get_dma_domain(dev);
+
 		ret = -EINVAL;
-		if (!dev_data->passthrough)
+		if (def_domain->type != IOMMU_DOMAIN_IDENTITY)
 			goto out;
 
 		if (dev_data->iommu_v2) {
@@ -2189,9 +2191,7 @@ static int amd_iommu_add_device(struct device *dev)
 
 	/* Domains are initialized for this device - have a look what we ended up with */
 	domain = iommu_get_domain_for_dev(dev);
-	if (domain->type == IOMMU_DOMAIN_IDENTITY)
-		dev_data->passthrough = true;
-	else if (domain->type == IOMMU_DOMAIN_DMA)
+	if (domain->type == IOMMU_DOMAIN_DMA)
 		iommu_setup_dma_ops(dev, IOVA_START_PFN << PAGE_SHIFT, 0);
 
 out:
diff --git a/drivers/iommu/amd_iommu_types.h b/drivers/iommu/amd_iommu_types.h
index ca8c4522045b..d0d7b6a0c3d8 100644
--- a/drivers/iommu/amd_iommu_types.h
+++ b/drivers/iommu/amd_iommu_types.h
@@ -640,7 +640,6 @@ struct iommu_dev_data {
 	struct pci_dev *pdev;
 	u16 devid;			  /* PCI Device ID */
 	bool iommu_v2;			  /* Device can make use of IOMMUv2 */
-	bool passthrough;		  /* Device is identity mapped */
 	struct {
 		bool enabled;
 		int qdep;
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
