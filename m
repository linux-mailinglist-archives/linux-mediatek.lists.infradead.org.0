Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3477AFDBB1
	for <lists+linux-mediatek@lfdr.de>; Fri, 15 Nov 2019 11:49:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VErRwYpIHOXSp5/mkm45Wd+JQQTv4ZIBtmON4WWCv8g=; b=qd6uem10UiU86F
	WijAwIL6JUVpiEOP7FRSbch1yk6jvPmh1+bq04UM1xrZ9EY3pszOvRqXlaOtxDDTfy9phZBgxCqnL
	MFRAcjTTuD/5yny/+o9zfbjIIVodmCrcUyvVKhS6c3XeIakNUybynpHlOrL7da+PYs0nZRMHTCKjh
	1ftFgPSKGw46qitsPcc/+pYqZqrUssXQhRCnk6hSY50G3ODJwsI4gpvV8Qji8YJigr0ZbX/39/xUr
	3Xmj09YmhNb26JO6kUVR0UDBt8mBiCnZwpBJDGS9GmZxSytp5djNqrsrq4U4DYC11lFMN3ZSXxkdp
	rf0Dn0fIloCYaBDsY1OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZAF-000532-JE; Fri, 15 Nov 2019 10:49:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZAB-000519-TL
 for linux-mediatek@lists.infradead.org; Fri, 15 Nov 2019 10:49:17 +0000
X-UUID: 25d576396fbb4a0daf6fceb0f3f5ce1e-20191115
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=UJC0QT8V45t3bRkaTdx+IHCjbne0esSFJzaWyNrJbow=; 
 b=D3v5i7uK17DFLuBbUuN0yaIofOsGVafJ3vIbZGcCiZyrp1B6kkiNWvyeFvuvfBx0KQvC3XH47kJgi5Idug74JUapv4BeNE5UENkDEvDpKIqYbBnk+DWFUPNJ0pw0Q9bqrb/Tvs+fJgz+jn2v54yzofzPiywr6mLkd5hDx8jBKlo=;
X-UUID: 25d576396fbb4a0daf6fceb0f3f5ce1e-20191115
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <eason.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 590683712; Fri, 15 Nov 2019 02:49:12 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 15 Nov 2019 02:48:50 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 15 Nov 2019 18:48:48 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 15 Nov 2019 18:48:48 +0800
From: Eason Yen <eason.yen@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH v2 2/2] ASoC: mediatek: common: refine hw_params and hw_prepare
Date: Fri, 15 Nov 2019 18:48:46 +0800
Message-ID: <1573814926-15805-3-git-send-email-eason.yen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1573814926-15805-1-git-send-email-eason.yen@mediatek.com>
References: <1573814926-15805-1-git-send-email-eason.yen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8796FA556844960016BAC474548597455083BAB0D0358D651D838604EE6AF08C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_024915_953058_1D2BAD47 
X-CRM114-Status: GOOD (  11.06  )
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

Refine mtk_afe_fe_hw_params and mtk_afe_fe_prepare by
these helpers.
- mtk_memif_set_enable
- mtk_memif_set_disable
- mtk_memif_set_addr
- mtk_memif_set_channel
- mtk_memif_set_rate
- mtk_memif_set_rate_substream
- mtk_memif_set_format
- mtk_memif_set_pbuf_size

Signed-off-by: Eason Yen <eason.yen@mediatek.com>
---
 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 143 ++++++++++++++++-------------
 1 file changed, 77 insertions(+), 66 deletions(-)

diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.c b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
index 309dc1e..e761cb6 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.c
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
@@ -6,11 +6,13 @@
  * Author: Garlic Tseng <garlic.tseng@mediatek.com>
  */
 
+#include <linux/io.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <sound/soc.h>
 #include "mtk-afe-platform-driver.h"
+#include <sound/pcm_params.h>
 #include "mtk-afe-fe-dai.h"
 #include "mtk-base-afe.h"
 
