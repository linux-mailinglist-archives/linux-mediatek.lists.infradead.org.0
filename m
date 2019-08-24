Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9879BBCF
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 06:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmbiYGvH4RqiYe7oMYQtuz1LW9W6QX5MukzZQvCmD/4=; b=p4HMG8qKbQ3sDZ
	E5yo598weD7m+QED36WZ8x5s0okJMqqRMnxZUOvZ5AJiSHziUgCORO3DmpxouXF3EtqTlyj5vYK0W
	78lxDVzus3ouk4zH/Ue12UbxfjJiVkKNJLVZTGECpDZ1qj4XIr6WmZfkajNBVRQEu5EbdTXosf88v
	SK9WwicVHKN2qeT5+mr0Mqo0KO1xk25BR9dD/0w4EU8z8EEL96NCiHRK/NOviMV/6zlT0Vuor1NzF
	CdCfxb30lHtI3iis5CxU3OZHkYfthrOCpgrzqWHWAXL0Dree5CzldmTfJrlbGYmVDWVu35aEhSQEK
	3KwxP3hstm9JRscH8XTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1NtT-0007ku-B5; Sat, 24 Aug 2019 04:43:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1NtP-0007k8-CE
 for linux-mediatek@lists.infradead.org; Sat, 24 Aug 2019 04:43:12 +0000
X-UUID: 228022dcf21e4420838cd2655fad579b-20190823
X-UUID: 228022dcf21e4420838cd2655fad579b-20190823
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 284711081; Fri, 23 Aug 2019 20:42:49 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 21:42:48 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 24 Aug 2019 12:42:29 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 24 Aug 2019 12:41:13 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH v2 2/3] ASoC: mediatek: mt8183: tdm hw support tdm out and 8ch
 i2s out
Date: Sat, 24 Aug 2019 12:37:24 +0800
Message-ID: <1566621445-26989-3-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1566621445-26989-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1566621445-26989-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5CCCDFCD790FBCBDECE24D057BE344D6DA37FAF4E4BF8CEBEF154A79835FE2FA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_214311_419980_22732A9E 
X-CRM114-Status: GOOD (  13.92  )
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

This patch refined tdm driver code, and allow tdm hw to support two
configurations in machine driver to output tdm signal or i2s signal.

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
---
 sound/soc/mediatek/mt8183/mt8183-dai-tdm.c    | 175 ++++++++++++++----
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c   |   3 +
 2 files changed, 144 insertions(+), 34 deletions(-)

diff --git a/sound/soc/mediatek/mt8183/mt8183-dai-tdm.c b/sound/soc/mediatek/mt8183/mt8183-dai-tdm.c
index 8983d54a9b67..d34cabdbf889 100644
--- a/sound/soc/mediatek/mt8183/mt8183-dai-tdm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-dai-tdm.c
@@ -15,13 +15,30 @@
 struct mtk_afe_tdm_priv {
 	int bck_id;
 	int bck_rate;
-
+	int tdm_out_mode;
+	int bck_invert;
+	int lck_invert;
 	int mclk_id;
 	int mclk_multiple; /* according to sample rate */
 	int mclk_rate;
 	int mclk_apll;
 };
 
+enum {
+	TDM_OUT_I2S = 0,
+	TDM_OUT_TDM = 1,
+};
+
+enum {
+	TDM_BCK_NON_INV = 0,
+	TDM_BCK_INV = 1,
+};
+
+enum {
+	TDM_LCK_NON_INV = 0,
+	TDM_LCK_INV = 1,
+};
+
 enum {
 	TDM_WLEN_16_BIT = 1,
 	TDM_WLEN_32_BIT = 2,
@@ -93,6 +110,25 @@ static unsigned int get_tdm_ch(unsigned int ch)
 	}
 }
 
