Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78ED17F2FF
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Mar 2020 10:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w+njyRqFQjSOwsvlMpGfNivBO5WxChJ1BUklwvLukVs=; b=OwUh8bg2hl3/ifv+w+nHv1MeUr
	QWk95ZXtBbD+d92yuQP/6Fa6c6qokQ2fTe++x/kyw5LDuBKBLxFapVuwjoqSg31SECua8MY7/4LN3
	+Qw8lDBqppqyVaDOSuw4AKSXK67GVL5rFDZoKW5VCS95wdrgFyfCDRXACFZNCd9KLdXop7SCsCeLS
	ChU4KGipazJ6if2gr2jhj6lr/7AiQgQ/QC36lQjsgOATDooN6yXIpacAAh8MDnZIfbkbULhIYewDn
	G8LXi0W9cF5TOQTawFIlxkHRKPf5sExBpn+vmhA2R0L+tUl5ywBsd3uGksCl7lGHx0wcB+AI73YVM
	2fPB15Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBawa-0006Rw-WC; Tue, 10 Mar 2020 09:12:57 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBawQ-0006Hq-Sk
 for linux-mediatek@lists.infradead.org; Tue, 10 Mar 2020 09:12:48 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id CD11C768; Tue, 10 Mar 2020 10:12:32 +0100 (CET)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 06/15] iommu: Move iommu_fwspec to struct dev_iommu
Date: Tue, 10 Mar 2020 10:12:20 +0100
Message-Id: <20200310091229.29830-7-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310091229.29830-1-joro@8bytes.org>
References: <20200310091229.29830-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_021247_084784_265C0AF3 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, Rob Clark <robdclark@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 Hanjun Guo <guohanjun@huawei.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Sean Paul <sean@poorly.run>,
 Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Move the iommu_fwspec pointer in struct device into struct dev_iommu.
This is a step in the effort to reduce the iommu related pointers in
struct device to one.

Tested-by: Will Deacon <will@kernel.org> # arm-smmu
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c  |  3 +++
 include/linux/device.h |  1 -
 include/linux/iommu.h  | 12 ++++++++----
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index beac2ef063dd..826a67ba247f 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -2405,6 +2405,9 @@ int iommu_fwspec_init(struct device *dev, struct fwnode_handle *iommu_fwnode,
 	if (fwspec)
 		return ops == fwspec->ops ? 0 : -EINVAL;
 
+	if (!dev_iommu_get(dev))
+		return -ENOMEM;
+
 	fwspec = kzalloc(sizeof(*fwspec), GFP_KERNEL);
 	if (!fwspec)
 		return -ENOMEM;
diff --git a/include/linux/device.h b/include/linux/device.h
index 405a8f11bec1..ca29c39a6480 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -613,7 +613,6 @@ struct device {
 
 	void	(*release)(struct device *dev);
 	struct iommu_group	*iommu_group;
-	struct iommu_fwspec	*iommu_fwspec;
 	struct dev_iommu	*iommu;
 
 	bool			offline_disabled:1;
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 1c9fa5c1174b..f5edc21a644d 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -368,14 +368,15 @@ struct iommu_fault_param {
  * struct dev_iommu - Collection of per-device IOMMU data
  *
  * @fault_param: IOMMU detected device fault reporting data
+ * @fwspec:	 IOMMU fwspec data
  *
  * TODO: migrate other per device data pointers under iommu_dev_data, e.g.
  *	struct iommu_group	*iommu_group;
- *	struct iommu_fwspec	*iommu_fwspec;
  */
 struct dev_iommu {
 	struct mutex lock;
-	struct iommu_fault_param *fault_param;
+	struct iommu_fault_param	*fault_param;
+	struct iommu_fwspec		*fwspec;
 };
 
 int  iommu_device_register(struct iommu_device *iommu);
@@ -614,13 +615,16 @@ const struct iommu_ops *iommu_ops_from_fwnode(struct fwnode_handle *fwnode);
 
 static inline struct iommu_fwspec *dev_iommu_fwspec_get(struct device *dev)
 {
-	return dev->iommu_fwspec;
+	if (dev->iommu)
+		return dev->iommu->fwspec;
+	else
+		return NULL;
 }
 
 static inline void dev_iommu_fwspec_set(struct device *dev,
 					struct iommu_fwspec *fwspec)
 {
-	dev->iommu_fwspec = fwspec;
+	dev->iommu->fwspec = fwspec;
 }
 
 int iommu_probe_device(struct device *dev);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
