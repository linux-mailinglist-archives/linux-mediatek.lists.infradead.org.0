Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A68FA30BC
	for <lists+linux-mediatek@lfdr.de>; Fri, 30 Aug 2019 09:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQXhVeoc68t9ZxyDjzTT4m0KyVZOW+uwVPYBTUpEcLE=; b=stbXcr4KSf5xSE
	mHzkuyUqnB+zB3K2Cakc9cW7cE3g0+OtcS33I9Fej0QJwyqRZuk8AFpTiNgNFcwqd7wcGQ3ZhXRCP
	Q6XTtanlwAas9D07F41Fld31Q56yZQ97bwbD6yaTyg/gPom9uXwWTx1XETfas/xUQGNcP+dr7Q2Mq
	ZPK2Q4AwRNhZvY6Dc0+jAUkRVin6DQoRSRg5Y4VoaC6G389baocx/Lb8RvvSU81JHTfnn85XYiNHg
	73V9zsx96gwcu3tmNgZwirGruFejejleSHStfxzQbtLRAS3NACWhC25onhhs7KFRKgXYPQP1q2tsz
	y5e0UQxLc/Z1f40Ql79g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bBO-00008Y-7T; Fri, 30 Aug 2019 07:18:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3b7r-00064N-DQ; Fri, 30 Aug 2019 07:15:17 +0000
X-UUID: e6b8a5665c894e2985f7d06d69e771c1-20190829
X-UUID: e6b8a5665c894e2985f7d06d69e771c1-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2130264529; Thu, 29 Aug 2019 23:15:19 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 00:15:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 15:15:15 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 15:15:15 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 10/11] phy: phy-mtk-tphy: add a new reference clock
Date: Fri, 30 Aug 2019 15:14:57 +0800
Message-ID: <1567149298-29366-10-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567149298-29366-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1567149298-29366-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 242613153968781C4D4E785DDF5CB39683DC007A7382130B43A5B29FD2768E552000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_001515_470265_61F4B986 
X-CRM114-Status: GOOD (  14.34  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Usually the digital and analog phys use the same reference clock,
but some platforms have two separate reference clocks for each of
them, so add another optional clock to support them.
In order to keep the clock names consistent with PHY IP's, change
the da_ref for analog phy and ref clock for digital phy.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2: fix typo of analog
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index c6424fd2a06d..cdbcc49f7115 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -298,7 +298,8 @@ struct mtk_phy_instance {
 		struct u2phy_banks u2_banks;
 		struct u3phy_banks u3_banks;
 	};
-	struct clk *ref_clk;	/* reference clock of anolog phy */
+	struct clk *ref_clk;	/* reference clock of (digital) phy */
+	struct clk *da_ref_clk;	/* reference clock of analog phy */
 	u32 index;
 	u8 type;
 	int eye_src;
@@ -925,6 +926,13 @@ static int mtk_phy_init(struct phy *phy)
 		return ret;
 	}
 
+	ret = clk_prepare_enable(instance->da_ref_clk);
+	if (ret) {
+		dev_err(tphy->dev, "failed to enable da_ref\n");
+		clk_disable_unprepare(instance->ref_clk);
+		return ret;
+	}
+
 	switch (instance->type) {
 	case PHY_TYPE_USB2:
 		u2_phy_instance_init(tphy, instance);
@@ -984,6 +992,7 @@ static int mtk_phy_exit(struct phy *phy)
 		u2_phy_instance_exit(tphy, instance);
 
 	clk_disable_unprepare(instance->ref_clk);
+	clk_disable_unprepare(instance->da_ref_clk);
 	return 0;
 }
 
@@ -1170,6 +1179,14 @@ static int mtk_tphy_probe(struct platform_device *pdev)
 			retval = PTR_ERR(instance->ref_clk);
 			goto put_child;
 		}
+
+		instance->da_ref_clk =
+			devm_clk_get_optional(&phy->dev, "da_ref");
+		if (IS_ERR(instance->da_ref_clk)) {
+			dev_err(dev, "failed to get da_ref_clk(id-%d)\n", port);
+			retval = PTR_ERR(instance->da_ref_clk);
+			goto put_child;
+		}
 	}
 
 	provider = devm_of_phy_provider_register(dev, mtk_phy_xlate);
-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
