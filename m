Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 247149F39B
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 21:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=4Q5Dg03F1lM93D2gUdAfwgaYihFxuFAyR0rlfAkQANE=; b=BLd
	+LSOB5IZ6eXGGPzNsusNLj0XfIWcEKWDpnZfOlO8YeSkaw7DsotMF9phmSGf9HMMBM7mW8Ivk/mrb
	/pJjpTlZVY/w8Z7vdY8nC97uLmvHonFNmrIICV2Zp+XDbcGxS0bSJRi23OZ2JSJ2Sn/0X1qfbeFtP
	uH+uphdNNdz695AUzOn0ezas76QyxKGfeuDQXus8tlm3zu7wdpX2akEizREyYAbSyMbIwj7U9QIEN
	dUlBZ4BXd99oXGn+uoDX/NCMPPfUn+rQiRNijn0Fzvh8uCLAiaod8Axq6v4VSnB8rD8p+a6v/RaA6
	JQCg5MV5eED0kA6gB95vNC2Jxt6gB2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2hbK-0006pV-7r; Tue, 27 Aug 2019 19:57:58 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2hbG-0006p5-5B
 for linux-mediatek@lists.infradead.org; Tue, 27 Aug 2019 19:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=arR3yoBrsBx/ai1f3a6H8aBm/EqlAfpZt2z0CtrLW3U=; b=PknI/goaU39B
 FgqMyb+3b9KP5K3eMT69OcEx7NdpSz6YsSqTqxdWmSk0bHxU3zmV7yMhTL5AMNVCCGrvI7WI2KzbZ
 ioUc3poNoIATSSZE8R4fn5VJLX5TQNRERByFVrBCX+zXrSEeV9P/ssIADOeVWe2DepQwI/iX9fCyo
 XIqCk=;
Received: from 188.28.18.107.threembb.co.uk ([188.28.18.107]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i2hb9-0001BT-5m; Tue, 27 Aug 2019 19:57:47 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 64E50D02CEA; Tue, 27 Aug 2019 20:57:44 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Applied "ASoC: mediatek: mt8183: fix tdm out data align issue" to the
 asoc tree
In-Reply-To: <1566622726-27113-1-git-send-email-jiaxin.yu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190827195744.64E50D02CEA@fitzroy.sirena.org.uk>
Date: Tue, 27 Aug 2019 20:57:44 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_125754_203043_7432D18E 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 perex@perex.cz, tzungbi@google.com, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patch

   ASoC: mediatek: mt8183: fix tdm out data align issue

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

From d2ac1fe0342ce2b44621f60d053800e2d94f1d21 Mon Sep 17 00:00:00 2001
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
Date: Sat, 24 Aug 2019 12:58:46 +0800
Subject: [PATCH] ASoC: mediatek: mt8183: fix tdm out data align issue

Mt8183 tdm out support S16_LE/S24_LE/S32_LE formats. When output S32_LE,
we need set hd_align so that memif can output MSB 24bits. When output
S24_LE, we need reset hd_align so that memif can output LSB 24bits.

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
Link: https://lore.kernel.org/r/1566622726-27113-1-git-send-email-jiaxin.yu@mediatek.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.c b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
index d16563408465..10ea4fdbeb1e 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.c
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
@@ -241,7 +241,7 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 	struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 	struct mtk_base_afe_memif *memif = &afe->memif[rtd->cpu_dai->id];
 	int hd_audio = 0;
-	int hd_align = 1;
+	int hd_align = 0;
 
 	/* set hd mode */
 	switch (substream->runtime->format) {
@@ -254,7 +254,6 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 		break;
 	case SNDRV_PCM_FORMAT_S24_LE:
 		hd_audio = 1;
-		hd_align = 0;
 		break;
 	default:
 		dev_err(afe->dev, "%s() error: unsupported format %d\n",
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
