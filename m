Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BDA202EB
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 11:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2KVPLruSjDdvLoAsvKCBahwwOEkrL+idAH0ZL/C4po=; b=ORtfeSbAAlqtZi
	uxcRcBfrpddq6vDCmRxeK738p++pQVxsfeq3HoZzIEmPr3g30Twdvl5Bh36hE+dbumOIwkNVDtpXt
	87yXNOHW1JjX51wbztMTdjwAC8X8Gu9FQdpp9ZJXt1at7rXksIn0S9BM/OrzQPoxWxV9Ixxj49m/9
	hAtXytRvCjQBCGpUUzoS3haqMfTRSEnzu9332yazUfPHjQXg0BZRnXV1dIjg0FY/WwLhfQHrJM0T2
	hhieFP+rByaUqIT7Amt7eFiTfBSG6vdCU7QaqPq/PxF44SQDwHSYF7Y7lRwzt8HWQ3rkBPJi87lt6
	PyYIjLeoqmG06WTblfLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRD6B-0005Dd-CK; Thu, 16 May 2019 09:54:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRD68-0005BK-2E
 for linux-mediatek@lists.infradead.org; Thu, 16 May 2019 09:54:49 +0000
X-UUID: de81f4cf79e544b8b605bdb85bc100c8-20190516
X-UUID: de81f4cf79e544b8b605bdb85bc100c8-20190516
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <shunli.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2139789301; Thu, 16 May 2019 01:54:44 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 02:54:43 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 17:54:40 +0800
Received: from mtkslt301.mediatek.inc (10.21.14.114) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 17:54:40 +0800
From: Shunli Wang <shunli.wang@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH 1/2] ASoC: Mediatek: add memory interface data align
Date: Thu, 16 May 2019 17:54:37 +0800
Message-ID: <20190516095438.15759-2-shunli.wang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190516095438.15759-1-shunli.wang@mediatek.com>
References: <20190516095438.15759-1-shunli.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 83AAA05584EBEFEF300809274AAA279063FAE224E474642367DE58D515434D982000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_025448_114288_EB7FC9ED 
X-CRM114-Status: UNSURE (   8.13  )
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
Cc: alsa-devel@alsa-project.org, srv_heupstream@mediatek.com,
 garlic.tseng@mediatek.com, jiaxin.yu@mediatek.com, tzungbi@google.com,
 linux-mediatek@lists.infradead.org, shunli.wang@mediatek.com,
 kaichieh.chuang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This supports two data align settings. One is S32_LE and
other is S24_LE.

Signed-off-by: Shunli Wang <shunli.wang@mediatek.com>
---
 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 7 +++++++
 sound/soc/mediatek/common/mtk-base-afe.h   | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.c b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
index fded11d14cde..19048c3dc324 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.c
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
@@ -241,6 +241,7 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 	struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 	struct mtk_base_afe_memif *memif = &afe->memif[rtd->cpu_dai->id];
 	int hd_audio = 0;
+	int hd_align = 1;
 
 	/* set hd mode */
 	switch (substream->runtime->format) {
@@ -249,9 +250,11 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 		break;
 	case SNDRV_PCM_FORMAT_S32_LE:
 		hd_audio = 1;
+		hd_align = 1;
 		break;
 	case SNDRV_PCM_FORMAT_S24_LE:
 		hd_audio = 1;
+		hd_align = 0;
 		break;
 	default:
 		dev_err(afe->dev, "%s() error: unsupported format %d\n",
@@ -262,6 +265,10 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 	mtk_regmap_update_bits(afe->regmap, memif->data->hd_reg,
 			       1, hd_audio, memif->data->hd_shift);
 
+	mtk_regmap_update_bits(afe->regmap, memif->data->hd_align_reg,
+			       memif->data->hd_align_mshift,
+			       hd_align ? memif->data->hd_align_mshift : 0);
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(mtk_afe_fe_prepare);
diff --git a/sound/soc/mediatek/common/mtk-base-afe.h b/sound/soc/mediatek/common/mtk-base-afe.h
index bd8d5e0c6843..60cb609a9790 100644
--- a/sound/soc/mediatek/common/mtk-base-afe.h
+++ b/sound/soc/mediatek/common/mtk-base-afe.h
@@ -24,7 +24,9 @@ struct mtk_base_memif_data {
 	int enable_reg;
 	int enable_shift;
 	int hd_reg;
+	int hd_align_reg;
 	int hd_shift;
+	int hd_align_mshift;
 	int msb_reg;
 	int msb_shift;
 	int agent_disable_reg;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
