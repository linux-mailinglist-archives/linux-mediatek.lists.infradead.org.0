Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DB7B73A2
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Sep 2019 08:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Y4fuFAZoBkKR4aRC0uYQO7tP4ck4r54oFaDZx1TbXM=; b=BEhHmgn2JWWRN+
	AeslHwpsQdmYYKdwD1nn2zFoaBBrMjjWJAnB+s9kmnv/fJWZfQY1olLLuaV8tFHEBeR0pyg+4f4Qu
	jYUD2qrmCYAPhT2t4qipl4ZjqPx3RbWgu5PIP0x8MjjUj5S1ToBNMBMqgKro0i1H+i9Sf8SGUIKPL
	UUSV0NbnD7claH4nopvkQZjTibJsBMZ4J7mLORwxKK+soxFtT4d3fhLQF1jMAyQBm1lGE9DMUFS4u
	NyhHRrc4pCivDU2MCCNLgFoPGOyN1tyvDZRlJpOoQlCBmlO7q7YhO6KpU58owCe28xirobCYK8+nZ
	BUYBSNjLN3n8EES14bmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAqP8-0004x7-4U; Thu, 19 Sep 2019 06:59:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAqP4-0004wc-ST
 for linux-mediatek@lists.infradead.org; Thu, 19 Sep 2019 06:59:00 +0000
X-UUID: 91edb777191f4eb4bbe656d6e3123b54-20190918
X-UUID: 91edb777191f4eb4bbe656d6e3123b54-20190918
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1243569140; Wed, 18 Sep 2019 22:58:55 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 23:58:53 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 19 Sep 2019 14:58:48 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Thu, 19 Sep 2019 14:58:47 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH v7 4/9] drm/mediatek: add dsi reg commit disable control
Date: Thu, 19 Sep 2019 14:58:01 +0800
Message-ID: <20190919065806.111016-5-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919065806.111016-1-jitao.shi@mediatek.com>
References: <20190919065806.111016-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 385516D509B585D40308C5E4779C403A26E56BB96F717A801520CF961F1B2F8A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_235858_918890_B25F2742 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, bibby.hsieh@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

New DSI IP has shadow register and working reg. The register
values are writen to shadow register. And then trigger with
commit reg, the register values will be moved working register.

This fucntion is defualt on. But this driver doesn't use this
function. So add the disable control.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index ac8e80e379f7..314bfb1c827b 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -123,6 +123,10 @@
 #define VM_CMD_EN			BIT(0)
 #define TS_VFP_EN			BIT(5)
 
+#define DSI_SHADOW_DEBUG	0x190U
+#define FORCE_COMMIT			BIT(0)
+#define BYPASS_SHADOW			BIT(1)
+
 #define CONFIG				(0xff << 0)
 #define SHORT_PACKET			0
 #define LONG_PACKET			2
@@ -149,6 +153,7 @@ struct phy;
 
 struct mtk_dsi_driver_data {
 	const u32 reg_cmdq_off;
+	bool has_shadow_ctl;
 };
 
 struct mtk_dsi {
@@ -586,6 +591,11 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 	}
 
 	mtk_dsi_enable(dsi);
+
+	if (dsi->driver_data->has_shadow_ctl)
+		writel(FORCE_COMMIT | BYPASS_SHADOW,
+		       dsi->regs + DSI_SHADOW_DEBUG);
+
 	mtk_dsi_reset_engine(dsi);
 	mtk_dsi_phy_timconfig(dsi);
 
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
