Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81996171AE
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 08:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rup/wDbBTcoV2YlF8hAsy85+8+/YUrVD86W7Ru+xn3g=; b=N9n9pQrpJTwe7l
	UQJiEvrIXlJwdmyZIpUXDOuby8PdzeJYwuynhGJ2NghXvhjVq7gGO/Z1S0w2Bja9pMGYz/x9M1Gsy
	uhoFZ8Tb4IvVgq3qAjnNv0dKZnAFCJeKRL5YaJapus4qvkAYz0RaTcF88eA9XrEdVZkD4S9u/bsGz
	94Qjqec9zcNyqDTeB9ddHivycgWVDR55t1Lbq5CaZYFv0VgSz22jZYI/gZNjMoxSfmDa1JlvJGEAr
	NPPaK/2oRS75rTHXWW0qf7H3P9NstRc+qLPFLBmCwxdtQ24ewPSqjIPIKDkmJB1IhKflaoxQO6egd
	t/aACEk0XEF7TvT/synA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGAO-0001AQ-Sh; Wed, 08 May 2019 06:35:00 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOG9y-0000XV-Qg
 for linux-mediatek@lists.infradead.org; Wed, 08 May 2019 06:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1557297266;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=SsUTm1R7UUQ+bTJ7Pc64aIfy+AkoXx22RxCukswczwc=;
 b=BuGlw61gxGHsVWvujD7rWroVXcG4kd72UYlr6ScJk11jXUI6pTaqhWc+yjcUpPKStM
 EsGp54cnOdWlXeOF5E3dyV3F16tDiJH/OA0zuborLkmYQ265PCvYquL7XpXssje4x8xF
 e8TRZy6amZH+Toi2016+zrj6cDDGa7hxGVybIdjWpQcdAflxZfaRcw1QsmpDatMzE2/L
 hwvJ4bUP46bfFrRGqdTYafSGVU21xXjHdlXTBzAZRMex1qL/lUqG/fWuGX76Jq/u+BeC
 3NWi1qESQ271rPjCf8xbxKUajXJ1B0wmr5ZDgH+SVYYiSu7eUD7TtLomEjD+T/sMSaIG
 GviA==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPbIvSbR/w="
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 44.18 DYNA|AUTH)
 with ESMTPSA id R0373fv486YM8ZU
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 8 May 2019 08:34:22 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: neal.liu@mediatek.com
Subject: Re: [PATCH 3/3] hwrng: add mt67xx-rng driver
Date: Wed, 08 May 2019 08:34:22 +0200
Message-ID: <12193108.aNnqf5ydOJ@tauon.chronox.de>
In-Reply-To: <1557287937-2410-4-git-send-email-neal.liu@mediatek.com>
References: <1557287937-2410-1-git-send-email-neal.liu@mediatek.com>
 <1557287937-2410-4-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_233435_459814_ABF30A0B 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 mpm@selenic.com, matthias.bgg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Am Mittwoch, 8. Mai 2019, 05:58:57 CEST schrieb neal.liu@mediatek.com:

Hi liu,

