Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F407BFC9
	for <lists+linux-mediatek@lfdr.de>; Wed, 31 Jul 2019 13:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=89D3UlTABjkvnDqFOEGxA0pwxPfEMg7YonhiMPKEot0=; b=ufP
	s1NAqo9skH7Vq8EkXc1Eu6eqLQe5QX6R87dj9zI32+fCaQwVMaEyMDajIIXiZK6q7o09hH+xV59qt
	p+acxOpv0U7VdN/3OofE3Kd+i4dIIuSw10fPJ0IqTmzp9jEFeyUyyG7kWAd2Q40cuiF3vevYQ6Lj/
	AZJ2TTnYl/nhNXHIVTDH1qSWGwrmJor5bEf6m+3xenPbMWJ0W3Srl4wAupZcKicLxPTOEs8ESMBZD
	n3ZMi0zu6qiVx79T+0Kvohcu1xZymiMt7ensM79g0orspbvxkLSjpnqpAdpOBj/TIprVfkOl+ZZRs
	AA+0fAzb2A2s+3rcarlssp+52sfmdOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmpz-000586-R4; Wed, 31 Jul 2019 11:32:07 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmo8-0001h6-Mc; Wed, 31 Jul 2019 11:30:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Date:Message-Id:In-Reply-To:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cK1vz8+0xV+/8vIYWcrTtuW8y1HSMdiwgDBudDrZFN8=; b=cTCLdRlyBkBasXEwkgktE6NX8y
 TNVIkazF9LJxp+1yuP6mFecvrj31sR2DWWHtdInWTfcNEI171CZLlhxTc7pQXK4LzT/d7kaYLPNn4
 2g2+QpuExVo5B8hv4qfSy364JxjUZYK7FFI0ejflTGPaSFklRXZd1YyanTkQ4aaNKlHGaS5KqNXCr
 rS108C6TPVu3Jbc81y/HlDRqaiiv6jCHsgsYyReUmHccCpkSd7m7ezZRkzPm2RgFG0JZBsTXvEJqC
 kk5rqdh18a6xD6nPlLeP0PnZr1pz9gQbEhkq5oC694/bqI+NENmE1CoNstRXDQVzlIlEAkWO1oyB1
 B2ODC9qg==;
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmo2-0001NT-N3; Wed, 31 Jul 2019 11:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=cK1vz8+0xV+/8vIYWcrTtuW8y1HSMdiwgDBudDrZFN8=; b=ihT25jHUakqo
 m+HFL4SyxvJXKRT/G8kxavz5W8YywsONCdMYHWemT134FPdywioslbidwAvOZXyu5Cp1Pk19YCwzV
 GCgoTvjM12/rEEBRqdoOdLXc5gX2JeDPOAGij7d6dbwCN9eeAPZvKuX9YgMpE0tCc+sCFCi0lU0vv
 fH66s=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsmnf-0001lb-I1; Wed, 31 Jul 2019 11:29:43 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id EDB972742CC3; Wed, 31 Jul 2019 12:29:42 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "ASoC: sun8i-codec: use devm_platform_ioremap_resource() to
 simplify code" to the asoc tree
In-Reply-To: <20190727150738.54764-35-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20190731112942.EDB972742CC3@ypsilon.sirena.org.uk>
Date: Wed, 31 Jul 2019 12:29:42 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

   ASoC: sun8i-codec: use devm_platform_ioremap_resource() to simplify code

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

From 790b36578e23264ff05be2ba8466ebcf7d3db38a Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Sat, 27 Jul 2019 23:07:38 +0800
Subject: [PATCH] ASoC: sun8i-codec: use devm_platform_ioremap_resource() to
 simplify code

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Link: https://lore.kernel.org/r/20190727150738.54764-35-yuehaibing@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun8i-codec.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 0e0e8ebaa571..55798bc8eae2 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -533,7 +533,6 @@ static const struct regmap_config sun8i_codec_regmap_config = {
 
 static int sun8i_codec_probe(struct platform_device *pdev)
 {
-	struct resource *res_base;
 	struct sun8i_codec *scodec;
 	void __iomem *base;
 	int ret;
@@ -556,8 +555,7 @@ static int sun8i_codec_probe(struct platform_device *pdev)
 		return PTR_ERR(scodec->clk_bus);
 	}
 
-	res_base = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res_base);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base)) {
 		dev_err(&pdev->dev, "Failed to map the registers\n");
 		return PTR_ERR(base);
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
