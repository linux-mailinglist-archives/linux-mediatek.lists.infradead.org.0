Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC0E1A7DC1
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 15:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U+NFfnySKFQw103bxGqEHQbD76DN3y1g7Y9t7aJeHjk=; b=i+Y/QIt28OM+uKEDH36UKCrrlI
	B8MomxisV/fYNzh0QrTCaUuD2QOWTGR02uaAcczNryhliJsmo8Xxc+YHiipF98y+Usscuo2vfHFSB
	gOKik/Oh4Lb3hvqrlwyjBCeIhupiN2cuIXx3FQ0RsaaQiY/WElqfjL84NPfT9OgFI53ddqJytjEOZ
	7QXEijIruCCPyg+ZwZACIsHsx69k37wLnlW8sHx74i1n8ib1PxlhAFTWG4x6kwwQuAfSmfB70D+MB
	ul9FPD+8KuuvGq5S4R7tg98jNtfrvYm8V4foGkDdct8nvwOWoC/t/YhbZ7QEyrBYcX6D7VYA6K8y0
	1/3EieUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLXi-0004Le-4y; Tue, 14 Apr 2020 13:23:58 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLQ5-0002QH-8j; Tue, 14 Apr 2020 13:16:12 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 1B5634DB; Tue, 14 Apr 2020 15:15:53 +0200 (CEST)
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
Subject: [PATCH v2 09/33] iommu: Keep a list of allocated groups in
 __iommu_probe_device()
Date: Tue, 14 Apr 2020 15:15:18 +0200
Message-Id: <20200414131542.25608-10-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414131542.25608-1-joro@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_061605_474082_E7C5E475 
X-CRM114-Status: GOOD (  12.39  )
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

This is needed to defer default_domain allocation for new IOMMU groups
until all devices have been added to the group.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 7a385c18e1a5..18eb3623bd00 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -44,6 +44,7 @@ struct iommu_group {
 	int id;
 	struct iommu_domain *default_domain;
 	struct iommu_domain *domain;
+	struct list_head entry;
 };
 
 struct group_device {
@@ -184,7 +185,7 @@ static void dev_iommu_free(struct device *dev)
 	dev->iommu = NULL;
 }
 
-static int __iommu_probe_device(struct device *dev)
+static int __iommu_probe_device(struct device *dev, struct list_head *group_list)
 {
 	const struct iommu_ops *ops = dev->bus->iommu_ops;
 	struct iommu_device *iommu_dev;
@@ -204,6 +205,9 @@ static int __iommu_probe_device(struct device *dev)
 	}
 	iommu_group_put(group);
 
+	if (group_list && !group->default_domain && list_empty(&group->entry))
+		list_add_tail(&group->entry, group_list);
+
 	iommu_device_link(iommu_dev, dev);
 
 	return 0;
@@ -234,7 +238,7 @@ int iommu_probe_device(struct device *dev)
 	if (ops->probe_device) {
 		struct iommu_group *group;
 
-		ret = __iommu_probe_device(dev);
+		ret = __iommu_probe_device(dev, NULL);
 
 		/*
 		 * Try to allocate a default domain - needs support from the
@@ -567,6 +571,7 @@ struct iommu_group *iommu_group_alloc(void)
 	group->kobj.kset = iommu_group_kset;
 	mutex_init(&group->mutex);
 	INIT_LIST_HEAD(&group->devices);
+	INIT_LIST_HEAD(&group->entry);
 	BLOCKING_INIT_NOTIFIER_HEAD(&group->notifier);
 
 	ret = ida_simple_get(&iommu_group_ida, 0, 0, GFP_KERNEL);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
