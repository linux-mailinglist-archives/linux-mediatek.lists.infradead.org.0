Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E99C22EAD
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 May 2019 10:25:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2P9DCXNCgN4pVkHHBCIL4yvw7BGmKJSBMhQi7TOe0XM=; b=QZp0x+oUhhOTpC
	SXKj3wTuycWjNT+UuWb++Ot40kGZ9o0P+fOXp8HBX1jHSQbLZJxmxYwNJrWVVYF9bTPnkSQHIwRU/
	8L309ZFLJhdBWIXgx8g8jfUMWt23yi01pVS1QlH2M8z+bRhpAbs2Ixbf2fCDfmQXRpuFsJlm4Oah0
	RDOsKY/hPBq/TqPzcZiiABn2uIjyO3iJtHAmmZg3V7PLsCc9TIU1d3arK12v9yOrE/nXJBjMpFVyU
	iNiYASJbBF+Rjkd77Y9YFKD6ce0IMIda0bkhRlaprg0/VE77JZEmZhlBc74FQYRY7H5tmZ9LwJcyl
	TQxwHPD/nB1HXzc9uXZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdbP-0007av-6T; Mon, 20 May 2019 08:24:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdbL-0007aL-R8
 for linux-mediatek@lists.infradead.org; Mon, 20 May 2019 08:24:57 +0000
X-UUID: cb185259dbf24c5c87d957dfee77a71b-20190520
X-UUID: cb185259dbf24c5c87d957dfee77a71b-20190520
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <shunli.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1514141768; Mon, 20 May 2019 00:24:50 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 01:24:48 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 16:24:47 +0800
Received: from mtkslt301.mediatek.inc (10.21.14.114) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 20 May 2019 16:24:46 +0800
From: Shunli Wang <shunli.wang@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH v2] ASoC: Mediatek: MT8183: enable IIR filter
Date: Mon, 20 May 2019 16:24:20 +0800
Message-ID: <20190520082420.11236-1-shunli.wang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_012455_881371_373B66A7 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

IIR fileter can remove DC offset. It must be enabled when
dmic or amic connected to pmic is used.

Signed-off-by: Shunli Wang <shunli.wang@mediatek.com>
---
v2:
correct the commit message
---
 sound/soc/mediatek/mt8183/mt8183-dai-adda.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/sound/soc/mediatek/mt8183/mt8183-dai-adda.c b/sound/soc/mediatek/mt8183/mt8183-dai-adda.c
index 017d7d1d9148..2b758a18c2ea 100644
--- a/sound/soc/mediatek/mt8183/mt8183-dai-adda.c
+++ b/sound/soc/mediatek/mt8183/mt8183-dai-adda.c
@@ -176,9 +176,6 @@ static int mtk_adda_ul_event(struct snd_soc_dapm_widget *w,
 	case SND_SOC_DAPM_POST_PMD:
 		/* should delayed 1/fs(smallest is 8k) = 125us before afe off */
 		usleep_range(125, 135);
-
-		/* reset dmic */
-		afe_priv->mtkaif_dmic = 0;
 		break;
 	default:
 		break;
@@ -426,6 +423,17 @@ static int mtk_dai_adda_hw_params(struct snd_pcm_substream *substream,
 
 		ul_src_con0 |= (voice_mode << 17) & (0x7 << 17);
 
+		/* enable iir */
+		ul_src_con0 |= (1 << UL_IIR_ON_TMP_CTL_SFT) &
+			       UL_IIR_ON_TMP_CTL_MASK_SFT;
+
+		/* 35Hz @ 48k */
+		regmap_write(afe->regmap, AFE_ADDA_IIR_COEF_02_01, 0x00000000);
+		regmap_write(afe->regmap, AFE_ADDA_IIR_COEF_04_03, 0x00003FB8);
+		regmap_write(afe->regmap, AFE_ADDA_IIR_COEF_06_05, 0x3FB80000);
+		regmap_write(afe->regmap, AFE_ADDA_IIR_COEF_08_07, 0x3FB80000);
+		regmap_write(afe->regmap, AFE_ADDA_IIR_COEF_10_09, 0x0000C048);
+
 		regmap_write(afe->regmap, AFE_ADDA_UL_SRC_CON0, ul_src_con0);
 
 		/* mtkaif_rxif_data_mode = 0, amic */
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
