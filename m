Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145642234A
	for <lists+linux-mediatek@lfdr.de>; Sat, 18 May 2019 12:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dP9Dt9s/MmB2q5gOeaKFifQULBp7jKqzhBVvDbQFaz0=; b=WN/Qd/5HI4Cs4h
	2zYAYErcqzRdTz8llUKtLzDmHTyM6Uo3k+1zTsY7jSSmrqzamvBLKLrBjMr2VUdQJsJJkuCWLu+8n
	me3kMhz3p2vY0kX3JEvATYO+LVIwdajbGPp3diCJjVsHB0E1QSKOlNWdDn5DrNWl3DJoK3gChMz4Q
	J7CcySiKkciqsbZqoxP5zFjhFngRBPHzICStoZlCPmzi1kX5R+WP6gzYJBTOciqlaYr1Gpxr9x451
	hrY9pumwKTzXBjz+At6KyzxQfYbWZ89jDC4iHRzSapHjGPwG0OzeD7RncHujZ7iqXvQfiZV0XjHV/
	eGBCSVBPrbW1jLtsZtWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRwi5-0002Sy-7g; Sat, 18 May 2019 10:37:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRwhv-0002KZ-93; Sat, 18 May 2019 10:36:52 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE78A2087E;
 Sat, 18 May 2019 10:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558175809;
 bh=M1cIR0VtB3TnODl/YmcCk/DeYpsOPIWvqiJuH+ZAFUs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zHTz8ROxUjXgte53XjHgXP5dkTZVEV0pmQckU89uK6+MPaGeN9/N+brp4jDieoyoc
 k2r6IvTw63gXs8CGpigA7dRWuBeYJkFp5YI+lk10B1P8VTMnmpDlB1s46MDMveWw6h
 0Z9DOouy3lTGmuty10y5oQom+ftK+0O+NPUuqhi4=
Date: Sat, 18 May 2019 11:36:43 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Subject: Re: [PATCH 4/4] iio: auxadc: mediatek: change to subsys_initcall
Message-ID: <20190518113643.53a42976@archlinux>
In-Reply-To: <1557994247-16739-5-git-send-email-chun-hung.wu@mediatek.com>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
 <1557994247-16739-5-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_033651_331527_C309A24F 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Lars-Peter Clausen <lars@metafoo.de>, wsd_upstream@mediatek.com,
 linux-iio@vger.kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, jg_poxu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 16 May 2019 16:10:47 +0800
Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:

>   Move auxadc platform_driver_register() from module_init
> to subsys_initcall because auxadc user drivers
> are all moudle drivers, need to gurantee
> auxadc driver ready before module_init.
> 
Is it not possible to make them use deferred handling to come
back later if this isn't yet available?

subsys_initcall often ends up being a more fragile approach.

Thanks,

Jonathan

> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> ---
>  drivers/iio/adc/mt6577_auxadc.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
> index 58d7cb2..cb8e3dd 100644
> --- a/drivers/iio/adc/mt6577_auxadc.c
> +++ b/drivers/iio/adc/mt6577_auxadc.c
> @@ -350,7 +350,19 @@ static int mt6577_auxadc_remove(struct platform_device *pdev)
>  	.probe	= mt6577_auxadc_probe,
>  	.remove	= mt6577_auxadc_remove,
>  };
> -module_platform_driver(mt6577_auxadc_driver);
> +
> +static int __init mt6577_auxadc_init(void)
> +{
> +	return platform_driver_register(&mt6577_auxadc_driver);
> +}
> +
> +static void __exit mt6577_auxadc_exit(void)
> +{
> +	platform_driver_unregister(&mt6577_auxadc_driver);
> +}
> +
> +subsys_initcall(mt6577_auxadc_init);
> +module_exit(mt6577_auxadc_exit);
>  
>  MODULE_AUTHOR("Zhiyong Tao <zhiyong.tao@mediatek.com>");
>  MODULE_DESCRIPTION("MTK AUXADC Device Driver");


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
