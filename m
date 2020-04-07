Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AAC1A147C
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Apr 2020 20:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B00YyYGIfSceGkJwxEWGZD0Ig8W6a/xlCMneIiFhvBY=; b=W/lPF93RSmG+NiG8PMZIDfnBEu
	d63wkiN+z4lu+lbEOKzE3UuSVGOezinnOVdhA1BOovWAknGOL5k8OJtXvJdQbvm4srH0N41n/vI7m
	DNZ1sO8WDoG/HHLD5+4r+rKc4Y2ybuc9vRp2salRPmA5hT2ZsVPajw4solmdMKnJ+bnFd+VGN64NJ
	2ZoKGyJBZU4DfcQ+UxqKZ/Q56AGJf9kAcxWrwPf66Uwr+CdN+TQ+d/jdUooLLC8hP7UHOlskUtP/a
	h/UkbwywnaC8Kr0efPSmM7ca2hfZziHK7F4Kl/66tHYIpCNnh8UkZfn/KWprvprXQAeJ56kvujyUR
	3aYTGlAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt7z-00088p-AG; Tue, 07 Apr 2020 18:39:15 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt6t-0006of-Pe; Tue, 07 Apr 2020 18:38:12 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 5DAF6475; Tue,  7 Apr 2020 20:37:51 +0200 (CEST)
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
Subject: [RFC PATCH 17/34] iommu/arm-smmu: Store device instead of group in
 arm_smmu_s2cr
Date: Tue,  7 Apr 2020 20:37:25 +0200
Message-Id: <20200407183742.4344-18-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113808_026567_36208C1F 
X-CRM114-Status: GOOD (  13.11  )
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

This is required to convert the arm-smmu driver to the
probe/release_device() interface.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/arm-smmu.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index a6a5796e9c41..3493501d8b2c 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -69,7 +69,7 @@ MODULE_PARM_DESC(disable_bypass,
 	"Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
 
 struct arm_smmu_s2cr {
-	struct iommu_group		*group;
+	struct device			*dev;
 	int				count;
 	enum arm_smmu_s2cr_type		type;
 	enum arm_smmu_s2cr_privcfg	privcfg;
@@ -1100,7 +1100,7 @@ static int arm_smmu_master_alloc_smes(struct device *dev)
 	/* It worked! Now, poke the actual hardware */
 	for_each_cfg_sme(cfg, fwspec, i, idx) {
 		arm_smmu_write_sme(smmu, idx);
-		smmu->s2crs[idx].group = group;
+		smmu->s2crs[idx].dev = dev;
 	}
 
 	mutex_unlock(&smmu->stream_map_mutex);
@@ -1495,11 +1495,15 @@ static struct iommu_group *arm_smmu_device_group(struct device *dev)
 	int i, idx;
 
 	for_each_cfg_sme(cfg, fwspec, i, idx) {
-		if (group && smmu->s2crs[idx].group &&
-		    group != smmu->s2crs[idx].group)
+		struct iommu_group *idx_grp = NULL;
+
+		if (smmu->s2crs[idx].dev)
+			idx_grp = smmu->s2crs[idx].dev->iommu_group;
+
+		if (group && idx_grp && group != idx_grp)
 			return ERR_PTR(-EINVAL);
 
-		group = smmu->s2crs[idx].group;
+		group = idx_grp;
 	}
 
 	if (group)
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
