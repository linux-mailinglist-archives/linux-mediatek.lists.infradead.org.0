Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E747111750A
	for <lists+linux-mediatek@lfdr.de>; Mon,  9 Dec 2019 19:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=7gppbzXprBveMtX5FtM8935QjnDbvg39z4bf8lPjcyI=; b=IPA
	wKAUjKzYfLQjrEZQZqNxPChdos8oPuJfoGIYM4QGQJD/E9pBP6jiRIt6pBIg6W9JDwguJuJbvGXrT
	NmjUemlSnhPE7yqoRqKzGqCnHIB4lw3OwSsuSGtmkWu00R5+0II2wAJ3+KM06aCFCp2E1SDUIj7Cd
	oeJUCMux5Hg42D5FtqVBNb49V1/7TP/2CW7SbMe+ukDla13LbRv58m01uVGdy0c2ypuVECItf6eqp
	U3GKQvekiCqAuTKaSSE3i4ZRg8uvLjsOwhmqHo5dv0DZAjLvRD29UZ+PcpkBdDiiYYxHpzPtFwoze
	EIHArWlAcYMmUGCT8xL5tef+ZVJtusg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieOFx-0001tC-9G; Mon, 09 Dec 2019 18:59:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieOFs-0001qr-Rl
 for linux-mediatek@lists.infradead.org; Mon, 09 Dec 2019 18:59:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65E5313D5;
 Mon,  9 Dec 2019 10:59:36 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D81153F6CF;
 Mon,  9 Dec 2019 10:59:35 -0800 (PST)
Date: Mon, 09 Dec 2019 18:59:34 +0000
From: Mark Brown <broonie@kernel.org>
To: Eason Yen <eason.yen@mediatek.com>
Subject: Applied "ASoC: mediatek: common: add some helpers to control
 mtk_memif" to the asoc tree
In-Reply-To: <1573814926-15805-2-git-send-email-eason.yen@mediatek.com>
Message-Id: <applied-1573814926-15805-2-git-send-email-eason.yen@mediatek.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_105936_984026_39E37819 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 jiaxin.yu@mediatek.com, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com,
 matthias.bgg@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patch

   ASoC: mediatek: common: add some helpers to control mtk_memif

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.6

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 9cdf85a19b3a67433fff2c8c798dc80e81d34a94 Mon Sep 17 00:00:00 2001
From: Eason Yen <eason.yen@mediatek.com>
Date: Fri, 15 Nov 2019 18:48:45 +0800
Subject: [PATCH] ASoC: mediatek: common: add some helpers to control mtk_memif

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
Link: https://lore.kernel.org/r/1573814926-15805-2-git-send-email-eason.yen@mediatek.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 216 +++++++++++++++++++++
 sound/soc/mediatek/common/mtk-afe-fe-dai.h |  16 ++
 sound/soc/mediatek/common/mtk-base-afe.h   |  28 ++-
 3 files changed, 259 insertions(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.c b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
index 10ea4fdbeb1e..309dc1ef6841 100644
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
index 55074fb9861a..507e3e7c3c7d 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.h
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.h
@@ -34,4 +34,20 @@ int mtk_dynamic_irq_release(struct mtk_base_afe *afe, int irq_id);
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
index 60cb609a9790..a8cf44d98244 100644
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
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
