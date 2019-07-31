Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D207BFC2
	for <lists+linux-mediatek@lfdr.de>; Wed, 31 Jul 2019 13:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=XwnjPzjCbpUAfrEubbzOI+Z6o405hvUD92itDxD2B38=; b=iyA
	WBLo8ualmkbw7QTWFHjzofIT9e5nvzc0+JvZGruhydrOkWrFYhuRhOHo6imTY0zyRML+4dMI+Am0V
	A9EpVQk7rE7cXxAIW81HhIyl6C1vqdxJnE3C1F+xMvG9LtVGEJ1mHokvMmZz1iqeOvnmzFMnxuvbC
	trNZhYqYNUg+cBpSnbGAXgNKIRiOjeP++B3H8KyGwPJJOjN+UuijzyY9G7jxH80jSPhJl+HHFbQx/
	axCwlJdw+tNepXg0pQi+kZaa+P9geVYPTKxnAJbMot4e5zYiMJG/qLjkuvo8COa6qRyuqaYCug9Ok
	0JcKLaeV+rH95WoiCnLJB3WMehPX3HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmpr-0004pZ-O7; Wed, 31 Jul 2019 11:31:59 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmnx-0000tR-FG; Wed, 31 Jul 2019 11:30:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=OIRXF4mfO7Br2fQ1fZb1Pc3EMeXv07m1hzXGN8o/l8M=; b=oIT1eWTI6Laz
 NiWBHy7aM7L2qx2KjSIkvQHTXoCsSyR3Iug5sP0l4soz0bKXywL3t6Y3QHGvQqSa7GPoasNGZ2QfM
 7UXKNlCSWIMxS3osy5d2NHbUVvLd9vKbg91OiL7QKw5jWJdgYYQX669MKB5p1n8SFy9+9unnLWIpK
 fQvYk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsmnc-0001l4-3x; Wed, 31 Jul 2019 11:29:40 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 9E6DE2742CC3; Wed, 31 Jul 2019 12:29:39 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "ASoC: psc-ac97: use devm_platform_ioremap_resource() to
 simplify code" to the asoc tree
In-Reply-To: <20190727150738.54764-24-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20190731112939.9E6DE2742CC3@ypsilon.sirena.org.uk>
Date: Wed, 31 Jul 2019 12:29:39 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_043001_637100_A0F3F657 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mripard@kernel.org, alsa-devel@alsa-project.org, olivier.moysan@st.com,
 Xiubo.Lee@gmail.com, linux-kernel@vger.kernel.org, paul@crapouillou.net,
 jcmvbkbc@gmail.com, thierry.reding@gmail.com, shawnguo@kernel.org,
 festevam@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 jbrunet@baylibre.com, f.fainelli@gmail.com, khilman@baylibre.com,
 tiwai@suse.com, michal.simek@xilinx.com, jonathanh@nvidia.com,
 Hulk Robot <hulkci@huawei.com>, wens@csie.org,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 s.hauer@pengutronix.de, matthias.bgg@gmail.com, linux-xtensa@linux-xtensa.org,
 alexandre.torgue@st.com, yamada.masahiro@socionext.com, rjui@broadcom.com,
 robert.jarzmik@free.fr, haojian.zhuang@gmail.com, nicoleotsuka@gmail.com,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 baohua@kernel.org, timur@kernel.org, sbranden@broadcom.com, eric@anholt.net,
 gregkh@linuxfoundation.org, arnaud.pouliquen@st.com, lgirdwood@gmail.com,
 wahrenst@gmx.net, kernel@pengutronix.de, linuxppc-dev@lists.ozlabs.org,
 daniel@zonque.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patch

   ASoC: psc-ac97: use devm_platform_ioremap_resource() to simplify code

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

From b1abe8780041d568ae07013a3592519fca855a1c Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Sat, 27 Jul 2019 23:07:27 +0800
Subject: [PATCH] ASoC: psc-ac97: use devm_platform_ioremap_resource() to
 simplify code

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Link: https://lore.kernel.org/r/20190727150738.54764-24-yuehaibing@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/au1x/psc-ac97.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/sound/soc/au1x/psc-ac97.c b/sound/soc/au1x/psc-ac97.c
index 21e5f6aed7f3..08bc04e2da2a 100644
--- a/sound/soc/au1x/psc-ac97.c
+++ b/sound/soc/au1x/psc-ac97.c
@@ -363,7 +363,7 @@ static const struct snd_soc_component_driver au1xpsc_ac97_component = {
 static int au1xpsc_ac97_drvprobe(struct platform_device *pdev)
 {
 	int ret;
-	struct resource *iores, *dmares;
+	struct resource *dmares;
 	unsigned long sel;
 	struct au1xpsc_audio_data *wd;
 
@@ -374,8 +374,7 @@ static int au1xpsc_ac97_drvprobe(struct platform_device *pdev)
 
 	mutex_init(&wd->lock);
 
-	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	wd->mmio = devm_ioremap_resource(&pdev->dev, iores);
+	wd->mmio = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(wd->mmio))
 		return PTR_ERR(wd->mmio);
 
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
