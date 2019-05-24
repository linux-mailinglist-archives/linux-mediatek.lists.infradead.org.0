Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AF929EBA
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 21:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1rCPe7OqAMaYd7YnhbeGgxSAnvlamf8Vy5LVcsLKm4=; b=ExIOo8YlEq0LX3
	pUAUp/oHwzykBAwdkn6l/oWSefOY1pt421iCudHDyg399Xy12620MV0cZPiMJzEMfB/rIAMyrARjG
	siLk1K0i4Y+i+XMfZKNdxrS8TeEt6XiS3UtPQkiN2oZwY6CFHqosUB4E7iUvH5xmLs7ssbSixiUH7
	ZCg6SKhwbTWnSk9vCHb9RcQ6a/PpXN9EEbcsF1dt7eGH38gDBt8pjz507DJX3G/FOlgR+gbDPMUKz
	z2qaRZ6caoNRUzmkAzpL3kV4ErU85pvTQHrzS0PaE/2eiIICk2jjPKOYnu/6VQw0lDVuSfWXQDoqC
	ldSXxTMcpLkm7Sm/8jsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUFQs-0003vz-1o; Fri, 24 May 2019 19:00:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUFQo-0003vW-LS
 for linux-mediatek@lists.infradead.org; Fri, 24 May 2019 19:00:44 +0000
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCA6521873
 for <linux-mediatek@lists.infradead.org>; Fri, 24 May 2019 19:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558724442;
 bh=/ZaQmYJyAh0FE742cOtNRwkB7BpxBSYHHWMM7zOEG3Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FDom/npiPw5rmbjHkU4rH5Kbfekcpn8+YKkwud92U8FDXFOsLMV7wNUzkBeOljBHV
 85GrHYr5DLyaN4Fmkt0Y3zF46hZm0x1XdEljd42JWPUIBtGAhgvnDqrB3/a4CkS5Lq
 RCOxgTOhFtXUKR+xhi8bPf1HTGyOXdVLQb3vWwTc=
Received: by mail-wr1-f49.google.com with SMTP id f8so11024925wrt.1
 for <linux-mediatek@lists.infradead.org>; Fri, 24 May 2019 12:00:41 -0700 (PDT)
X-Gm-Message-State: APjAAAWn9Lb1KxI5IJkqkg4blVSkTaoz7OjhqN1xdjdmL3AFr4FKkJnL
 NlPdg5uDIziHfhOk/LkwpsB55jJwewE1KIrfRY4=
X-Google-Smtp-Source: APXvYqxGTGOO0apOufhHysvU5jZ9SEYlbbfl+Xfpyz93kifoNCsWxAmJUSUhvDzUMNCKBJ5X54wQq0W3FAAJ0FHSz3M=
X-Received: by 2002:adf:f38a:: with SMTP id m10mr17533668wro.81.1558724440298; 
 Fri, 24 May 2019 12:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <1557287937-2410-1-git-send-email-neal.liu@mediatek.com>
 <1557287937-2410-4-git-send-email-neal.liu@mediatek.com>
