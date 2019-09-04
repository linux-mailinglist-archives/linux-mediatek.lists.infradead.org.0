Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9E3A940E
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Sep 2019 22:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GqfB3OPnAAML8BuQwm4qmeT8Nd7SZ2AV+MSNSCi2F2I=; b=sX9iwg/dJyuesB
	FJDgmyOA3N0e5ScglGIe7Jgy6Zq1aMVIPz9pjvgjDfuiVeSuMQ9rCF3iZYKBbTryHiqNmGnwUbzYW
	ssfiV4NJAt+71sodTOVO4WoEA75Vu2TB6n2u0Vp6bI4bOSeIkF7Hp5R1btKkbfMWr4gHy8BKtFdKX
	jF6cy2MSDmE3qZohGSPMCj8aNvWxnEdwBhWDpgj2UVIh9zb1P1kJoXs3JpUCEqPpUQq4zw+71xuTM
	UcYipcWhLLA9GlkakyKVvBQz4/w04fqI3pdRVPLq/moCfv2bRlMqDEDNLLPT6kayUUu/KEyJEbyTs
	0yWa6H5ZuCUIffmCDvEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cBL-0006IT-Vm; Wed, 04 Sep 2019 20:47:11 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5cB5-00061d-AX
 for linux-mediatek@lists.infradead.org; Wed, 04 Sep 2019 20:46:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id d1so77391pgp.4
 for <linux-mediatek@lists.infradead.org>; Wed, 04 Sep 2019 13:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7FpVgaIhgimDRqpweFDbMiGBjSsk/JazcD80okKL/K8=;
 b=B3ZwBoxDNj5wp/W0+6EgPLtyn42FRM4lKEPuGul/INFNVDV0d6vrjAfI74kiYbBjwb
 RtwOAFpFkp8ULzlYQBnaGau4RSDKiK2Sdq8Hjs6JHKbU5On8H56ARMSYggt77ImaOAXR
 Phja5i1TBR6bjGzSRWjJc8EZqzoOHCuT1G+iocES8UWBNVeoOYiRY6HkgRLZvKh5M6Sb
 WHzguaFI/2ByIIVLDKt6nFLW+FJbEXZiBcnjB+VvF1jsWXutZ6GLiXNq+3ly3QHxD/gn
 UhmFNW0RtNQQoSqk6dbh3isqFmSp5AkCvUY6fi5kmUt8vL3neywbb2V1USK8/dnNvSiJ
 Cxug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7FpVgaIhgimDRqpweFDbMiGBjSsk/JazcD80okKL/K8=;
 b=n1JfpTiHf3u9pS/XK5SnsgcYoyc6TwIIDP/Pm7hn9FlFgiXPr3yICjBGi9HLbmMLAm
 0d4jsU0PifAg2ODYPekMVOx+7fnAVN9C1X4T5rEoY/pbOCO0PBnBLEBCHB1nlnth/Lmt
 Y9ACWD+B/hjeFkC5kSvASVFe2Zy3IyZmriV2pvN206yUwQG591wQa0z7B6KD2C7KdtNU
 INmtq7k/9njGL7HKlShHtba+LvrbmILUu/MFj2TYd/kWprfGAYb3OyILTvAPWY9ylP6H
 c5G+abdc3+D5wFuvgdL8KivMBTaW4SaKfEeEsEU6rl8BnnRij4v8AFFJaOF9psiDgdrt
 iemw==
X-Gm-Message-State: APjAAAWV0v4KvPXm94N2r6PYiKirW0NLO20pC2aeVErPbOne/Zbltrbo
 MqQTVtFkOopFkTbImDddyAC/xA==
X-Google-Smtp-Source: APXvYqx6p9POXMCXKO+7CZNt3OeG669blGTjX7rgKqWleU9xBmKU6iit1LtXZOmDeIMaYc7+Sw+ZcA==
X-Received: by 2002:a63:66c5:: with SMTP id a188mr49168pgc.127.1567630014448; 
 Wed, 04 Sep 2019 13:46:54 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id br18sm3019455pjb.20.2019.09.04.13.46.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 13:46:53 -0700 (PDT)
Date: Wed, 4 Sep 2019 13:46:49 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 23/36] spi: spi-qcom-qspi: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190904204649.GF580@tuxbook-pro>
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-24-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904135918.25352-24-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_134655_368207_91783A78 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tmaimon77@gmail.com, palmer@sifive.com, tali.perry1@gmail.com,
 eric@anholt.net, ldewangan@nvidia.com, linux-riscv@lists.infradead.org,
 festevam@gmail.com, linux-samsung-soc@vger.kernel.org, f.fainelli@gmail.com,
 benjaminfair@google.com, shc_work@mail.ru, khilman@baylibre.com,
 openbmc@lists.ozlabs.org, michal.simek@xilinx.com, krzk@kernel.org,
 jonathanh@nvidia.com, yuenn@google.com, wens@csie.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org, andi@etezian.org,
 rjui@broadcom.com, s.hauer@pengutronix.de, mripard@kernel.org,
 broonie@kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, paul.walmsley@sifive.com,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, baohua@kernel.org, sbranden@broadcom.com,
 yamada.masahiro@socionext.com, avifishman70@gmail.com, venture@google.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 thierry.reding@gmail.com, wahrenst@gmx.net, kernel@pengutronix.de,
 kgene@kernel.org, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed 04 Sep 06:59 PDT 2019, YueHaibing wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/spi/spi-qcom-qspi.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/spi/spi-qcom-qspi.c b/drivers/spi/spi-qcom-qspi.c
> index a0ad73f..250fd60 100644
> --- a/drivers/spi/spi-qcom-qspi.c
> +++ b/drivers/spi/spi-qcom-qspi.c
> @@ -424,7 +424,6 @@ static int qcom_qspi_probe(struct platform_device *pdev)
>  {
>  	int ret;
>  	struct device *dev;
> -	struct resource *res;
>  	struct spi_master *master;
>  	struct qcom_qspi *ctrl;
>  
> @@ -440,8 +439,7 @@ static int qcom_qspi_probe(struct platform_device *pdev)
>  
>  	spin_lock_init(&ctrl->lock);
>  	ctrl->dev = dev;
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	ctrl->base = devm_ioremap_resource(dev, res);
> +	ctrl->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(ctrl->base)) {
>  		ret = PTR_ERR(ctrl->base);
>  		goto exit_probe_master_put;
> -- 
> 2.7.4
> 
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
