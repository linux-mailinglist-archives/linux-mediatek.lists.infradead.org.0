Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A68194289
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Mar 2020 16:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7gTrMP647+oGOdKTKm24cCxeMkBQnmN0IuWmOZ8xSmk=; b=fvNcNsFzEbzLANalU2moZW5/zv
	Oy/3v/xzOI3L5byeykuHsiQ7XBtTr8vQ6ns7bQVSVb2idyZIUU/xB0Roz2MUNHDV8dU+m68j9QCcZ
	k5rHsvoZcT3nuOaUnfzEfm43YgpD7FUMGDD5uxFNXq4BxGF7CF7iMKTjvah4eAc2R3P47FqUYrBGu
	gNSsAuCIo7RZikhtwbLKt8rUErVL54S9WYTo2l+fIAj3cr0Y9JnTZo0mAD5jmfYRiIAANTHNhylua
	RcqR29l6oquR4siHqS5i0gvZieaXwjf0afU/Cz06lozY6CCbGIS4MNAZHuUknLAG97YtbKXFh8B6e
	lHgk5IgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHU8D-0004XB-88; Thu, 26 Mar 2020 15:09:17 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHU7p-00041P-Mz
 for linux-mediatek@lists.infradead.org; Thu, 26 Mar 2020 15:08:57 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id E6979736; Thu, 26 Mar 2020 16:08:46 +0100 (CET)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v4 06/16] iommu: Move iommu_fwspec to struct dev_iommu
Date: Thu, 26 Mar 2020 16:08:31 +0100
Message-Id: <20200326150841.10083-7-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326150841.10083-1-joro@8bytes.org>
References: <20200326150841.10083-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_080854_083836_7808897F 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Move the iommu_fwspec pointer in struct device into struct dev_iommu.
This is a step in the effort to reduce the iommu related pointers in
struct device to one.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Tested-by: Will Deacon <will@kernel.org> # arm-smmu
Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c  |  3 +++
 include/linux/device.h |  3 ---
 include/linux/iommu.h  | 12 ++++++++----
 3 files changed, 11 insertions(+), 7 deletions(-)

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
index 405a8f11bec1..fc1427ab7e85 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -42,7 +42,6 @@ struct device_node;
 struct fwnode_handle;
 struct iommu_ops;
 struct iommu_group;
-struct iommu_fwspec;
 struct dev_pin_info;
 struct dev_iommu;
 
@@ -513,7 +512,6 @@ struct dev_links_info {
  * 		gone away. This should be set by the allocator of the
  * 		device (i.e. the bus driver that discovered the device).
  * @iommu_group: IOMMU group the device belongs to.
- * @iommu_fwspec: IOMMU-specific properties supplied by firmware.
  * @iommu:	Per device generic IOMMU runtime data
  *
  * @offline_disabled: If set, the device is permanently online.
@@ -613,7 +611,6 @@ struct device {
 
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
