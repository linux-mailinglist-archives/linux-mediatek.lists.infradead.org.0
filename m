Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76553173AE5
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Feb 2020 16:09:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MjABLghBE2L3C6NIMzsE1X1cbVWV4BPw3HBSdy88GjU=; b=KR5rW/u/R3/yem5hl5dJC1qhhf
	JJtZi0jd+wXM6j8Rg/yUYFCB2aLViWqYcv+lb6jvXiAYqHoSj24JzlgO9XjDqv7ba+BqklbC8NFDY
	lNIjvGJg5QRfdBJy8XWxK14EtlnocXN14EJOyKA3vTDhY1Qne7/4BECQLCG+MusjZzukoHeTDRXVp
	f1pEmcn15iRvWNa7Ltz4GnzBI8qeF6Yh9yQOpWCoi7kVwICt05im6TlQonxNfRb3guwsk2aDBLJsS
	IwR3s1zlTRJiq6XqeIO3kvopRoa3c9iq5kwqdJ6BVQLZ1ylUJoJWl0eMgIwEqsAgr67yOKDKAkGfL
	mfrglvtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hGM-0006ul-Mh; Fri, 28 Feb 2020 15:09:14 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hFy-0006Mo-OJ
 for linux-mediatek@lists.infradead.org; Fri, 28 Feb 2020 15:08:54 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id E15CA66B; Fri, 28 Feb 2020 16:08:30 +0100 (CET)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 13/14] iommu/virtio: Use accessor functions for iommu private
 data
Date: Fri, 28 Feb 2020 16:08:19 +0100
Message-Id: <20200228150820.15340-14-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228150820.15340-1-joro@8bytes.org>
References: <20200228150820.15340-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_070850_946553_A1A602BF 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Make use of dev_iommu_priv_set/get() functions.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/virtio-iommu.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index cce329d71fba..8ead57f031f5 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -466,7 +466,7 @@ static int viommu_probe_endpoint(struct viommu_dev *viommu, struct device *dev)
 	struct virtio_iommu_req_probe *probe;
 	struct virtio_iommu_probe_property *prop;
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
-	struct viommu_endpoint *vdev = fwspec->iommu_priv;
+	struct viommu_endpoint *vdev = dev_iommu_priv_get(dev);
 
 	if (!fwspec->num_ids)
 		return -EINVAL;
@@ -648,7 +648,7 @@ static int viommu_attach_dev(struct iommu_domain *domain, struct device *dev)
 	int ret = 0;
 	struct virtio_iommu_req_attach req;
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
-	struct viommu_endpoint *vdev = fwspec->iommu_priv;
+	struct viommu_endpoint *vdev = dev_iommu_priv_get(dev);
 	struct viommu_domain *vdomain = to_viommu_domain(domain);
 
 	mutex_lock(&vdomain->mutex);
@@ -807,8 +807,7 @@ static void viommu_iotlb_sync(struct iommu_domain *domain,
 static void viommu_get_resv_regions(struct device *dev, struct list_head *head)
 {
 	struct iommu_resv_region *entry, *new_entry, *msi = NULL;
-	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
-	struct viommu_endpoint *vdev = fwspec->iommu_priv;
+	struct viommu_endpoint *vdev = dev_iommu_priv_get(dev);
 	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
 
 	list_for_each_entry(entry, &vdev->resv_regions, list) {
@@ -876,7 +875,7 @@ static int viommu_add_device(struct device *dev)
 	vdev->dev = dev;
 	vdev->viommu = viommu;
 	INIT_LIST_HEAD(&vdev->resv_regions);
-	fwspec->iommu_priv = vdev;
+	dev_iommu_priv_set(dev, vdev);
 
 	if (viommu->probe_size) {
 		/* Get additional information for this endpoint */
@@ -920,7 +919,7 @@ static void viommu_remove_device(struct device *dev)
 	if (!fwspec || fwspec->ops != &viommu_ops)
 		return;
 
-	vdev = fwspec->iommu_priv;
+	vdev = dev_iommu_priv_get(dev);
 
 	iommu_group_remove_device(dev);
 	iommu_device_unlink(&vdev->viommu->iommu, dev);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
