Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2D031AE6
	for <lists+linux-mediatek@lfdr.de>; Sat,  1 Jun 2019 11:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyv433VAo9pIhi45AHVxdxt2lLt/hX+MXa7zYuyfZkQ=; b=MuABSDXk+hjQSG
	eGzhioloXL93fbWT+xUxPX2r+fkTz56PkuRrnwk3t54jYMasIKu4UKl92Br6qlYGhOA7R+gW5R2JB
	fiGetP3yta3BzwOKoi+E18aVW2546Fr/2yS0+NHXIysvRV7qwdVAJOeTNGMmDIXy2fV063SyAyamU
	+4/x1Jdszl/JAD5Bw9R80zsNaCO1GteFSv9xsEHcEwG/lwMG0gtM50Nd+lsxhdFQcuu7/hQFJfi5b
	Q/0KwrPnejEHE17yCnmbDYe4qDwG9a50L9IB/0831qVnWCNjpJFwZ6qHeTxYGdOwxrvvLUIRMNyfj
	izSoQI/EqCiy18SjViNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX0Hr-0003Vi-QX; Sat, 01 Jun 2019 09:26:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX0HX-00033T-Ux; Sat, 01 Jun 2019 09:26:33 +0000
X-UUID: 706b4d4da2654a7eb2081479f0dc55cf-20190601
X-UUID: 706b4d4da2654a7eb2081479f0dc55cf-20190601
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2011125006; Sat, 01 Jun 2019 01:26:28 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Jun 2019 02:26:27 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 1 Jun 2019 17:26:24 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sat, 1 Jun 2019 17:26:23 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [v4 3/7] drm/mediatek: add dsi reg commit disable control
Date: Sat, 1 Jun 2019 17:26:11 +0800
Message-ID: <20190601092615.67917-4-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601092615.67917-1-jitao.shi@mediatek.com>
References: <20190601092615.67917-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_022631_997468_7F443809 
X-CRM114-Status: UNSURE (   9.72  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
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
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index a48db056df6c..eea47294079e 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -131,6 +131,10 @@
 #define VM_CMD_EN			BIT(0)
 #define TS_VFP_EN			BIT(5)
 
+#define DSI_SHADOW_DEBUG	0x190U
+#define FORCE_COMMIT			BIT(0)
+#define BYPASS_SHADOW			BIT(1)
+
 #define CONFIG				(0xff << 0)
 #define SHORT_PACKET			0
 #define LONG_PACKET			2
@@ -157,6 +161,7 @@ struct phy;
 
 struct mtk_dsi_driver_data {
 	const u32 reg_cmdq_off;
+	bool has_shadow_ctl;
 };
 
 struct mtk_dsi {
@@ -594,6 +599,11 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
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
