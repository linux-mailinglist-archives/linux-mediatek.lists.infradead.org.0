Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C75D0891
	for <lists+linux-mediatek@lfdr.de>; Wed,  9 Oct 2019 09:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFNHZW5tv74x+H6y+95YsLKuDs46UNWJYLW7SdxLnSg=; b=mdI0A4umBMdH7K
	sSc+5LhuLxc5wALZFG3OtmQBEpPvFJV6PtTEEAaoPcJRRmhJIPQJvaIbUJQxKk78k+NV1Yc/5wtb3
	wWk9mM3BQNtz+i0kMYzbJDaZB3F2o9u7UL9L/IozrWRrZEJ8412ANk25kiA6IJJpbQubICWgl4h08
	Xr+CNfdBeC15KjbqnEuQJHj8u0mC0SoWV3luWXGrNLe2U6GeB3VGuEZdNUSFJGA4EoFS0HRGXrUZC
	hLtl+UcEvlu8TaHJZt6gEAXqSm873hkgoChjBLmnXNfbBZ3Qbrnb+M5sXVacC8EidLUANCby8Qui3
	jeCx3VxHVizcA977lxoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6bX-0000UJ-U2; Wed, 09 Oct 2019 07:41:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6b5-0008Bi-79; Wed, 09 Oct 2019 07:41:24 +0000
X-UUID: b01157988c904916b8a70fc6cdb13879-20191008
X-UUID: b01157988c904916b8a70fc6cdb13879-20191008
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 864293034; Tue, 08 Oct 2019 23:41:51 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 00:41:16 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 15:41:13 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 15:41:12 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [RESEND PATCH v3 07/11] phy: phy-mtk-tphy: add a property for
 internal resistance
Date: Wed, 9 Oct 2019 15:40:30 +0800
Message-ID: <1570606834-5644-7-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1570606834-5644-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1570606834-5644-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D6193D412A76A036B9AA2F1A8EC1E37A62667789B8F9CB6CC8C6E466BB1A36CF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_004123_298327_1DE511D7 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

This is used to tune J-K voltage by internal R (resistance)

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v3: change commit log

v2: no changes
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index 5afe33621dbc..4a2dc92f10f5 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -43,6 +43,8 @@
 #define PA0_RG_USB20_INTR_EN		BIT(5)
 
 #define U3P_USBPHYACR1		0x004
+#define PA1_RG_INTR_CAL		GENMASK(23, 19)
+#define PA1_RG_INTR_CAL_VAL(x)	((0x1f & (x)) << 19)
 #define PA1_RG_VRT_SEL			GENMASK(14, 12)
 #define PA1_RG_VRT_SEL_VAL(x)	((0x7 & (x)) << 12)
 #define PA1_RG_TERM_SEL		GENMASK(10, 8)
@@ -302,6 +304,7 @@ struct mtk_phy_instance {
 	int eye_src;
 	int eye_vrt;
 	int eye_term;
+	int intr;
 	int discth;
 	bool bc12_en;
 };
@@ -853,12 +856,14 @@ static void phy_parse_property(struct mtk_tphy *tphy,
 				 &instance->eye_vrt);
 	device_property_read_u32(dev, "mediatek,eye-term",
 				 &instance->eye_term);
+	device_property_read_u32(dev, "mediatek,intr",
+				 &instance->intr);
 	device_property_read_u32(dev, "mediatek,discth",
 				 &instance->discth);
-	dev_dbg(dev, "bc12:%d, src:%d, vrt:%d, term:%d, disc:%d\n",
+	dev_dbg(dev, "bc12:%d, src:%d, vrt:%d, term:%d, intr:%d, disc:%d\n",
 		instance->bc12_en, instance->eye_src,
 		instance->eye_vrt, instance->eye_term,
-		instance->discth);
+		instance->intr, instance->discth);
 }
 
 static void u2_phy_props_set(struct mtk_tphy *tphy,
@@ -895,6 +900,13 @@ static void u2_phy_props_set(struct mtk_tphy *tphy,
 		writel(tmp, com + U3P_USBPHYACR1);
 	}
 
+	if (instance->intr) {
+		tmp = readl(com + U3P_USBPHYACR1);
+		tmp &= ~PA1_RG_INTR_CAL;
+		tmp |= PA1_RG_INTR_CAL_VAL(instance->intr);
+		writel(tmp, com + U3P_USBPHYACR1);
+	}
+
 	if (instance->discth) {
 		tmp = readl(com + U3P_USBPHYACR6);
 		tmp &= ~PA6_RG_U2_DISCTH;
-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