> From: Neal Liu <neal.liu@mediatek.com>
> 
> For Mediatek SoCs on ARMv8 with TrustZone enabled, peripherals like
> entropy sources is not accessible from normal world (linux) and
> rather accessible from secure world (ATF/TEE) only. This driver aims
> to provide a generic interface to ATF rng service.
> 
> Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> ---
>  drivers/char/hw_random/Kconfig      |   16 ++++++
>  drivers/char/hw_random/Makefile     |    1 +
>  drivers/char/hw_random/mt67xx-rng.c |  104
> +++++++++++++++++++++++++++++++++++ 3 files changed, 121 insertions(+)
>  create mode 100644 drivers/char/hw_random/mt67xx-rng.c
> 
> diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
> index 25a7d8f..98751d3 100644
> --- a/drivers/char/hw_random/Kconfig
> +++ b/drivers/char/hw_random/Kconfig
> @@ -398,6 +398,22 @@ config HW_RANDOM_MTK
> 
>  	  If unsure, say Y.
> 
> +config HW_RANDOM_MT67XX
> +	tristate "Mediatek MT67XX Random Number Generator support"
> +	depends on HW_RANDOM
> +	depends on ARCH_MEDIATEK || COMPILE_TEST
> +	default HW_RANDOM
> +	help
> +	  This driver provides kernel-side support for the Random Number
> +	  Generator hardware found on Mediatek MT67xx SoCs. The difference
> +	  with mtk-rng is the Random Number Generator hardware is secure
> +	  access only.
> +
> +	  To compile this driver as a module, choose M here. the
> +	  module will be called mt67xx-rng.
> +
> +	  If unsure, say Y.
> +
>  config HW_RANDOM_S390
>  	tristate "S390 True Random Number Generator support"
>  	depends on S390
> diff --git a/drivers/char/hw_random/Makefile
> b/drivers/char/hw_random/Makefile index 7c9ef4a..4be95ab 100644
> --- a/drivers/char/hw_random/Makefile
> +++ b/drivers/char/hw_random/Makefile
> @@ -36,6 +36,7 @@ obj-$(CONFIG_HW_RANDOM_PIC32) += pic32-rng.o
>  obj-$(CONFIG_HW_RANDOM_MESON) += meson-rng.o
>  obj-$(CONFIG_HW_RANDOM_CAVIUM) += cavium-rng.o cavium-rng-vf.o
>  obj-$(CONFIG_HW_RANDOM_MTK)	+= mtk-rng.o
> +obj-$(CONFIG_HW_RANDOM_MT67XX) += mt67xx-rng.o
>  obj-$(CONFIG_HW_RANDOM_S390) += s390-trng.o
>  obj-$(CONFIG_HW_RANDOM_KEYSTONE) += ks-sa-rng.o
>  obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
> diff --git a/drivers/char/hw_random/mt67xx-rng.c
> b/drivers/char/hw_random/mt67xx-rng.c new file mode 100644
> index 0000000..e70cbbe
> --- /dev/null
> +++ b/drivers/char/hw_random/mt67xx-rng.c
> @@ -0,0 +1,104 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 MediaTek Inc.
> + */
> +
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/hw_random.h>
> +#include <linux/of.h>
> +#include <linux/arm-smccc.h>
> +#include <linux/soc/mediatek/mtk_sip_svc.h>
> +
> +#define PFX			KBUILD_MODNAME ": "
> +#define MT67XX_RNG_MAGIC	0x74726e67
> +#define SMC_RET_NUM		4
> +
> +struct mt67xx_rng_priv {
> +	struct hwrng rng;
> +};
> +
> +
> +static void __rng_sec_read(uint32_t *val)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_smc(MTK_SIP_KERNEL_GET_RND,
> +		      MT67XX_RNG_MAGIC, 0, 0, 0, 0, 0, 0, &res);
> +
> +	val[0] = res.a0;
> +	val[1] = res.a1;
> +	val[2] = res.a2;
> +	val[3] = res.a3;
> +}
> +
> +static int mt67xx_rng_read(struct hwrng *rng, void *buf, size_t max, bool
> wait) +{
> +	int i, retval = 0;
> +	uint32_t val[4] = {0};
> +	size_t get_rnd_size = sizeof(u32) * SMC_RET_NUM;
> +
> +	if (!buf) {
> +		pr_err("%s, buf is NULL\n", __func__);
> +		return -EFAULT;
> +	}
> +
> +	while (max >= get_rnd_size) {
> +		__rng_sec_read(val);
> +
> +		for (i = 0; i < SMC_RET_NUM; i++) {
> +			*(u32 *)buf = val[i];

I am not sure this cast is right - or how is it guaranteed that buf is word-
aligned?

> +			buf += sizeof(u32);
> +		}
> +
> +		retval += get_rnd_size;
> +		max -= get_rnd_size;
> +	}
> +
> +	return retval;
> +}
> +
> +static int mt67xx_rng_probe(struct platform_device *pdev)
> +{
> +	int ret;
> +	struct mt67xx_rng_priv *priv;
> +
> +	pr_info(PFX "driver registered\n");
> +	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->rng.name = KBUILD_MODNAME;
> +	priv->rng.read = mt67xx_rng_read;
> +	priv->rng.priv = (unsigned long)&pdev->dev;
> +	priv->rng.quality = 900;
> +
> +	ret = devm_hwrng_register(&pdev->dev, &priv->rng);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to register rng device: %d\n", 
ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id mt67xx_rng_match[] = {
> +	{ .compatible = "mediatek,mt67xx-rng", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, mt67xx_rng_match);
> +
> +static struct platform_driver mt67xx_rng_driver = {
> +	.probe = mt67xx_rng_probe,
> +	.driver = {
> +		.name = KBUILD_MODNAME,
> +		.owner = THIS_MODULE,
> +		.of_match_table = mt67xx_rng_match,
> +	},
> +};
> +
> +module_platform_driver(mt67xx_rng_driver);
> +
> +MODULE_DESCRIPTION("Mediatek MT67XX Random Number Generator Driver");
> +MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
> +MODULE_LICENSE("GPL");



Ciao
Stephan



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
