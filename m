Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 328CB1C77C7
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 19:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPS1m54DnIahDrA2IKqfth8OJfumP5mhty+SkNbAJog=; b=I7D/P3l3+kbOdu
	cp7iWT/oU+eJUPc04NvCvZklnO4GYbRPdKbGvwlAeYHpzipf/drZPOMAA9YWt+O8tdiJoFz0LCoiR
	3fOT5CydGPf5TXFnn6q6zN//wKj59PuF8xC/FtkFKtUkbJkbR3NNVNnp9DFm8TkT/R6PCkBCsTQhg
	zvsrViEQhLV1bX3+Zhkzq8Mo+GPKR6293YqgTXj+vo2pBzJ0/JtBVqwXd3PkzNM600ZN1ijsLhGHB
	WBnAo6rCR7S0vPwK94Wlti53tTgXjjWxbf9QiTaIszCvPOSJwZa6d0Pf8MXT404o9EcJXNfGjg6Y4
	wMSmF7QwqVnjA7uf4NVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNmZ-0008Ji-N1; Wed, 06 May 2020 17:24:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWNmP-0008Bm-CZ; Wed, 06 May 2020 17:24:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 9DF802A23AD
Subject: Re: [PATCH -next] soc: mediatek: Missing platform_device_unregister()
 on error in mtk_mmsys_probe()
To: Wei Yongjun <weiyongjun1@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20200506141317.119537-1-weiyongjun1@huawei.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <923a48d8-eb9e-2729-a4be-dad63a6df28a@collabora.com>
Date: Wed, 6 May 2020 19:24:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200506141317.119537-1-weiyongjun1@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_102421_556478_D59A934D 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: kernel-janitors@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Wei,

Thank you for your patch.

On 6/5/20 16:13, Wei Yongjun wrote:
> Add the missing platform_device_unregister() before return
> from mtk_mmsys_probe() in the error handling case.
> 
> Fixes: 667c769246b0 ("soc / drm: mediatek: Fix mediatek-drm device probing")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

> ---
>  drivers/soc/mediatek/mtk-mmsys.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
> index 05e322c9c301..05ce4cb464b0 100644
> --- a/drivers/soc/mediatek/mtk-mmsys.c
> +++ b/drivers/soc/mediatek/mtk-mmsys.c
> @@ -312,8 +312,10 @@ static int mtk_mmsys_probe(struct platform_device *pdev)
>  
>  	drm = platform_device_register_data(&pdev->dev, "mediatek-drm",
>  					    PLATFORM_DEVID_AUTO, NULL, 0);
> -	if (IS_ERR(drm))
> +	if (IS_ERR(drm)) {
> +		platform_device_unregister(clks);
>  		return PTR_ERR(drm);
> +	}
>  
>  	return 0;
>  }
> 
> 
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
