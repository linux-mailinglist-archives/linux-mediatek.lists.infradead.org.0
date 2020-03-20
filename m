Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30BC18C9DE
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Mar 2020 10:15:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Wf4dpnk8R7ndeY9p2CozGIkG4HTyfkFI7nEBANurGRI=; b=LMY0PRFrZ4J7kDp4m0Sc/Q2fPa
	lxr0dNryaoHwBnQQN5ucbRfSOO+wWNfnQOOv1vhVJb43LvqUOctkKIJbzfyAKMoG7XGzyockpCi8W
	Fr2QiEX79MdlW7YIK0QX0upwL1cjBWc0nUQxtRdiYgCEcfxxx5hqOSO2sTicga+0obwCaxF7Ki6fW
	NuX06aS9qYC2f1fgOIJyIn66UG3329JFQoya8NlGJlUxLUPlgPxj6DeMoiIpEancXQr2TbBMNc/wL
	FYPKUYj2BkzqvjCdDyEjr1XQEayQ71hFgGVpJBRRDjFDDsk1/dFg+SyP0mj+qtnvJ9IhxqyT/3tzR
	FZb7hnMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDk0-0000jy-OV; Fri, 20 Mar 2020 09:14:56 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDjd-0000Bc-Oy
 for linux-mediatek@lists.infradead.org; Fri, 20 Mar 2020 09:14:38 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 8CC33385; Fri, 20 Mar 2020 10:14:20 +0100 (CET)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v3 07/15] iommu/arm-smmu: Fix uninitilized variable warning
Date: Fri, 20 Mar 2020 10:14:06 +0100
Message-Id: <20200320091414.3941-8-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200320091414.3941-1-joro@8bytes.org>
References: <20200320091414.3941-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_021434_061483_73F505CD 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 guohanjun@huawei.com, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Some unrelated changes in the iommu code caused a new warning to
appear in the arm-smmu driver:

  CC      drivers/iommu/arm-smmu.o
drivers/iommu/arm-smmu.c: In function 'arm_smmu_add_device':
drivers/iommu/arm-smmu.c:1441:2: warning: 'smmu' may be used uninitialized in this function [-Wmaybe-uninitialized]
  arm_smmu_rpm_put(smmu);
  ^~~~~~~~~~~~~~~~~~~~~~

The warning is a false positive, but initialize the variable to NULL
to get rid of it.

Tested-by: Will Deacon <will@kernel.org> # arm-smmu
Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/arm-smmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 16c4b87af42b..980aae73b45b 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1383,7 +1383,7 @@ struct arm_smmu_device *arm_smmu_get_by_fwnode(struct fwnode_handle *fwnode)
 
 static int arm_smmu_add_device(struct device *dev)
 {
-	struct arm_smmu_device *smmu;
+	struct arm_smmu_device *smmu = NULL;
 	struct arm_smmu_master_cfg *cfg;
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	int i, ret;
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
