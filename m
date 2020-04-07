Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1141A144D
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Apr 2020 20:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U+NFfnySKFQw103bxGqEHQbD76DN3y1g7Y9t7aJeHjk=; b=K7N8JXEitHYRkrkn7vbm2q7jwm
	WWccIy982ycr4Kzb/oUTDm7TQbWXuctpLu3pGwZAN5DMzF8oKqyV1xDlq3JkyL+EEstxBBf1zap16
	OweO0pk7XMDHw9qLomljYs+E0F6ln867nVrNPX2/myNZhEZb3Zv+fIYJHGAmyFRunpprpdLDPumv7
	UfYtr6fOe0ZQzxZd7jDe5fSStkyvbedg91teb3fzGbrZnoyTdM5cLt1ktb1YpipmTayjsx1UvylQn
	YC33YtNVfHiQPuaHXLOaqw7wa8Jm/OFoQtln1e4rg07EEoWr6mImhVg4jAV7hC/Dgdvlp/KyUuEyo
	ef4JfBLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt7j-0007jZ-UK; Tue, 07 Apr 2020 18:38:59 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt6q-0006j5-Fi; Tue, 07 Apr 2020 18:38:08 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id E3062312; Tue,  7 Apr 2020 20:37:49 +0200 (CEST)
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
Subject: [RFC PATCH 09/34] iommu: Keep a list of allocated groups in
 __iommu_probe_device()
Date: Tue,  7 Apr 2020 20:37:17 +0200
Message-Id: <20200407183742.4344-10-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407183742.4344-1-joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113804_695235_8A2C98C6 
X-CRM114-Status: GOOD (  12.41  )
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
