Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E30FDBB2
	for <lists+linux-mediatek@lfdr.de>; Fri, 15 Nov 2019 11:49:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYDWuHS4Latu+UitIvQucGY2ucD+16gwjOHzHwkj6cc=; b=tdsiNrsNAwLxYv
	MOTi85aOerr879Bxj7vDh+/DgdSRgzPJsWKjcrIY3iA85mN1+l2AszUK5w1WzQOpqU1uKM3YbaRIA
	x2qYlzfw9F9F1FKQ/xlY/mQRMl71XQv8TVqCiH+N/CtDapyw1K/B20c5GQZprzZisABoAcl+RH0W7
	c0QPe5MeBp8GP8VrtwBkELQ2sTtgfip0zCwiwYUS21EAo2GjuT2NUfJCsGTJ9siZI2bq4C7CcLk8H
	jWUNJdNDlnuTbbmWgOFFB32JygLj82/BSwrM9v7rPgR1K6JLGHZ9iMHBCV29an+B1/dWvzl++5PvF
	+MjPOyG8Cp6QLbSJxioA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZAH-00054a-GO; Fri, 15 Nov 2019 10:49:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZAC-00050o-E0
 for linux-mediatek@lists.infradead.org; Fri, 15 Nov 2019 10:49:18 +0000
X-UUID: f3151142fd454594961d9a2128766809-20191115
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=fO8zwr7/pfaI7sruuHEycEGQ3hMXMR21z1zQRKzuxSI=; 
 b=oUsHjCwDyZR57es7gYEN71jpK4kZoKsXXQvCPMogcmNKWrq7hEqQLChZ6VsuY2Vjd4x6hZ18+TWtpNeWMjibprlvRpF3bDpau5OLioGbBLbXSgsSTJw0TM7KN6w0LNmOFFUHoLOj/xWnJLdv0H0cxwWkutWrn04DCFMzE2U6Itg=;
X-UUID: f3151142fd454594961d9a2128766809-20191115
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <eason.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 607726998; Fri, 15 Nov 2019 02:49:12 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 15 Nov 2019 02:48:54 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 15 Nov 2019 18:48:47 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 15 Nov 2019 18:48:47 +0800
From: Eason Yen <eason.yen@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH v2 1/2] ASoC: mediatek: common: add some helpers to control
 mtk_memif
Date: Fri, 15 Nov 2019 18:48:45 +0800
Message-ID: <1573814926-15805-2-git-send-email-eason.yen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1573814926-15805-1-git-send-email-eason.yen@mediatek.com>
References: <1573814926-15805-1-git-send-email-eason.yen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_024916_492308_9712E265 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, chipeng.chang@mediatek.com,
 jiaxin.yu@mediatek.com, linux-mediatek@lists.infradead.org,
 eason.yen@mediatek.com, matthias.bgg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

1. Add the following helper in mtk-afe-fe-dai to control
to control mtk_memif
- mtk_memif_set_enable
- mtk_memif_set_disable
- mtk_memif_set_addr
- mtk_memif_set_channel
- mtk_memif_set_rate
- mtk_memif_set_rate_substream
- mtk_memif_set_format
- mtk_memif_set_pbuf_size

2.extend mtk_base_memif_data struct for new platform

Signed-off-by: Eason Yen <eason.yen@mediatek.com>
---
 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 216 +++++++++++++++++++++++++++++
 sound/soc/mediatek/common/mtk-afe-fe-dai.h |  16 +++
 sound/soc/mediatek/common/mtk-base-afe.h   |  28 +++-
 3 files changed, 259 insertions(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.c b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
index 10ea4fd..309dc1e 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.c
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
@@ -361,6 +361,222 @@ int mtk_afe_dai_resume(struct snd_soc_dai *dai)
 }
 EXPORT_SYMBOL_GPL(mtk_afe_dai_resume);
 
