Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB117BB2DD
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Sep 2019 13:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/3v2RclWnF8R6pBUNkF67zzXugJYH7//au6zyKxYSI=; b=mFPL7KTWr+mLPm
	pTMxo4GWYGTWhUXy+bRQIIicrAqM0S72n2Vh1s0rR5dJT4bChZeAshXLj6zG2zd4eiYvYQNTnYX9E
	eOLysoRL4L1sbg1e+0Z9W1RRPVx0jaHLGczzMlgjBXQEz7iX0raDgxF5/zrIqzpnwChzSOXbpCAEs
	L1KOSAA/XpxtSyAIBrHu5+XCIVBzc1MV2UREweScEowvIDds/+so1wESGYp6LhtVPGv5v1idZXksV
	o48O0pPu6Lymz30Voj1zFs26jzPv/7cYHxK2aI15Uxe5IsphmSurocCsoWAY81uBY8XSJQ5/VYJkt
	Ud5E2SgTpl32GO5buYdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCMbg-0006md-KK; Mon, 23 Sep 2019 11:34:16 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCMbX-0006eM-Dk
 for linux-mediatek@lists.infradead.org; Mon, 23 Sep 2019 11:34:09 +0000
Received: by mail-lj1-x243.google.com with SMTP id n14so8275661ljj.10
 for <linux-mediatek@lists.infradead.org>; Mon, 23 Sep 2019 04:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=1iHVMQKqhTvi2xyeEpHSWZnbXdJb6BZcBgLx05z/RJY=;
 b=zAsyPvNJsGYcnnQeTbbprStzO4yMGANU4Wwf8P25L0D1n7azLLG750ich1xVRaWDAW
 IyAmTFGaVwCJP9xiUik/8q1b66zr5cFf/PG4QRArX19JS2/PwOhFis27q9CH5IQFsysc
 IgjgN8DM+EhVr1ffjmOsBsngMuGC94o0StTmi8fH6jmvYVS/LlBjgjM+UkpoZerHGp6z
 LXaU9ZShi7/y/Ab2WMrtyF6IRiCp2pmUvmooh3KCl4I4dI7zDmL/n2AFYqE3OsIifJyt
 6xY4M3QgfFH8s4DCfBRwSCg7ZbiUvuwl9kfgIS3JzDNAIos56QJeqRygXAFE+sMLd3YD
 aIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=1iHVMQKqhTvi2xyeEpHSWZnbXdJb6BZcBgLx05z/RJY=;
 b=Si8sUR6qo2/xLZyitbyQ60kx4MyoljTVu7ZtYyeq9HBzBCzHGA/BXoEL6ojzCjl/ba
 bwGE13SdJ4hQ0WQKvAD4VFoYjaDI/yB2SL++LzaaWnPkHb0IlFvaZLloFpNfMsqnClPg
 +UmUhZ/6RjV3vQ9u5SkyyBJcVLPeMjeKzqn3ZVwpCSjDCVFooh+Yq4BXHiR5FPl3dz6o
 wOmvaa4QprpkM5Os7NUPW3TgV/1gTjmWpj34Dr4lPuXWOuBUhmQBsWKVzGh705pQpXAJ
 d4+9EUYhCGjqdr53wxsVLyBV9KoKzJtA3Y4GHSuH0tJjtRQ6HPOwmiPvn5wd2bFXHeyn
 JHsw==
X-Gm-Message-State: APjAAAWNcJ+RKDC757aQD9kj0VC/kPcdRSJAmFLS6L7GPd+oLhiTGoc0
 SPjBhTBfRZripHfPQ67MXUoxLg==
X-Google-Smtp-Source: APXvYqyLM/Stp8gNwOtRCJqDNGvGHQVfcCbloLsy0YfOl+HNNgEkESrWd92Ftx28l5PJGALh+qbOug==
X-Received: by 2002:a2e:8789:: with SMTP id n9mr17263051lji.52.1569238444804; 
 Mon, 23 Sep 2019 04:34:04 -0700 (PDT)
Received: from localhost (h-93-159.A463.priv.bahnhof.se. [46.59.93.159])
 by smtp.gmail.com with ESMTPSA id 126sm2326083lfh.45.2019.09.23.04.34.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 04:34:04 -0700 (PDT)
Date: Mon, 23 Sep 2019 13:34:03 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] media: platform: Use devm_platform_ioremap_resource() in
 two functions
Message-ID: <20190923113403.GA14837@bigcity.dyn.berto.se>
References: <d80a685a-c3de-b9c9-ad32-e1da9308c393@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d80a685a-c3de-b9c9-ad32-e1da9308c393@web.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_043407_513761_8270BFE3 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-renesas-soc@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, Himanshu Jha <himanshujha199640@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Markus,

Thanks for your patch.

On 2019-09-18 11:30:30 +0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 18 Sep 2019 11:20:48 +0200
> =

> Simplify these function implementations by using a known wrapper function.
> =

> This issue was detected by using the Coccinelle software.
> =

> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c | 8 +-------
>  drivers/media/platform/rcar-vin/rcar-core.c            | 7 +------

For rcar-vin:

Tested-by: Niklas S=F6derlund <niklas.soderlund@ragnatech.se>

>  2 files changed, 2 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c b/dri=
vers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c
> index 00d090df11bb..944771ee5f5c 100644
> --- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c
> +++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_drv.c
> @@ -253,13 +253,7 @@ static int mtk_vcodec_probe(struct platform_device *=
pdev)
>  	}
> =

>  	for (i =3D 0; i < NUM_MAX_VDEC_REG_BASE; i++) {
> -		res =3D platform_get_resource(pdev, IORESOURCE_MEM, i);
> -		if (res =3D=3D NULL) {
> -			dev_err(&pdev->dev, "get memory resource failed.");
> -			ret =3D -ENXIO;
> -			goto err_res;
> -		}
> -		dev->reg_base[i] =3D devm_ioremap_resource(&pdev->dev, res);
> +		dev->reg_base[i] =3D devm_platform_ioremap_resource(pdev, i);
>  		if (IS_ERR((__force void *)dev->reg_base[i])) {
>  			ret =3D PTR_ERR((__force void *)dev->reg_base[i]);
>  			goto err_res;
> diff --git a/drivers/media/platform/rcar-vin/rcar-core.c b/drivers/media/=
platform/rcar-vin/rcar-core.c
> index 6993484ff0f3..334c62805959 100644
> --- a/drivers/media/platform/rcar-vin/rcar-core.c
> +++ b/drivers/media/platform/rcar-vin/rcar-core.c
> @@ -1282,7 +1282,6 @@ static int rcar_vin_probe(struct platform_device *p=
dev)
>  {
>  	const struct soc_device_attribute *attr;
>  	struct rvin_dev *vin;
> -	struct resource *mem;
>  	int irq, ret;
> =

>  	vin =3D devm_kzalloc(&pdev->dev, sizeof(*vin), GFP_KERNEL);
> @@ -1301,11 +1300,7 @@ static int rcar_vin_probe(struct platform_device *=
pdev)
>  	if (attr)
>  		vin->info =3D attr->data;
> =

> -	mem =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (mem =3D=3D NULL)
> -		return -EINVAL;
> -
> -	vin->base =3D devm_ioremap_resource(vin->dev, mem);
> +	vin->base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(vin->base))
>  		return PTR_ERR(vin->base);
> =

> --
> 2.23.0
> =


-- =

Regards,
Niklas S=F6derlund

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