In-Reply-To: <1557287937-2410-4-git-send-email-neal.liu@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Fri, 24 May 2019 12:00:28 -0700
X-Gmail-Original-Message-ID: <CAGp9LzoOVuUuzdLyWiqCb=vef_gX5QOg9Y4oxsh3qALX96-gRA@mail.gmail.com>
Message-ID: <CAGp9LzoOVuUuzdLyWiqCb=vef_gX5QOg9Y4oxsh3qALX96-gRA@mail.gmail.com>
Subject: Re: [PATCH 3/3] hwrng: add mt67xx-rng driver
To: neal.liu@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_120042_732017_2BF0B34A 
X-CRM114-Status: GOOD (  27.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, wsd_upstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-crypto@vger.kernel.org, mpm@selenic.com,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Neal,

On Tue, May 7, 2019 at 9:00 PM <neal.liu@mediatek.com> wrote:
>
> From: Neal Liu <neal.liu@mediatek.com>
>
> For Mediatek SoCs on ARMv8 with TrustZone enabled, peripherals like

MediaTek

> entropy sources is not accessible from normal world (linux) and
> rather accessible from secure world (ATF/TEE) only. This driver aims
> to provide a generic interface to ATF rng service.

Could we rename the mt67xx-rng.c to mtk-sec-rng.c? It seems all
MediaTek SoCs with ATF/TEE can reuse this driver, not be limited in
MT67xx.

>
> Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> ---
>  drivers/char/hw_random/Kconfig      |   16 ++++++
>  drivers/char/hw_random/Makefile     |    1 +
>  drivers/char/hw_random/mt67xx-rng.c |  104 +++++++++++++++++++++++++++++++++++
>  3 files changed, 121 insertions(+)
>  create mode 100644 drivers/char/hw_random/mt67xx-rng.c
>
> diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
> index 25a7d8f..98751d3 100644
> --- a/drivers/char/hw_random/Kconfig
> +++ b/drivers/char/hw_random/Kconfig
> @@ -398,6 +398,22 @@ config HW_RANDOM_MTK
>
>           If unsure, say Y.
>
> +config HW_RANDOM_MT67XX
> +       tristate "Mediatek MT67XX Random Number Generator support"

MediaTek Security

> +       depends on HW_RANDOM
> +       depends on ARCH_MEDIATEK || COMPILE_TEST
> +       default HW_RANDOM
> +       help
> +         This driver provides kernel-side support for the Random Number
> +         Generator hardware found on Mediatek MT67xx SoCs. The difference

MediaTek

> +         with mtk-rng is the Random Number Generator hardware is secure
> +         access only.
> +
> +         To compile this driver as a module, choose M here. the
> +         module will be called mt67xx-rng.
> +
> +         If unsure, say Y.
> +
>  config HW_RANDOM_S390
>         tristate "S390 True Random Number Generator support"
>         depends on S390
> diff --git a/drivers/char/hw_random/Makefile b/drivers/char/hw_random/Makefile
> index 7c9ef4a..4be95ab 100644
> --- a/drivers/char/hw_random/Makefile
> +++ b/drivers/char/hw_random/Makefile
> @@ -36,6 +36,7 @@ obj-$(CONFIG_HW_RANDOM_PIC32) += pic32-rng.o
>  obj-$(CONFIG_HW_RANDOM_MESON) += meson-rng.o
>  obj-$(CONFIG_HW_RANDOM_CAVIUM) += cavium-rng.o cavium-rng-vf.o
>  obj-$(CONFIG_HW_RANDOM_MTK)    += mtk-rng.o
> +obj-$(CONFIG_HW_RANDOM_MT67XX) += mt67xx-rng.o
>  obj-$(CONFIG_HW_RANDOM_S390) += s390-trng.o
>  obj-$(CONFIG_HW_RANDOM_KEYSTONE) += ks-sa-rng.o
>  obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
> diff --git a/drivers/char/hw_random/mt67xx-rng.c b/drivers/char/hw_random/mt67xx-rng.c
> new file mode 100644
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

sort these headers in alphabetical order

> +#define PFX                    KBUILD_MODNAME ": "

PFX can be dropped that is less useful

> +#define MT67XX_RNG_MAGIC       0x74726e67
> +#define SMC_RET_NUM            4
> +
> +struct mt67xx_rng_priv {
> +       struct hwrng rng;
> +};
> +
> +
> +static void __rng_sec_read(uint32_t *val)
> +{

add a prefix like mt67xx, the function call is specific to mtk

> +       struct arm_smccc_res res;
> +
> +       arm_smccc_smc(MTK_SIP_KERNEL_GET_RND,
> +                     MT67XX_RNG_MAGIC, 0, 0, 0, 0, 0, 0, &res);
> +
> +       val[0] = res.a0;
> +       val[1] = res.a1;
> +       val[2] = res.a2;
> +       val[3] = res.a3;
> +}
> +
> +static int mt67xx_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
> +{
> +       int i, retval = 0;
> +       uint32_t val[4] = {0};
> +       size_t get_rnd_size = sizeof(u32) * SMC_RET_NUM;

sort declarations in the reverse-Xmas tree. and get_rnd_size always be
unchanged so it can be a macro

> +
> +       if (!buf) {

the sanity check is unnecessary, the parameter max would ensure the
size of the whole buffer

> +               pr_err("%s, buf is NULL\n", __func__);
> +               return -EFAULT;
> +       }
> +
> +       while (max >= get_rnd_size) {
> +               __rng_sec_read(val);
> +
> +               for (i = 0; i < SMC_RET_NUM; i++) {
> +                       *(u32 *)buf = val[i];
> +                       buf += sizeof(u32);
> +               }
> +
> +               retval += get_rnd_size;
> +               max -= get_rnd_size;
> +       }
> +
> +       return retval;
> +}
> +
> +static int mt67xx_rng_probe(struct platform_device *pdev)
> +{
> +       int ret;
> +       struct mt67xx_rng_priv *priv;

sort declarations in the reverse-Xmas tree.

> +
> +       pr_info(PFX "driver registered\n");

drop the message

> +       priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> +       if (!priv)
> +               return -ENOMEM;
> +
> +       priv->rng.name = KBUILD_MODNAME;

suggest using the device name

priv->rng.name = pdev->name;

> +       priv->rng.read = mt67xx_rng_read;
> +       priv->rng.priv = (unsigned long)&pdev->dev;
> +       priv->rng.quality = 900;
> +
> +       ret = devm_hwrng_register(&pdev->dev, &priv->rng);
> +       if (ret) {
> +               dev_err(&pdev->dev, "failed to register rng device: %d\n", ret);
> +               return ret;
> +       }
> +
> +       return 0;
> +}
> +
> +static const struct of_device_id mt67xx_rng_match[] = {
> +       { .compatible = "mediatek,mt67xx-rng", },
> +       {}
> +};
> +MODULE_DEVICE_TABLE(of, mt67xx_rng_match);
> +
> +static struct platform_driver mt67xx_rng_driver = {
> +       .probe = mt67xx_rng_probe,
> +       .driver = {
> +               .name = KBUILD_MODNAME,
> +               .owner = THIS_MODULE,
> +               .of_match_table = mt67xx_rng_match,
> +       },
> +};
> +
> +module_platform_driver(mt67xx_rng_driver);
> +
> +MODULE_DESCRIPTION("Mediatek MT67XX Random Number Generator Driver");

MediaTek

> +MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
> +MODULE_LICENSE("GPL");
> --
> 1.7.9.5
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