@@ -120,50 +122,64 @@ int mtk_afe_fe_hw_params(struct snd_pcm_substream *substream,
 {
 	struct snd_soc_pcm_runtime *rtd = substream->private_data;
 	struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
-	struct mtk_base_afe_memif *memif = &afe->memif[rtd->cpu_dai->id];
-	int msb_at_bit33 = 0;
-	int ret, fs = 0;
+	int id = rtd->cpu_dai->id;
+	struct mtk_base_afe_memif *memif = &afe->memif[id];
+	int ret;
+	unsigned int channels = params_channels(params);
+	unsigned int rate = params_rate(params);
+	snd_pcm_format_t format = params_format(params);
 
 	ret = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(params));
 	if (ret < 0)
 		return ret;
 
-	msb_at_bit33 = upper_32_bits(substream->runtime->dma_addr) ? 1 : 0;
-	memif->phys_buf_addr = lower_32_bits(substream->runtime->dma_addr);
-	memif->buffer_size = substream->runtime->dma_bytes;
-
-	/* start */
-	mtk_regmap_write(afe->regmap, memif->data->reg_ofs_base,
-			 memif->phys_buf_addr);
-	/* end */
-	mtk_regmap_write(afe->regmap,
-			 memif->data->reg_ofs_base + AFE_BASE_END_OFFSET,
-			 memif->phys_buf_addr + memif->buffer_size - 1);
-
-	/* set MSB to 33-bit */
-	mtk_regmap_update_bits(afe->regmap, memif->data->msb_reg,
-			       1, msb_at_bit33, memif->data->msb_shift);
+	if (afe->request_dram_resource)
+		afe->request_dram_resource(afe->dev);
+
+	dev_dbg(afe->dev, "%s(), %s, ch %d, rate %d, fmt %d, dma_addr %pad, dma_area %p, dma_bytes 0x%zx\n",
+		__func__, memif->data->name,
+		channels, rate, format,
+		&substream->runtime->dma_addr,
+		substream->runtime->dma_area,
+		substream->runtime->dma_bytes);
+
+	memset_io(substream->runtime->dma_area, 0,
+		  substream->runtime->dma_bytes);
+
+	/* set addr */
+	ret = mtk_memif_set_addr(afe, id,
+				 substream->runtime->dma_area,
+				 substream->runtime->dma_addr,
+				 substream->runtime->dma_bytes);
+	if (ret) {
+		dev_err(afe->dev, "%s(), error, id %d, set addr, ret %d\n",
+			__func__, id, ret);
+		return ret;
+	}
 
 	/* set channel */
-	if (memif->data->mono_shift >= 0) {
-		unsigned int mono = (params_channels(params) == 1) ? 1 : 0;
-
-		mtk_regmap_update_bits(afe->regmap, memif->data->mono_reg,
-				       1, mono, memif->data->mono_shift);
+	ret = mtk_memif_set_channel(afe, id, channels);
+	if (ret) {
+		dev_err(afe->dev, "%s(), error, id %d, set channel %d, ret %d\n",
+			__func__, id, channels, ret);
+		return ret;
 	}
 
 	/* set rate */
-	if (memif->data->fs_shift < 0)
-		return 0;
-
-	fs = afe->memif_fs(substream, params_rate(params));
-
-	if (fs < 0)
-		return -EINVAL;
+	ret = mtk_memif_set_rate_substream(substream, id, rate);
+	if (ret) {
+		dev_err(afe->dev, "%s(), error, id %d, set rate %d, ret %d\n",
+			__func__, id, rate, ret);
+		return ret;
+	}
 
-	mtk_regmap_update_bits(afe->regmap, memif->data->fs_reg,
-			       memif->data->fs_maskbit, fs,
-			       memif->data->fs_shift);
+	/* set format */
+	ret = mtk_memif_set_format(afe, id, format);
+	if (ret) {
+		dev_err(afe->dev, "%s(), error, id %d, set format %d, ret %d\n",
+			__func__, id, format, ret);
+		return ret;
+	}
 
 	return 0;
 }
@@ -172,6 +188,11 @@ int mtk_afe_fe_hw_params(struct snd_pcm_substream *substream,
 int mtk_afe_fe_hw_free(struct snd_pcm_substream *substream,
 		       struct snd_soc_dai *dai)
 {
+	struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
+
+	if (afe->release_dram_resource)
+		afe->release_dram_resource(afe->dev);
+
 	return snd_pcm_lib_free_pages(substream);
 }
 EXPORT_SYMBOL_GPL(mtk_afe_fe_hw_free);
@@ -182,20 +203,25 @@ int mtk_afe_fe_trigger(struct snd_pcm_substream *substream, int cmd,
 	struct snd_soc_pcm_runtime *rtd = substream->private_data;
 	struct snd_pcm_runtime * const runtime = substream->runtime;
 	struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
-	struct mtk_base_afe_memif *memif = &afe->memif[rtd->cpu_dai->id];
+	int id = rtd->cpu_dai->id;
+	struct mtk_base_afe_memif *memif = &afe->memif[id];
 	struct mtk_base_afe_irq *irqs = &afe->irqs[memif->irq_usage];
 	const struct mtk_base_irq_data *irq_data = irqs->irq_data;
 	unsigned int counter = runtime->period_size;
 	int fs;
+	int ret;
 
 	dev_dbg(afe->dev, "%s %s cmd=%d\n", __func__, memif->data->name, cmd);
 
 	switch (cmd) {
 	case SNDRV_PCM_TRIGGER_START:
 	case SNDRV_PCM_TRIGGER_RESUME:
-		mtk_regmap_update_bits(afe->regmap,
-				       memif->data->enable_reg,
-				       1, 1, memif->data->enable_shift);
+		ret = mtk_memif_set_enable(afe, id);
+		if (ret) {
+			dev_err(afe->dev, "%s(), error, id %d, memif enable, ret %d\n",
+				__func__, id, ret);
+			return ret;
+		}
 
 		/* set irq counter */
 		mtk_regmap_update_bits(afe->regmap, irq_data->irq_cnt_reg,
@@ -219,15 +245,19 @@ int mtk_afe_fe_trigger(struct snd_pcm_substream *substream, int cmd,
 		return 0;
 	case SNDRV_PCM_TRIGGER_STOP:
 	case SNDRV_PCM_TRIGGER_SUSPEND:
-		mtk_regmap_update_bits(afe->regmap, memif->data->enable_reg,
-				       1, 0, memif->data->enable_shift);
+		ret = mtk_memif_set_disable(afe, id);
+		if (ret) {
+			dev_err(afe->dev, "%s(), error, id %d, memif enable, ret %d\n",
+				__func__, id, ret);
+		}
+
 		/* disable interrupt */
 		mtk_regmap_update_bits(afe->regmap, irq_data->irq_en_reg,
 				       1, 0, irq_data->irq_en_shift);
 		/* and clear pending IRQ */
 		mtk_regmap_write(afe->regmap, irq_data->irq_clr_reg,
 				 1 << irq_data->irq_clr_shift);
-		return 0;
+		return ret;
 	default:
 		return -EINVAL;
 	}
@@ -239,34 +269,15 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 {
 	struct snd_soc_pcm_runtime *rtd  = substream->private_data;
 	struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
-	struct mtk_base_afe_memif *memif = &afe->memif[rtd->cpu_dai->id];
-	int hd_audio = 0;
-	int hd_align = 0;
+	int id = rtd->cpu_dai->id;
+	int pbuf_size;
 
-	/* set hd mode */
-	switch (substream->runtime->format) {
-	case SNDRV_PCM_FORMAT_S16_LE:
-		hd_audio = 0;
-		break;
-	case SNDRV_PCM_FORMAT_S32_LE:
-		hd_audio = 1;
-		hd_align = 1;
-		break;
-	case SNDRV_PCM_FORMAT_S24_LE:
-		hd_audio = 1;
-		break;
-	default:
-		dev_err(afe->dev, "%s() error: unsupported format %d\n",
-			__func__, substream->runtime->format);
-		break;
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		if (afe->get_memif_pbuf_size) {
+			pbuf_size = afe->get_memif_pbuf_size(substream);
+			mtk_memif_set_pbuf_size(afe, id, pbuf_size);
+		}
 	}
-
-	mtk_regmap_update_bits(afe->regmap, memif->data->hd_reg,
-			       1, hd_audio, memif->data->hd_shift);
-
-	mtk_regmap_update_bits(afe->regmap, memif->data->hd_align_reg,
-			       1, hd_align, memif->data->hd_align_mshift);
-
 	return 0;
 }
 EXPORT_SYMBOL_GPL(mtk_afe_fe_prepare);
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
