Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1E7B0C02
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 11:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H61TmLfwiWV4cnZrRdQe2m2Y8OcMeis8autYRtzs8jo=; b=XdTC+wesq42qj9
	2brut22wP7on1dFE36pJyPPth33gqjwdg2f7JWnUBUer1godQGlH01He6UG1qibMzrymQo8TNEr+E
	Ux7cUTI0Y/GI3Fvy0XG3aM8qGkQfOs37SHkHGAJ8egNLkdsbFyYcvcN08TzuzTqJZEQgdyQizex2t
	rSHtKJ8kA+FGCPEwgpVz93jEk4wroGEvpSYIzDz2lcMci2Tv0flmIuuvfxBcl2HAhZmLlwFvaRg2y
	bcrtnDnGdO86qQNEstw4JXWTogZ1sG9sD0reGwNUzhjjRwd9EwaX9EjXzCaMLmuxCWwDaRvODT5xu
	C1bT4a7++p2FfhwUqFnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Lot-0007i0-EB; Thu, 12 Sep 2019 09:55:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Lon-0007gU-IX
 for linux-mediatek@lists.infradead.org; Thu, 12 Sep 2019 09:55:15 +0000
X-UUID: eca21a6d0cf74a25bccf6540988aae1a-20190912
X-UUID: eca21a6d0cf74a25bccf6540988aae1a-20190912
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1219372416; Thu, 12 Sep 2019 01:55:06 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 02:55:04 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 17:55:03 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Sep 2019 17:55:03 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 2/2] ASoC: mt8183: fix audio playback slowly after playback
 during bootup
Date: Thu, 12 Sep 2019 17:54:56 +0800
Message-ID: <1568282096-13821-3-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1568282096-13821-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1568282096-13821-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_025513_619050_F01CAABF 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com, jiaxin.yu@mediatek.com,
 perex@perex.cz, tzungbi@google.com, linux-mediatek@lists.infradead.org,
 eason.yen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Before regmap_reinit_cache we must reset audio reg as default value.
So we use reset controller unit(toprgu) to reset audio hw.

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
---
 sound/soc/mediatek/common/mtk-base-afe.h   |  1 +
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 21 +++++++++++++++++++++
 sound/soc/mediatek/mt8183/mt8183-reg.h     |  6 ++++++
 3 files changed, 28 insertions(+)

diff --git a/sound/soc/mediatek/common/mtk-base-afe.h b/sound/soc/mediatek/common/mtk-base-afe.h
index 60cb609a9790..bccc079ee660 100644
--- a/sound/soc/mediatek/common/mtk-base-afe.h
+++ b/sound/soc/mediatek/common/mtk-base-afe.h
@@ -60,6 +60,7 @@ struct mtk_base_afe {
 	void __iomem *base_addr;
 	struct device *dev;
 	struct regmap *regmap;
+	struct regmap *toprgu_regmap;
 	struct mutex irq_alloc_lock; /* dynamic alloc irq lock */
 
 	unsigned int const *reg_back_up_list;
diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index 4a31106d3471..0e5634b3a8e3 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -1089,6 +1089,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 	struct mtk_base_afe *afe;
 	struct mt8183_afe_private *afe_priv;
 	struct device *dev;
+	unsigned int reg_value;
 	int i, irq_id, ret;
 
 	afe = devm_kzalloc(&pdev->dev, sizeof(*afe), GFP_KERNEL);
@@ -1126,6 +1127,26 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	/* toprgu_regmap init */
+	afe->toprgu_regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
+							     "mediatek,toprgu");
+	if (IS_ERR(afe->toprgu_regmap)) {
+		dev_err(dev, "could not get toprgu_regmap from dev\n");
+		return PTR_ERR(afe->toprgu_regmap);
+	}
+
+	/* read TOPRGUWDT_SWSYSRST, the high 8bits must be zero */
+	regmap_read(afe->toprgu_regmap, TOPRGUWDT_SWSYSRST, &reg_value);
+
+	/* write TOPRGUWDT_SWSYSRST, we need set high 8bits as 0x88 first */
+	reg_value |= 0x88000000;
+
+	/* reset audio domain registers */
+	reg_value |= 1 << AUDIO_RST_SFT;
+	regmap_write(afe->toprgu_regmap, TOPRGUWDT_SWSYSRST, reg_value);
+	reg_value &= ~(1 << AUDIO_RST_SFT);
+	regmap_write(afe->toprgu_regmap, TOPRGUWDT_SWSYSRST, reg_value);
+
 	/* enable clock for regcache get default value from hw */
 	afe_priv->pm_runtime_bypass_reg_ctl = true;
 	pm_runtime_get_sync(&pdev->dev);
diff --git a/sound/soc/mediatek/mt8183/mt8183-reg.h b/sound/soc/mediatek/mt8183/mt8183-reg.h
index e544a09e1913..8579ac4052ff 100644
--- a/sound/soc/mediatek/mt8183/mt8183-reg.h
+++ b/sound/soc/mediatek/mt8183/mt8183-reg.h
@@ -413,6 +413,12 @@
 #define AFE_MAX_REGISTER AFE_GENERAL2_ASRC_2CH_CON13
 #define AFE_IRQ_STATUS_BITS 0x1fff
 
+/* TOPRGUWDT_SWSYSRST */
+#define TOPRGUWDT_SWSYSRST 0x18
+#define AUDIO_RST_SFT                                17
+#define AUDIO_RST_MASK                               0x1
+#define AUDIO_RST_MASK_SFT                           (0x1 << 17)
+
 /* AUDIO_TOP_CON3 */
 #define BCK_INVERSE_SFT                              3
 #define BCK_INVERSE_MASK                             0x1
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
