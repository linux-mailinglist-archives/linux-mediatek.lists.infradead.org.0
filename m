Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9901B194288
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Mar 2020 16:09:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eTuoJHTOQkNwEega5QvYeXnhQKs61SshX5lCLv63KeQ=; b=OMc1jZDgEbOf8LSO9yojfm08qu
	RhZrYxr5jK2+6VDOSAy/vtXbxf34qIJtZaC3fEACqJE7YI+S0JZqBsLOKIJUYGtY+DXcVZfghVDiy
	5BOyPsAPmRuZR5DSez0gYiFl/bY5jjLHROpQNsvR+PuXt2STAuIWBpDF/HXORbmDfxvr99JEUEFBp
	4uS7Kva4IimXbVY4pENbFRNNsFifEI+6QKi2/fWuySl0yaQxvrCMGl6imyHeJ0B7cwN2ayX5Vt9hM
	D9sThkjNXm7tBG09jmsNP56Ay0JJO0GAx2p0sCx8ctSnrJLY1a8hSWYzyiMlsOxmM/1FBT5EFhjeC
	yzGyl7fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHU8A-0004V7-6k; Thu, 26 Mar 2020 15:09:14 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHU7q-000422-GP
 for linux-mediatek@lists.infradead.org; Thu, 26 Mar 2020 15:08:57 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id DC0B9936; Thu, 26 Mar 2020 16:08:47 +0100 (CET)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v4 11/16] iommu/arm-smmu: Use accessor functions for iommu
 private data
Date: Thu, 26 Mar 2020 16:08:36 +0100
Message-Id: <20200326150841.10083-12-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326150841.10083-1-joro@8bytes.org>
References: <20200326150841.10083-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_080854_725315_F9D24766 
X-CRM114-Status: GOOD (  11.57  )
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <jroedel@suse.de>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, guohanjun@huawei.com,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Paul <sean@poorly.run>, Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Make use of dev_iommu_priv_set/get() functions and simplify the code
where possible with this change.

Tested-by: Will Deacon <will@kernel.org> # arm-smmu
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/arm-smmu.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 3cef2bfd6f3e..a6a5796e9c41 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1059,7 +1059,7 @@ static bool arm_smmu_free_sme(struct arm_smmu_device *smmu, int idx)
 static int arm_smmu_master_alloc_smes(struct device *dev)
 {
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
-	struct arm_smmu_master_cfg *cfg = fwspec->iommu_priv;
+	struct arm_smmu_master_cfg *cfg = dev_iommu_priv_get(dev);
 	struct arm_smmu_device *smmu = cfg->smmu;
 	struct arm_smmu_smr *smrs = smmu->smrs;
 	struct iommu_group *group;
@@ -1159,11 +1159,11 @@ static int arm_smmu_domain_add_master(struct arm_smmu_domain *smmu_domain,
 
 static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 {
-	int ret;
-	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct arm_smmu_master_cfg *cfg;
 	struct arm_smmu_device *smmu;
+	int ret;
 
 	if (!fwspec || fwspec->ops != &arm_smmu_ops) {
 		dev_err(dev, "cannot attach to SMMU, is it on the same bus?\n");
@@ -1177,7 +1177,7 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 	 * domains, just say no (but more politely than by dereferencing NULL).
 	 * This should be at least a WARN_ON once that's sorted.
 	 */
-	cfg = fwspec->iommu_priv;
+	cfg = dev_iommu_priv_get(dev);
 	if (!cfg)
 		return -ENODEV;
 
@@ -1430,7 +1430,7 @@ static int arm_smmu_add_device(struct device *dev)
 		goto out_free;
 
 	cfg->smmu = smmu;
-	fwspec->iommu_priv = cfg;
+	dev_iommu_priv_set(dev, cfg);
 	while (i--)
 		cfg->smendx[i] = INVALID_SMENDX;
 
@@ -1468,7 +1468,7 @@ static void arm_smmu_remove_device(struct device *dev)
 	if (!fwspec || fwspec->ops != &arm_smmu_ops)
 		return;
 
-	cfg  = fwspec->iommu_priv;
+	cfg  = dev_iommu_priv_get(dev);
 	smmu = cfg->smmu;
 
 	ret = arm_smmu_rpm_get(smmu);
@@ -1480,15 +1480,16 @@ static void arm_smmu_remove_device(struct device *dev)
 
 	arm_smmu_rpm_put(smmu);
 
+	dev_iommu_priv_set(dev, NULL);
 	iommu_group_remove_device(dev);
-	kfree(fwspec->iommu_priv);
+	kfree(cfg);
 	iommu_fwspec_free(dev);
 }
 
 static struct iommu_group *arm_smmu_device_group(struct device *dev)
 {
+	struct arm_smmu_master_cfg *cfg = dev_iommu_priv_get(dev);
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
-	struct arm_smmu_master_cfg *cfg = fwspec->iommu_priv;
 	struct arm_smmu_device *smmu = cfg->smmu;
 	struct iommu_group *group = NULL;
 	int i, idx;
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
