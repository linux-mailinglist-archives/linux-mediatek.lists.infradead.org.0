Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5972118B3
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 May 2019 14:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUdjAbdTENOB9TB+EL7qbYv45lpbveNcfWeXeTQMw4Q=; b=kltmMAjtdEddtu
	QN5oOxqwTtTFGHjfHlIr4PDPoaKMATkgH8EBzWJPdr4hI9um4mb9BtAJGn8r0AuFQgJUDLC7tZBnZ
	XKHo+WHo53nCKvMaQEZFmfXD/vEq98puaJ/bFGeOXKrTtWUIzKZwwAj2oyd9/4DHH6+fD788FTglO
	2IZm6ZwUnzCiokNpbyn0359VwtXHka/ILjMp7tXNv3GKgTe1IX6ewGimnMh1Ynan61YsZo3xk6SuX
	WCVbgzt2wYi3l+UQwuckPC+2hI6ewMTRefF8ZkEBA3VxsoqO86e8P0k9qR21OiEfLU1WzWU7AOvwm
	JRyCGMq3P6O37sLTd/+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAYS-00022M-SA; Thu, 02 May 2019 12:11:12 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAYD-0001m0-8C
 for linux-mediatek@lists.infradead.org; Thu, 02 May 2019 12:11:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id y2so2144116wmi.5
 for <linux-mediatek@lists.infradead.org>; Thu, 02 May 2019 05:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QoGRmL9hNOPY+eFMV8Hy2PltfqYDajcTCyiSgjQt9SQ=;
 b=xHqWaiJWsWUcZhoNbhOVBcJzfg9qdsYw5E2q3LjZu9iNGHbzEyPhLzBGVHZA6jT6KV
 6Rtgs1XdKNUB6RCaHd11VIf1KnAUz5OPdkXzXacvy50eQe18yccKyj01+YzaridlzwTR
 j7yeJj/hnwUDO0jx0ea4gdQcYrJ/KAoQO2Pjnva1wD9MOKFXhuutHa5Uu3hzUkodrTdz
 a9HxFjfRBg7jiXHRRJbabYEkCNeAHDm5+AsVkCyLloIF6V/QRsR00pUUqrvbtFiYGAmS
 i4i+68mRlvdS3nrxG4lfLl72/v6dL1ev8BRaeVLfeeNqIkXwtORNEzNtNF0Gh2UQobnY
 +lGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QoGRmL9hNOPY+eFMV8Hy2PltfqYDajcTCyiSgjQt9SQ=;
 b=rNzPrW34C9PmVqRf95l6m5NtCVTJAE0BjuNji8DFeNwX1CUCrxrLuD0zV3a+oe6rS0
 C6US6qLZocJZA5meshKsummOd9Z7UpYVSb5Q1jHB2ghReUCQCfnotj1HUzfPJDDDKxL8
 H/ae8TRM1bPYPJ8bKN5ZagO9YpSkk4yBAvK9NoMuBO4+DgrFrVjR5ymVvJS+vJrjhwgZ
 RqmQSibz9EHMuuQSpAuzNtzdJttxajIqpWjOa8pQtiloaVRZclfiIO7EG8jw8hsG8Kgf
 GswqVULwFr3WcMTGav7GcotaKtileDb+PYmSmvKp+rLIzNyRTS6pxNUeqGwHCpEbgQEy
 GSmg==
X-Gm-Message-State: APjAAAUfS8zwAIqeWO+4SJERjauD+4qi60R1HFm5t08k3wm43xAqX/I+
 08BQi3Q06DsJdFP2cOvlngqMHw==
X-Google-Smtp-Source: APXvYqzfD7lY9qYA6s3UXeqowSYnQbSJRYuX0+C/KKMF9ab6t31N4mkff3S6Ouo/4i4XI4ETpGxpDA==
X-Received: by 2002:a7b:c010:: with SMTP id c16mr2137167wmb.82.1556799054205; 
 Thu, 02 May 2019 05:10:54 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 05:10:53 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
 tiwai@suse.com, kaichieh.chuang@mediatek.com, shunli.wang@mediatek.com
Subject: [PATCH 1/5] ASoC: mediatek: make agent_disable,
 msb & hd fields optional
Date: Thu,  2 May 2019 14:10:37 +0200
Message-Id: <20190502121041.8045-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121041.8045-1-fparent@baylibre.com>
References: <20190502121041.8045-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051057_480149_E7B5C152 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Not every SoC have the following registers: agent_disable_reg,
msg_reg, and hd_reg. Make them optional in order to allow more
SoC to use the common DAI FE code.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 23 +++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.c b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
index cf4978be062f..f39f5d8c4244 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.c
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
@@ -47,10 +47,13 @@ int mtk_afe_fe_startup(struct snd_pcm_substream *substream,
 
 	snd_pcm_hw_constraint_step(substream->runtime, 0,
 				   SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 16);
+
 	/* enable agent */
-	mtk_regmap_update_bits(afe->regmap, memif->data->agent_disable_reg,
-			       1 << memif->data->agent_disable_shift,
-			       0 << memif->data->agent_disable_shift);
+	if (memif->data->agent_disable_shift >= 0)
+		mtk_regmap_update_bits(afe->regmap,
+				       memif->data->agent_disable_reg,
+				       1 << memif->data->agent_disable_shift,
+				       0 << memif->data->agent_disable_shift);
 
 	snd_soc_set_runtime_hwparams(substream, mtk_afe_hardware);
 
@@ -143,9 +146,10 @@ int mtk_afe_fe_hw_params(struct snd_pcm_substream *substream,
 			 memif->phys_buf_addr + memif->buffer_size - 1);
 
 	/* set MSB to 33-bit */
-	mtk_regmap_update_bits(afe->regmap, memif->data->msb_reg,
-			       1 << memif->data->msb_shift,
-			       msb_at_bit33 << memif->data->msb_shift);
+	if (memif->data->msb_shift >= 0)
+		mtk_regmap_update_bits(afe->regmap, memif->data->msb_reg,
+				       1 << memif->data->msb_shift,
+				       msb_at_bit33 << memif->data->msb_shift);
 
 	/* set channel */
 	if (memif->data->mono_shift >= 0) {
@@ -269,9 +273,10 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 		break;
 	}
 
-	mtk_regmap_update_bits(afe->regmap, memif->data->hd_reg,
-			       1 << memif->data->hd_shift,
-			       hd_audio << memif->data->hd_shift);
+	if (memif->data->hd_shift >= 0)
+		mtk_regmap_update_bits(afe->regmap, memif->data->hd_reg,
+				       1 << memif->data->hd_shift,
+				       hd_audio << memif->data->hd_shift);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
