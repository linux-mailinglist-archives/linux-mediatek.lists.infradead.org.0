Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95202194281
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Mar 2020 16:09:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0GFgWLLgv8Mp5Qx3HaZ5JLG0LAh8pDym2idSOMRxf9A=; b=bFav5GpRx1F+adVCjcWgqwCJqT
	b9XkGT2WdPKe95nAF2lekGNWPJda73UNlvhzvJG7sE1Tg65iiK/CnSZjfzk5upz5QdIHeBLioT1Dc
	1A6Gw1AKvxKEfR4qCmKWH56W7QyxMfW0ewlKWYpGhZ2uP75ibfUYgD/D/6S7LH40pFs0Z53TjZJkN
	xoUba6db6o3XbJ+To2zmEv08zIxjzXJj+V/mIxmIS+p6xw91mKP7yCt//blxuRUEiss6S8ATK5uBE
	E7kCIvHQuvsKf8StVcfusKoYGvbKf5iTJ+qPgAQmwFNJ7X9CEEedvIgD+FqydE1jDVILgxZY1G5fz
	nshflODA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHU81-0004EW-Nj; Thu, 26 Mar 2020 15:09:05 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHU7m-0003zk-7L
 for linux-mediatek@lists.infradead.org; Thu, 26 Mar 2020 15:08:52 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 17BCA4F0; Thu, 26 Mar 2020 16:08:45 +0100 (CET)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v4 03/16] drm/msm/mdp5: Remove direct access of
 dev->iommu_fwspec
Date: Thu, 26 Mar 2020 16:08:28 +0100
Message-Id: <20200326150841.10083-4-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326150841.10083-1-joro@8bytes.org>
References: <20200326150841.10083-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_080850_409079_736F76A8 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
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

Use the accessor functions instead of directly dereferencing
dev->iommu_fwspec.

Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c
index e43ecd4be10a..1252e1d76340 100644
--- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c
+++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c
@@ -725,7 +725,7 @@ struct msm_kms *mdp5_kms_init(struct drm_device *dev)
 
 	if (config->platform.iommu) {
 		iommu_dev = &pdev->dev;
-		if (!iommu_dev->iommu_fwspec)
+		if (!dev_iommu_fwspec_get(iommu_dev))
 			iommu_dev = iommu_dev->parent;
 
 		aspace = msm_gem_address_space_create(iommu_dev,
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
