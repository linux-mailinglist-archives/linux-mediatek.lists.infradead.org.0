Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65DE3B55C
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Jun 2019 14:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=isPWyvNLm/To/8KsAxUoyMXgp5WYyMAcOL3lsd2EvNI=; b=OsBLa4m8p+BcPh
	ex6Zeev1xTT54EEzn2JxoO9d1hb6X6A2iHt1OQUwmd8ruFN7Jck6pLOK9XP7KGLcU/uzkGUXYPH1q
	2wI+4yBfIJsad99g+ZC8fmj3+bwEYll5Dc8rWZsHUyWj6IfLdz+Wo56fruTH+7SHuJd7CgDlw4SJs
	vZWV9zCAEjljCWlCn6zgNZFw3NcISIvKtBZ7s8WVi9gfxe03XNbbPON249K2rhp1Kx4Y0XdGNoP97
	o+wWjk2Pd95nwjGxjaKeCc+1qfYRDsUIiAArhEGiJrwKZrtyjL9nTMvQf3C5UYMzDSak0ZTWQoMGq
	G3MtcIJqhcQr7UJLC4lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJqg-0003Kg-6A; Mon, 10 Jun 2019 12:56:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJqc-0003JW-M5; Mon, 10 Jun 2019 12:56:27 +0000
X-UUID: 091f18c3a6314e30a3418f976ef2d80e-20190610
X-UUID: 091f18c3a6314e30a3418f976ef2d80e-20190610
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 74112293; Mon, 10 Jun 2019 04:55:57 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 05:55:55 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:55:54 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 20:55:53 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 02/12] iommu/mediatek: Add probe_defer for smi-larb
Date: Mon, 10 Jun 2019 20:55:03 +0800
Message-ID: <1560171313-28299-3-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
References: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055626_726263_CC1C030E 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The iommu consumer should use device_link to connect with the
smi-larb(supplier). then the smi-larb should run before the iommu
consumer. Here we delay the iommu driver until the smi driver is
ready, then all the iommu consumer always is after the smi driver.

When there is no this patch, if some consumer drivers run before
smi-larb, the supplier link_status is DL_DEV_NO_DRIVER(0) in the
device_link_add, then device_links_driver_bound will use WARN_ON
to complain that the link_status of supplier is not right.

This is a preparing patch for adding device_link.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/iommu/mtk_iommu.c    | 2 +-
 drivers/iommu/mtk_iommu_v1.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 6fe3369..f7599d8 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -664,7 +664,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 			id = i;
 
 		plarbdev = of_find_device_by_node(larbnode);
-		if (!plarbdev) {
+		if (!plarbdev || !plarbdev->dev.driver) {
 			of_node_put(larbnode);
 			return -EPROBE_DEFER;
 		}
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index 0b0908c..c43c4a0 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -604,7 +604,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 			plarbdev = of_platform_device_create(
 						larb_spec.np, NULL,
 						platform_bus_type.dev_root);
-			if (!plarbdev) {
+			if (!plarbdev || !plarbdev->dev.driver) {
 				of_node_put(larb_spec.np);
 				return -EPROBE_DEFER;
 			}
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