+int mtk_memif_set_enable(struct mtk_base_afe *afe, int id)
+{
+	struct mtk_base_afe_memif *memif = &afe->memif[id];
+
+	if (memif->data->enable_shift < 0) {
+		dev_warn(afe->dev, "%s(), error, id %d, enable_shift < 0\n",
+			 __func__, id);
+		return 0;
+	}
+	return mtk_regmap_update_bits(afe->regmap, memif->data->enable_reg,
+				      1, 1, memif->data->enable_shift);
+}
+EXPORT_SYMBOL_GPL(mtk_memif_set_enable);
+
+int mtk_memif_set_disable(struct mtk_base_afe *afe, int id)
+{
+	struct mtk_base_afe_memif *memif = &afe->memif[id];
+
+	if (memif->data->enable_shift < 0) {
+		dev_warn(afe->dev, "%s(), error, id %d, enable_shift < 0\n",
+			 __func__, id);
+		return 0;
+	}
+	return mtk_regmap_update_bits(afe->regmap, memif->data->enable_reg,
+				      1, 0, memif->data->enable_shift);
+}
+EXPORT_SYMBOL_GPL(mtk_memif_set_disable);
+
+int mtk_memif_set_addr(struct mtk_base_afe *afe, int id,
+		       unsigned char *dma_area,
+		       dma_addr_t dma_addr,
+		       size_t dma_bytes)
+{
+	struct mtk_base_afe_memif *memif = &afe->memif[id];
+	int msb_at_bit33 = upper_32_bits(dma_addr) ? 1 : 0;
+	unsigned int phys_buf_addr = lower_32_bits(dma_addr);
+	unsigned int phys_buf_addr_upper_32 = upper_32_bits(dma_addr);
+
+	memif->dma_area = dma_area;
+	memif->dma_addr = dma_addr;
+	memif->dma_bytes = dma_bytes;
+
+	/* start */
+	mtk_regmap_write(afe->regmap, memif->data->reg_ofs_base,
+			 phys_buf_addr);
+	/* end */
+	if (memif->data->reg_ofs_end)
+		mtk_regmap_write(afe->regmap,
+				 memif->data->reg_ofs_end,
+				 phys_buf_addr + dma_bytes - 1);
+	else
+		mtk_regmap_write(afe->regmap,
+				 memif->data->reg_ofs_base +
+				 AFE_BASE_END_OFFSET,
+				 phys_buf_addr + dma_bytes - 1);
+
+	/* set start, end, upper 32 bits */
+	if (memif->data->reg_ofs_base_msb) {
+		mtk_regmap_write(afe->regmap, memif->data->reg_ofs_base_msb,
+				 phys_buf_addr_upper_32);
+		mtk_regmap_write(afe->regmap,
+				 memif->data->reg_ofs_end_msb,
+				 phys_buf_addr_upper_32);
+	}
+
+	/* set MSB to 33-bit */
+	if (memif->data->msb_reg >= 0)
+		mtk_regmap_update_bits(afe->regmap, memif->data->msb_reg,
+				       1, msb_at_bit33, memif->data->msb_shift);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(mtk_memif_set_addr);
+
+int mtk_memif_set_channel(struct mtk_base_afe *afe,
+			  int id, unsigned int channel)
+{
+	struct mtk_base_afe_memif *memif = &afe->memif[id];
+	unsigned int mono;
+
+	if (memif->data->mono_shift < 0)
+		return 0;
+
+	if (memif->data->quad_ch_mask) {
+		unsigned int quad_ch = (channel == 4) ? 1 : 0;
+
+		mtk_regmap_update_bits(afe->regmap, memif->data->quad_ch_reg,
+				       memif->data->quad_ch_mask,
+				       quad_ch, memif->data->quad_ch_shift);
+	}
+
+	if (memif->data->mono_invert)
+		mono = (channel == 1) ? 0 : 1;
+	else
+		mono = (channel == 1) ? 1 : 0;
+
+	return mtk_regmap_update_bits(afe->regmap, memif->data->mono_reg,
+				      1, mono, memif->data->mono_shift);
+}
+EXPORT_SYMBOL_GPL(mtk_memif_set_channel);
+
+static int mtk_memif_set_rate_fs(struct mtk_base_afe *afe,
+				 int id, int fs)
+{
+	struct mtk_base_afe_memif *memif = &afe->memif[id];
+
+	if (memif->data->fs_shift >= 0)
+		mtk_regmap_update_bits(afe->regmap, memif->data->fs_reg,
+				       memif->data->fs_maskbit,
+				       fs, memif->data->fs_shift);
+
+	return 0;
+}
+
+int mtk_memif_set_rate(struct mtk_base_afe *afe,
+		       int id, unsigned int rate)
+{
+	int fs = 0;
+
+	if (!afe->get_dai_fs) {
+		dev_err(afe->dev, "%s(), error, afe->get_dai_fs == NULL\n",
+			__func__);
+		return -EINVAL;
+	}
+
+	fs = afe->get_dai_fs(afe, id, rate);
+
+	if (fs < 0)
+		return -EINVAL;
+
+	return mtk_memif_set_rate_fs(afe, id, fs);
+}
+EXPORT_SYMBOL_GPL(mtk_memif_set_rate);
+
+int mtk_memif_set_rate_substream(struct snd_pcm_substream *substream,
+				 int id, unsigned int rate)
+{
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
+	struct snd_soc_component *component =
+		snd_soc_rtdcom_lookup(rtd, AFE_PCM_NAME);
+	struct mtk_base_afe *afe = snd_soc_component_get_drvdata(component);
+
+	int fs = 0;
+
+	if (!afe->memif_fs) {
+		dev_err(afe->dev, "%s(), error, afe->memif_fs == NULL\n",
+			__func__);
+		return -EINVAL;
+	}
+
+	fs = afe->memif_fs(substream, rate);
+
+	if (fs < 0)
+		return -EINVAL;
+
+	return mtk_memif_set_rate_fs(afe, id, fs);
+}
+EXPORT_SYMBOL_GPL(mtk_memif_set_rate_substream);
+
+int mtk_memif_set_format(struct mtk_base_afe *afe,
+			 int id, snd_pcm_format_t format)
+{
+	struct mtk_base_afe_memif *memif = &afe->memif[id];
+	int hd_audio = 0;
+	int hd_align = 0;
+
+	/* set hd mode */
+	switch (format) {
+	case SNDRV_PCM_FORMAT_S16_LE:
+	case SNDRV_PCM_FORMAT_U16_LE:
+		hd_audio = 0;
+		break;
+	case SNDRV_PCM_FORMAT_S32_LE:
+	case SNDRV_PCM_FORMAT_U32_LE:
+		hd_audio = 1;
+		hd_align = 1;
+		break;
+	case SNDRV_PCM_FORMAT_S24_LE:
+	case SNDRV_PCM_FORMAT_U24_LE:
+		hd_audio = 1;
+		break;
+	default:
+		dev_err(afe->dev, "%s() error: unsupported format %d\n",
+			__func__, format);
+		break;
+	}
+
+	mtk_regmap_update_bits(afe->regmap, memif->data->hd_reg,
+			       1, hd_audio, memif->data->hd_shift);
+
+	mtk_regmap_update_bits(afe->regmap, memif->data->hd_align_reg,
+			       1, hd_align, memif->data->hd_align_mshift);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(mtk_memif_set_format);
+
+int mtk_memif_set_pbuf_size(struct mtk_base_afe *afe,
+			    int id, int pbuf_size)
+{
+	const struct mtk_base_memif_data *memif_data = afe->memif[id].data;
+
+	if (memif_data->pbuf_mask == 0 || memif_data->minlen_mask == 0)
+		return 0;
+
+	mtk_regmap_update_bits(afe->regmap, memif_data->pbuf_reg,
+			       memif_data->pbuf_mask,
+			       pbuf_size, memif_data->pbuf_shift);
+
+	mtk_regmap_update_bits(afe->regmap, memif_data->minlen_reg,
+			       memif_data->minlen_mask,
+			       pbuf_size, memif_data->minlen_shift);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(mtk_memif_set_pbuf_size);
+
 MODULE_DESCRIPTION("Mediatek simple fe dai operator");
 MODULE_AUTHOR("Garlic Tseng <garlic.tseng@mediatek.com>");
 MODULE_LICENSE("GPL v2");
diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.h b/sound/soc/mediatek/common/mtk-afe-fe-dai.h
index 55074fb..507e3e7 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.h
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.h
@@ -34,4 +34,20 @@ int mtk_afe_fe_trigger(struct snd_pcm_substream *substream, int cmd,
 int mtk_afe_dai_suspend(struct snd_soc_dai *dai);
 int mtk_afe_dai_resume(struct snd_soc_dai *dai);
 
+int mtk_memif_set_enable(struct mtk_base_afe *afe, int id);
+int mtk_memif_set_disable(struct mtk_base_afe *afe, int id);
+int mtk_memif_set_addr(struct mtk_base_afe *afe, int id,
+		       unsigned char *dma_area,
+		       dma_addr_t dma_addr,
+		       size_t dma_bytes);
+int mtk_memif_set_channel(struct mtk_base_afe *afe,
+			  int id, unsigned int channel);
+int mtk_memif_set_rate(struct mtk_base_afe *afe,
+		       int id, unsigned int rate);
+int mtk_memif_set_rate_substream(struct snd_pcm_substream *substream,
+				 int id, unsigned int rate);
+int mtk_memif_set_format(struct mtk_base_afe *afe,
+			 int id, snd_pcm_format_t format);
+int mtk_memif_set_pbuf_size(struct mtk_base_afe *afe,
+			    int id, int pbuf_size);
 #endif
diff --git a/sound/soc/mediatek/common/mtk-base-afe.h b/sound/soc/mediatek/common/mtk-base-afe.h
index 60cb609..a8cf44d 100644
--- a/sound/soc/mediatek/common/mtk-base-afe.h
+++ b/sound/soc/mediatek/common/mtk-base-afe.h
@@ -16,21 +16,38 @@ struct mtk_base_memif_data {
 	const char *name;
 	int reg_ofs_base;
 	int reg_ofs_cur;
+	int reg_ofs_end;
+	int reg_ofs_base_msb;
+	int reg_ofs_cur_msb;
+	int reg_ofs_end_msb;
 	int fs_reg;
 	int fs_shift;
 	int fs_maskbit;
 	int mono_reg;
 	int mono_shift;
+	int mono_invert;
+	int quad_ch_reg;
+	int quad_ch_mask;
+	int quad_ch_shift;
 	int enable_reg;
 	int enable_shift;
 	int hd_reg;
-	int hd_align_reg;
 	int hd_shift;
+	int hd_align_reg;
 	int hd_align_mshift;
 	int msb_reg;
 	int msb_shift;
+	int msb2_reg;
+	int msb2_shift;
 	int agent_disable_reg;
 	int agent_disable_shift;
+	/* playback memif only */
+	int pbuf_reg;
+	int pbuf_mask;
+	int pbuf_shift;
+	int minlen_reg;
+	int minlen_mask;
+	int minlen_shift;
 };
 
 struct mtk_base_irq_data {
@@ -84,6 +101,12 @@ struct mtk_base_afe {
 			unsigned int rate);
 	int (*irq_fs)(struct snd_pcm_substream *substream,
 		      unsigned int rate);
+	int (*get_dai_fs)(struct mtk_base_afe *afe,
+			  int dai_id, unsigned int rate);
+	int (*get_memif_pbuf_size)(struct snd_pcm_substream *substream);
+
+	int (*request_dram_resource)(struct device *dev);
+	int (*release_dram_resource)(struct device *dev);
 
 	void *platform_priv;
 };
@@ -95,6 +118,9 @@ struct mtk_base_afe_memif {
 	const struct mtk_base_memif_data *data;
 	int irq_usage;
 	int const_irq;
+	unsigned char *dma_area;
+	dma_addr_t dma_addr;
+	size_t dma_bytes;
 };
 
 struct mtk_base_afe_irq {
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