+static unsigned int get_tdm_ch_fixup(unsigned int channels)
+{
+	if (channels > 4)
+		return 8;
+	else if (channels > 2)
+		return 4;
+	else
+		return 2;
+}
+
+static unsigned int get_tdm_ch_per_sdata(unsigned int mode,
+					 unsigned int channels)
+{
+	if (mode == TDM_OUT_TDM)
+		return get_tdm_ch_fixup(channels);
+	else
+		return 2;
+}
+
 /* interconnection */
 enum {
 	HDMI_CONN_CH0 = 0,
@@ -433,8 +469,11 @@ static int mtk_dai_tdm_hw_params(struct snd_pcm_substream *substream,
 	struct mt8183_afe_private *afe_priv = afe->platform_priv;
 	int tdm_id = dai->id;
 	struct mtk_afe_tdm_priv *tdm_priv = afe_priv->dai_priv[tdm_id];
+	unsigned int tdm_out_mode = tdm_priv->tdm_out_mode;
 	unsigned int rate = params_rate(params);
 	unsigned int channels = params_channels(params);
+	unsigned int out_channels_per_sdata =
+		get_tdm_ch_per_sdata(tdm_out_mode, channels);
 	snd_pcm_format_t format = params_format(params);
 	unsigned int tdm_con = 0;
 
@@ -448,7 +487,7 @@ static int mtk_dai_tdm_hw_params(struct snd_pcm_substream *substream,
 
 	/* calculate bck */
 	tdm_priv->bck_rate = rate *
-			     channels *
+			     out_channels_per_sdata *
 			     snd_pcm_format_physical_width(format);
 
 	if (tdm_priv->bck_rate > tdm_priv->mclk_rate)
@@ -461,50 +500,70 @@ static int mtk_dai_tdm_hw_params(struct snd_pcm_substream *substream,
 		 __func__,
 		 tdm_id, rate, channels, format,
 		 tdm_priv->mclk_rate, tdm_priv->bck_rate);
+	dev_info(afe->dev, "%s(), out_channels_per_sdata = %d\n",
+		 __func__, out_channels_per_sdata);
 
 	/* set tdm */
-	tdm_con = 1 << BCK_INVERSE_SFT;
-	tdm_con |= 1 << LRCK_INVERSE_SFT;
-	tdm_con |= 1 << DELAY_DATA_SFT;
+	if (tdm_priv->bck_invert)
+		tdm_con |= 1 << BCK_INVERSE_SFT;
+
+	if (tdm_priv->lck_invert)
+		tdm_con |= 1 << LRCK_INVERSE_SFT;
+
+	if (tdm_priv->tdm_out_mode == TDM_OUT_I2S) {
+		tdm_con |= 1 << DELAY_DATA_SFT;
+		tdm_con |= get_tdm_lrck_width(format) << LRCK_TDM_WIDTH_SFT;
+	} else if (tdm_priv->tdm_out_mode == TDM_OUT_TDM) {
+		tdm_con |= 0 << DELAY_DATA_SFT;
+		tdm_con |= 0 << LRCK_TDM_WIDTH_SFT;
+	}
+
 	tdm_con |= 1 << LEFT_ALIGN_SFT;
 	tdm_con |= get_tdm_wlen(format) << WLEN_SFT;
-	tdm_con |= get_tdm_ch(channels) << CHANNEL_NUM_SFT;
+	tdm_con |= get_tdm_ch(out_channels_per_sdata) << CHANNEL_NUM_SFT;
 	tdm_con |= get_tdm_channel_bck(format) << CHANNEL_BCK_CYCLES_SFT;
-	tdm_con |= get_tdm_lrck_width(format) << LRCK_TDM_WIDTH_SFT;
 	regmap_write(afe->regmap, AFE_TDM_CON1, tdm_con);
 
-	switch (channels) {
-	case 1:
-	case 2:
+	if (out_channels_per_sdata == 2) {
+		switch (channels) {
+		case 1:
+		case 2:
+			tdm_con = TDM_CH_START_O30_O31 << ST_CH_PAIR_SOUT0_SFT;
+			tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT1_SFT;
+			tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT2_SFT;
+			tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT3_SFT;
+			break;
+		case 3:
+		case 4:
+			tdm_con = TDM_CH_START_O30_O31 << ST_CH_PAIR_SOUT0_SFT;
+			tdm_con |= TDM_CH_START_O32_O33 << ST_CH_PAIR_SOUT1_SFT;
+			tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT2_SFT;
+			tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT3_SFT;
+			break;
+		case 5:
+		case 6:
+			tdm_con = TDM_CH_START_O30_O31 << ST_CH_PAIR_SOUT0_SFT;
+			tdm_con |= TDM_CH_START_O32_O33 << ST_CH_PAIR_SOUT1_SFT;
+			tdm_con |= TDM_CH_START_O34_O35 << ST_CH_PAIR_SOUT2_SFT;
+			tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT3_SFT;
+			break;
+		case 7:
+		case 8:
+			tdm_con = TDM_CH_START_O30_O31 << ST_CH_PAIR_SOUT0_SFT;
+			tdm_con |= TDM_CH_START_O32_O33 << ST_CH_PAIR_SOUT1_SFT;
+			tdm_con |= TDM_CH_START_O34_O35 << ST_CH_PAIR_SOUT2_SFT;
+			tdm_con |= TDM_CH_START_O36_O37 << ST_CH_PAIR_SOUT3_SFT;
+			break;
+		default:
+			tdm_con = 0;
+		}
+	} else {
 		tdm_con = TDM_CH_START_O30_O31 << ST_CH_PAIR_SOUT0_SFT;
 		tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT1_SFT;
 		tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT2_SFT;
 		tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT3_SFT;
-		break;
-	case 3:
-	case 4:
-		tdm_con = TDM_CH_START_O30_O31 << ST_CH_PAIR_SOUT0_SFT;
-		tdm_con |= TDM_CH_START_O32_O33 << ST_CH_PAIR_SOUT1_SFT;
-		tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT2_SFT;
-		tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT3_SFT;
-		break;
-	case 5:
-	case 6:
-		tdm_con = TDM_CH_START_O30_O31 << ST_CH_PAIR_SOUT0_SFT;
-		tdm_con |= TDM_CH_START_O32_O33 << ST_CH_PAIR_SOUT1_SFT;
-		tdm_con |= TDM_CH_START_O34_O35 << ST_CH_PAIR_SOUT2_SFT;
-		tdm_con |= TDM_CH_ZERO << ST_CH_PAIR_SOUT3_SFT;
-		break;
-	case 7:
-	case 8:
-		tdm_con = TDM_CH_START_O30_O31 << ST_CH_PAIR_SOUT0_SFT;
-		tdm_con |= TDM_CH_START_O32_O33 << ST_CH_PAIR_SOUT1_SFT;
-		tdm_con |= TDM_CH_START_O34_O35 << ST_CH_PAIR_SOUT2_SFT;
-		tdm_con |= TDM_CH_START_O36_O37 << ST_CH_PAIR_SOUT3_SFT;
-		break;
-	default:
-		tdm_con = 0;
 	}
+
 	regmap_write(afe->regmap, AFE_TDM_CON2, tdm_con);
 
 	regmap_update_bits(afe->regmap, AFE_HDMI_OUT_CON0,
@@ -573,10 +632,58 @@ static int mtk_dai_tdm_set_sysclk(struct snd_soc_dai *dai,
 	return mtk_dai_tdm_cal_mclk(afe, tdm_priv, freq);
 }
 
+static int mtk_dai_tdm_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
+{
+	struct mtk_base_afe *afe = dev_get_drvdata(dai->dev);
+	struct mt8183_afe_private *afe_priv = afe->platform_priv;
+	struct mtk_afe_tdm_priv *tdm_priv = afe_priv->dai_priv[dai->id];
+
+	if (!tdm_priv) {
+		dev_warn(afe->dev, "%s(), tdm_priv == NULL", __func__);
+		return -EINVAL;
+	}
+
+	/* DAI mode*/
+	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
+	case SND_SOC_DAIFMT_I2S:
+		tdm_priv->tdm_out_mode = TDM_OUT_I2S;
+		break;
+	case SND_SOC_DAIFMT_DSP_A:
+		tdm_priv->tdm_out_mode = TDM_OUT_TDM;
+		break;
+	default:
+		tdm_priv->tdm_out_mode = TDM_OUT_I2S;
+	}
+
+	/* DAI clock inversion*/
+	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
+	case SND_SOC_DAIFMT_NB_NF:
+		tdm_priv->bck_invert = TDM_BCK_NON_INV;
+		tdm_priv->lck_invert = TDM_LCK_NON_INV;
+		break;
+	case SND_SOC_DAIFMT_NB_IF:
+		tdm_priv->bck_invert = TDM_BCK_NON_INV;
+		tdm_priv->lck_invert = TDM_LCK_INV;
+		break;
+	case SND_SOC_DAIFMT_IB_NF:
+		tdm_priv->bck_invert = TDM_BCK_INV;
+		tdm_priv->lck_invert = TDM_LCK_NON_INV;
+		break;
+	case SND_SOC_DAIFMT_IB_IF:
+	default:
+		tdm_priv->bck_invert = TDM_BCK_INV;
+		tdm_priv->lck_invert = TDM_LCK_INV;
+		break;
+	}
+
+	return 0;
+}
+
 static const struct snd_soc_dai_ops mtk_dai_tdm_ops = {
 	.hw_params = mtk_dai_tdm_hw_params,
 	.trigger = mtk_dai_tdm_trigger,
 	.set_sysclk = mtk_dai_tdm_set_sysclk,
+	.set_fmt = mtk_dai_tdm_set_fmt,
 };
 
 /* dai driver */
diff --git a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
index fe8a7461ace5..0fed0fa4704f 100644
--- a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
@@ -390,6 +390,9 @@ mt8183_mt6358_ts3a227_max98357_dai_links[] = {
 	{
 		.name = "TDM",
 		.no_pcm = 1,
+		.dai_fmt = SND_SOC_DAIFMT_I2S |
+			   SND_SOC_DAIFMT_IB_IF |
+			   SND_SOC_DAIFMT_CBM_CFM,
 		.dpcm_playback = 1,
 		.ignore_suspend = 1,
 		.be_hw_params_fixup = mt8183_i2s_hw_params_fixup,
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
