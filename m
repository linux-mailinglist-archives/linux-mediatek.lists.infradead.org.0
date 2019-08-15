Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 327C98F1B8
	for <lists+linux-mediatek@lfdr.de>; Thu, 15 Aug 2019 19:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=nvevbfKIKy8pz0516bLyag0DAo20qX95sNTgA7YVx+o=; b=qNy
	xZz6y9gf/dBpmoJNL+rVd1YYCfMfenFR22yuLFYC+uqEeVCBosHvWjsfAAQogXzYF381Lxvykf10p
	AX5d+icR1/d1UiyxiF1YZR46j4Wny/X5ryjxKJx0xTbWeMkkLsNX1J8ga7wu/ZIMZalK8GpJ1ntlP
	NMF2N9I5ZpmJQnb44kdXCz+OKAOVFn7/ERvgGNQdtvPHGASNxghG3tugo2/fYgrEr46FIL+dX0B1l
	SBNxQinOrT0m3Ah/EjcTgSNx40pzbIZMYe9iCmmpjLwUXm0T/wsDuyB5MH09W5+Az0V0TMMsWJomG
	kPOopqPrxgskXD8j+Zy5s6wcAISadxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJKx-00066v-5j; Thu, 15 Aug 2019 17:14:55 +0000
Received: from mail-ed1-f98.google.com ([209.85.208.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJKW-0005sB-9S
 for linux-mediatek@lists.infradead.org; Thu, 15 Aug 2019 17:14:35 +0000
Received: by mail-ed1-f98.google.com with SMTP id z51so2672980edz.13
 for <linux-mediatek@lists.infradead.org>; Thu, 15 Aug 2019 10:14:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=2ww6/ywSQxx+FgrrjZeNuFo6FDkJCG7XwL5PeJBApYo=;
 b=EYHFWo/VhjU95U72plNLkaki6ld4Emw3bVRN35I/B4jiHMlFrdRqm50B7adADP8Jxj
 v1Pa+CRajTz3KjTbkd6u/f/ajJmMb9DV9iVU9N4iutVX2FQ6dJgu8exX27mvNNK1hSEW
 WbJRtGj71nF/Lbz57MNKGV7zOXLiypw1vtFqpZi3VRZMrVENmKVEo/cFoQHA5KOUUvI1
 i7L7miUi3uOKrU5ujQSWFTEqhNOQnVZfSCCX1K22ej/KZnjfgQ3QamWlSvNgI9nU5Mpa
 JcvthTAVFeJbopAFz7IaJY5+ImdLlVvEmmQfIxOzyF57Em1br3Df9TshqCvV8IBR4DYc
 KXkA==
X-Gm-Message-State: APjAAAUbjWUo9mN4PuFCRdbTcYVEjT2fqudEOHrnMMjHhe7Jo2uHw9vO
 yhD7kiwA7vCntMsl9RbBxkwW9ombn+Fw95Pb22vg2vrBF2N5vCHpTVquSQ/Pj/q2ww==
X-Google-Smtp-Source: APXvYqx0U9ZCcYUC9eRM0DPks9F0HSMKXSk3Nh5ZEhg1Rg2rsLGzl8YhUIVKN2eZ5e8UAz7seGjHZbV8WmDJ
X-Received: by 2002:a17:906:b7c9:: with SMTP id
 fy9mr5281973ejb.237.1565889266689; 
 Thu, 15 Aug 2019 10:14:26 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id dt26sm13428ejb.51.2019.08.15.10.14.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 10:14:26 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hyJKU-000526-CF; Thu, 15 Aug 2019 17:14:26 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C800A2742B9E; Thu, 15 Aug 2019 18:14:25 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "ASoC: mediatek: mt8183-da7219-max98357: remove unused
 variable" to the asoc tree
In-Reply-To: <20190813143952.29232-1-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20190815171425.C800A2742B9E@ypsilon.sirena.org.uk>
Date: Thu, 15 Aug 2019 18:14:25 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101428_329544_882EBC6D 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.98 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.98 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, perex@perex.c, tiwai@suse.com,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patch

   ASoC: mediatek: mt8183-da7219-max98357: remove unused variable

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

From 57c3ed42f52cdc51f416c93b19708ef6ceb4a00b Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Tue, 13 Aug 2019 22:39:52 +0800
Subject: [PATCH] ASoC: mediatek: mt8183-da7219-max98357: remove unused
 variable

sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c:120:1: warning:
 mt8183_da7219_max98357_dapm_widgets defined but not used [-Wunused-const-variable=]
sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c:124:40: warning:
 mt8183_da7219_max98357_dapm_routes defined but not used [-Wunused-const-variable=]

They are never used, so can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Link: https://lore.kernel.org/r/20190813143952.29232-1-yuehaibing@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c b/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
index 2a6097174614..43f99e59a078 100644
--- a/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
@@ -116,15 +116,6 @@ static int mt8183_i2s_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
 	return 0;
 }
 
-static const struct snd_soc_dapm_widget
-mt8183_da7219_max98357_dapm_widgets[] = {
-	SND_SOC_DAPM_OUTPUT("IT6505_8CH"),
-};
-
-static const struct snd_soc_dapm_route mt8183_da7219_max98357_dapm_routes[] = {
-	{"IT6505_8CH", NULL, "TDM"},
-};
-
 /* FE */
 SND_SOC_DAILINK_DEFS(playback1,
 	DAILINK_COMP_ARRAY(COMP_CPU("DL1")),
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
