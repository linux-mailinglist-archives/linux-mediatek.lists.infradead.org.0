Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774E920345
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 12:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=h8ZXsfxBI1D8Ut8PpI726KA78jI+J659QTGsiuoHS3g=; b=LFr
	EbtqDsXWsiEuYhpbl9LQmQ7Hu63Y0MAa4vg/wmcQ2O9i91PDk2YRFDbLWfbrweuLABaLwe4nBunxL
	eB9O/3/S7H1yJKDXjx5sKV4Y038G6Lq1HBWlcd91GU79oaAMDs77kMMSUtNB+AimobW08T77abQsh
	S0cyJqbswIIkE0HNv2agVeA0sr6MdY9NZAf8jVmk7L1lqNHD5aLTKFP0JAshCIrqYhmbq/yMv/H3q
	i2ce+ZhQ7M4jffMl2qyF2ib1dcQKMjCCpYrR1HFWcdeMoh9hsZ8KRg5ZRhE1RFH70cmOseNCuPs4X
	3avgC5Gqb1NyfjnDll40U7VeV43uBhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDS3-0006SB-0v; Thu, 16 May 2019 10:17:27 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDRz-0006Qe-5f
 for linux-mediatek@lists.infradead.org; Thu, 16 May 2019 10:17:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=oDBnrhZivGsdJVR9kCjrFKov0JC/wAnshgL0vB1Lk0c=; b=U/gmXu9m66oy
 rPIO016chld9Z5klq0B3sWRNk11EdcDjgfjhGAgk4Gi+HRW8rnKUuwBPxSlav0KoPqBGlJSBDNo1x
 1KRHEwowxrbyxjpUfAyiYO6lBUlgsK3dBt5/EOiXUjrdKcwSgQZ0doBVeUTYMV6Sr0RReURjMijN8
 G9lXc=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hRDRv-00062G-PK; Thu, 16 May 2019 10:17:19 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 3E67A1126D46; Thu, 16 May 2019 11:17:16 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Shunli Wang <shunli.wang@mediatek.com>
Subject: Applied "ASoC: Mediatek: add memory interface data align" to the asoc
 tree
In-Reply-To: <20190516095438.15759-2-shunli.wang@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190516101716.3E67A1126D46@debutante.sirena.org.uk>
Date: Thu, 16 May 2019 11:17:16 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_031723_353314_A9735ED1 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 shunli.wang@mediatek.com, kaichieh.chuang@mediatek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patch

   ASoC: Mediatek: add memory interface data align

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

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

From 1628fc3f47717fc3c8d9cd5fd6c7bc7d3796927d Mon Sep 17 00:00:00 2001
From: Shunli Wang <shunli.wang@mediatek.com>
Date: Thu, 16 May 2019 17:54:37 +0800
Subject: [PATCH] ASoC: Mediatek: add memory interface data align

This supports two data align settings. One is S32_LE and
other is S24_LE.

Signed-off-by: Shunli Wang <shunli.wang@mediatek.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
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
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
