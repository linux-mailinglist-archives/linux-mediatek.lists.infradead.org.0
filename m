Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EDBA1E75
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 17:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmgkmnjslCvx1+LsWrPQVEpf74V19I8v5Ttbk6RR3pE=; b=Qb6OtPH8qg1cvO
	zV6A0Ck1mqGe/W5hq3xn+s9hs6R6/co+YMUAdT6gqjyPESd68iABVwZRgZMON0QslfHRoUhGfLmu8
	rQkgu1FsrI07kfvTiBrt7KSumDDl6ROM4Nz7GOtgvkKW4k0/hQ+yiCl15Q+jlINUab0CmRMR1mAAv
	+4dSpBvMZJjMqxNAJZ2zh7JP6TMAh8l+Tr9dCeD7/JmDk8FqC4H4FIc4H/BLXjpheNIIPqp0DKMcJ
	0lZEDTSPeP8IBwo/Y34CullU0e9ETH4jwIRC+6F3teQ5hH1+keCkCVwhrnFxg4kTfH3XmjINAW3R5
	4M1UKUlKmiogHU2j8GVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3M3N-0000F3-UV; Thu, 29 Aug 2019 15:09:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Lls-0005pI-3Y; Thu, 29 Aug 2019 14:51:54 +0000
X-UUID: 155cae63120341b69293cd25430f1f09-20190829
X-UUID: 155cae63120341b69293cd25430f1f09-20190829
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 674913358; Thu, 29 Aug 2019 06:51:31 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 07:51:30 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 22:51:24 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 22:51:23 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5, 19/32] drm/medaitek: add layer_nr for ovl private data
Date: Thu, 29 Aug 2019 22:50:41 +0800
Message-ID: <1567090254-15566-20-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 72B22DD7C2694E4DF380879389789265D1A4F7ADFD02AD9752AFEF2E0657D4B52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_075132_813792_3C78D8E2 
X-CRM114-Status: GOOD (  12.07  )
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
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

This patch add layer_nr for ovl private data
ovl_2l almost same with with ovl hardware, except the
layer number for ovl_2l is 2 and ovl is 4.
this patch is a preparation for ovl-2l and
ovl share the same driver.

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 82eaefd..baef066 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -52,6 +52,7 @@
 struct mtk_disp_ovl_data {
 	unsigned int addr;
 	unsigned int gmc_bits;
+	unsigned int layer_nr;
 	bool fmt_rgb565_is_0;
 };
 
@@ -129,7 +130,9 @@ static void mtk_ovl_config(struct mtk_ddp_comp *comp, unsigned int w,
 
 static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
 {
-	return 4;
+	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
+
+	return ovl->data->layer_nr;
 }
 
 static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
@@ -334,12 +337,14 @@ static int mtk_disp_ovl_remove(struct platform_device *pdev)
 static const struct mtk_disp_ovl_data mt2701_ovl_driver_data = {
 	.addr = DISP_REG_OVL_ADDR_MT2701,
 	.gmc_bits = 8,
+	.layer_nr = 4,
 	.fmt_rgb565_is_0 = false,
 };
 
 static const struct mtk_disp_ovl_data mt8173_ovl_driver_data = {
 	.addr = DISP_REG_OVL_ADDR_MT8173,
 	.gmc_bits = 8,
+	.layer_nr = 4,
 	.fmt_rgb565_is_0 = true,
 };
 
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
