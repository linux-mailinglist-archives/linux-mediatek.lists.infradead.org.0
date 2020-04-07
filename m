Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106FB1A1509
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Apr 2020 20:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZBo6r5JHKLHWlY9JmZrgXa75SnOV5KZhT2XdvBpVZhA=; b=BLXex3191OL3RG/GbCGLvjSSuE
	8SsG/jvIc8Ud0vTWs3zmXwXr2t9Zt2Jyou1RhncBiYZ5hRFjnLNILe0/8uaGY3zaewUN9sdCtGD1/
	33gf6vJXOsmwJVr1GqXEtuiAfUTo+FZXfPaQEYnQSAQ82rFut3DokzmEIwEq5oM5argtS2G3luoF2
	G7gs7DrCRX44xVk4bZL5d+G6UZIEyYaCRGNPaYGpZq2+hYkMcKYpgZxKZ1iLaDenmaPKZRy+qYC78
	EqZr9c46jja2asbtPuJAKMQ9eUdD6jOFbozpPvcsZlWTlOlhN279f6ZDlwH/Jf0aAfRvpoZjEYRkd
	VOz7cZqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt9d-0004GM-4f; Tue, 07 Apr 2020 18:40:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt7U-0007QW-4M; Tue, 07 Apr 2020 18:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7jodlBtZnGAR7wEmBjwZjV6LwDmS5pFdoJFCuxWFHmY=; b=j9savxOGOfX0Tnv9bR+Ig3iVsN
 I734IvhFVyegCctqRlw4UQF+g9G3JRwDmysO+/jD4U1YcAK3xciMDP2d+ej6g/5J/egpU59j0+dUH
 yJBfO7zBCbqAo/kT6kNIBs9G6ZWJCWFPjZ2hXx2gj/sSG2YNR0QnGQEts3h0Sp2j4szU7IhkbWDKr
 RSZt3SMS+7wqyS4DgtCv+XzYI0CHgO0HorbDTu4qbr0NqxM7CorYHWGXfqG1xDP61UIb1AVU4ez4B
 OTKT5GSDSlHmSNnUZnhQL9GwoWwYsOhINg9p+S0DyNrnZuXfBML1+3bHZT3kOnvlj8JRnUnQISa/+
 ijl2RQ3A==;
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt78-0004pg-25; Tue, 07 Apr 2020 18:38:42 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 773C3596; Tue,  7 Apr 2020 20:37:52 +0200 (CEST)
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
Subject: [RFC PATCH 22/34] iommu/msm: Convert to probe/release_device()
 call-backs
Date: Tue,  7 Apr 2020 20:37:30 +0200
Message-Id: <20200407183742.4344-23-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_193823_741182_539491E5 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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

Convert the MSM IOMMU driver to use the probe_device() and
release_device() call-backs of iommu_ops, so that the iommu core code
does the group and sysfs setup.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/msm_iommu.c | 34 +++++++---------------------------
 1 file changed, 7 insertions(+), 27 deletions(-)

diff --git a/drivers/iommu/msm_iommu.c b/drivers/iommu/msm_iommu.c
index 94a6df1bddd6..10cd4db0710a 100644
--- a/drivers/iommu/msm_iommu.c
+++ b/drivers/iommu/msm_iommu.c
@@ -388,43 +388,23 @@ static struct msm_iommu_dev *find_iommu_for_dev(struct device *dev)
 	return ret;
 }
 
-static int msm_iommu_add_device(struct device *dev)
+static struct iommu_device *msm_iommu_probe_device(struct device *dev)
 {
 	struct msm_iommu_dev *iommu;
-	struct iommu_group *group;
 	unsigned long flags;
 
 	spin_lock_irqsave(&msm_iommu_lock, flags);
 	iommu = find_iommu_for_dev(dev);
 	spin_unlock_irqrestore(&msm_iommu_lock, flags);
 
-	if (iommu)
-		iommu_device_link(&iommu->iommu, dev);
-	else
-		return -ENODEV;
-
-	group = iommu_group_get_for_dev(dev);
-	if (IS_ERR(group))
-		return PTR_ERR(group);
-
-	iommu_group_put(group);
+	if (!iommu)
+		return ERR_PTR(-ENODEV);
 
-	return 0;
+	return &iommu->iommu;
 }
 
-static void msm_iommu_remove_device(struct device *dev)
+static void msm_iommu_release_device(struct device *dev)
 {
-	struct msm_iommu_dev *iommu;
-	unsigned long flags;
-
-	spin_lock_irqsave(&msm_iommu_lock, flags);
-	iommu = find_iommu_for_dev(dev);
-	spin_unlock_irqrestore(&msm_iommu_lock, flags);
-
-	if (iommu)
-		iommu_device_unlink(&iommu->iommu, dev);
-
-	iommu_group_remove_device(dev);
 }
 
 static int msm_iommu_attach_dev(struct iommu_domain *domain, struct device *dev)
@@ -708,8 +688,8 @@ static struct iommu_ops msm_iommu_ops = {
 	 */
 	.iotlb_sync = NULL,
 	.iova_to_phys = msm_iommu_iova_to_phys,
-	.add_device = msm_iommu_add_device,
-	.remove_device = msm_iommu_remove_device,
+	.probe_device = msm_iommu_probe_device,
+	.release_device = msm_iommu_release_device,
 	.device_group = generic_device_group,
 	.pgsize_bitmap = MSM_IOMMU_PGSIZES,
 	.of_xlate = qcom_iommu_of_xlate,
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
