Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33C0A02C0
	for <lists+linux-mediatek@lfdr.de>; Wed, 28 Aug 2019 15:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=KyrgOJO2sYXng1PAQDcB17aNY4LGttm+Vv3cdmaWWvU=; b=pjR
	m/pSjo8dmuabe2XeNEtVP/cVGbJfpQhFPuFbkJtQKNwyDsNMYO+9mGUCzRkamGxhxjBJT2S/5isQF
	8vYCZffXy08MFhwAD/h3TjQrXfk0g3vuKmxmxfVAwVwB7a2DBQIOYNnGbsea6axw9xUU2whrW9WlO
	aRLru92IHHOOWoH7rkV+VKB4yWNbekLZ2535HWIeVjNuz4SpqiVYKCpjFN+ZZeDaSamqsyjKKZYHg
	pwCD4RWKM/RfP3M9+FR7K59IrTQUEZicmXRbVer6g5UfDcpUdZdjvHP82eTRphEFfxDoI/AlKwMHl
	FjPMUwOa0tIHRHF1qOdc+olPOCB72yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xlI-00086H-HQ; Wed, 28 Aug 2019 13:13:20 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xlD-000851-Mv
 for linux-mediatek@lists.infradead.org; Wed, 28 Aug 2019 13:13:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=13ObEEl8VDMyos+NUV/AyV+AlKXI7DoGx7jehiBz3sw=; b=RVaihFrtxfws
 UF3WPPFenHMjvftPZ6kFSMxbF1DwiRlczS41BkgWicHWBvfDFnBEJrIgwSaHFrMZIHM+EOhQ/upXP
 qJSkc5/sNcncNRjxTP16W1IOq74EW9B1d1/d4G9P4upUR3Urw+Gqgr1CnSQ17m8lEjjXfx35eUn8m
 GaJfo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i2xl5-0004Gl-Km; Wed, 28 Aug 2019 13:13:07 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 108A02742C8E; Wed, 28 Aug 2019 14:13:07 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Applied "ASoC: mediatek: mt8183: fix tdm out data is valid on rising
 edge" to the asoc tree
In-Reply-To: <1566621445-26989-4-git-send-email-jiaxin.yu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190828131307.108A02742C8E@ypsilon.sirena.org.uk>
Date: Wed, 28 Aug 2019 14:13:07 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_061315_747508_019E63A5 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

   ASoC: mediatek: mt8183: fix tdm out data is valid on rising edge

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4

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

From 2c650fd5a53beace2e7507f478562f0dd1885b89 Mon Sep 17 00:00:00 2001
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
Date: Sat, 24 Aug 2019 12:37:25 +0800
Subject: [PATCH] ASoC: mediatek: mt8183: fix tdm out data is valid on rising
 edge

This patch correct tdm out bck inverse register to AUDIO_TOP_CON3[3].

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
Link: https://lore.kernel.org/r/1566621445-26989-4-git-send-email-jiaxin.yu@mediatek.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/mt8183/mt8183-dai-tdm.c | 4 +++-
 sound/soc/mediatek/mt8183/mt8183-reg.h     | 8 +++++---
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/sound/soc/mediatek/mt8183/mt8183-dai-tdm.c b/sound/soc/mediatek/mt8183/mt8183-dai-tdm.c
index d34cabdbf889..0d69cf440407 100644
--- a/sound/soc/mediatek/mt8183/mt8183-dai-tdm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-dai-tdm.c
@@ -505,7 +505,9 @@ static int mtk_dai_tdm_hw_params(struct snd_pcm_substream *substream,
 
 	/* set tdm */
 	if (tdm_priv->bck_invert)
-		tdm_con |= 1 << BCK_INVERSE_SFT;
+		regmap_update_bits(afe->regmap, AUDIO_TOP_CON3,
+				   BCK_INVERSE_MASK_SFT,
+				   0x1 << BCK_INVERSE_SFT);
 
 	if (tdm_priv->lck_invert)
 		tdm_con |= 1 << LRCK_INVERSE_SFT;
diff --git a/sound/soc/mediatek/mt8183/mt8183-reg.h b/sound/soc/mediatek/mt8183/mt8183-reg.h
index e0482f2826da..e544a09e1913 100644
--- a/sound/soc/mediatek/mt8183/mt8183-reg.h
+++ b/sound/soc/mediatek/mt8183/mt8183-reg.h
@@ -413,6 +413,11 @@
 #define AFE_MAX_REGISTER AFE_GENERAL2_ASRC_2CH_CON13
 #define AFE_IRQ_STATUS_BITS 0x1fff
 
+/* AUDIO_TOP_CON3 */
+#define BCK_INVERSE_SFT                              3
+#define BCK_INVERSE_MASK                             0x1
+#define BCK_INVERSE_MASK_SFT                         (0x1 << 3)
+
 /* AFE_DAC_CON0 */
 #define AWB2_ON_SFT                                   29
 #define AWB2_ON_MASK                                  0x1
@@ -1596,9 +1601,6 @@
 #define TDM_EN_SFT                                    0
 #define TDM_EN_MASK                                   0x1
 #define TDM_EN_MASK_SFT                               (0x1 << 0)
-#define BCK_INVERSE_SFT                               1
-#define BCK_INVERSE_MASK                              0x1
-#define BCK_INVERSE_MASK_SFT                          (0x1 << 1)
 #define LRCK_INVERSE_SFT                              2
 #define LRCK_INVERSE_MASK                             0x1
 #define LRCK_INVERSE_MASK_SFT                         (0x1 << 2)
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
