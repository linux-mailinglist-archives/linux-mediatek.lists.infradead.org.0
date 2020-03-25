Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8ED192BC4
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Mar 2020 16:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrvQChDl6GZVxiYZg1dlLZhofVd+Bp1Q5zhLegM5b7c=; b=Us3uWdlscIiCUT
	5+c2lGriCQGtD3+zw3LgEV7/+ZsWZAx7rI7AI4xvllK7BfMfGY1iXWGWGf7/oRJQzr6rFN9k3OV9w
	oICNq5SVp+f70aT6x9TSiKlpg+vssIuRkROOCT6k5iEmyIfp3Cl+ve65haQzJe2H5p98RqSEGVS/B
	kfC/7OJY6fOK+rtNmOJL7NfKC6L/ilIEu09GPMRIQXjhsSj3G81Y94otfn8Tt1G65V2LqgyzgCTYj
	R2oAWn37ScgbaVg6m+vDFAjjUOHBP/GVDaBegn6edtQeb1KUFDDOlRcs/QntxM87/rJOH4Mz3nKbV
	Vuz3FsLK26QEem0N4FyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH7ao-0003Gj-7R; Wed, 25 Mar 2020 15:05:18 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH7ak-0003GQ-TB; Wed, 25 Mar 2020 15:05:14 +0000
Subject: Re: [PATCH v5 4/6] pinctrl: mediatek: add pinctrl support for MT6779
 SoC
To: Hanks Chen <hanks.chen@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Wang <sean.wang@kernel.org>
References: <1585128694-13881-1-git-send-email-hanks.chen@mediatek.com>
 <1585128694-13881-5-git-send-email-hanks.chen@mediatek.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <e91e09ca-d896-3712-f8fa-8811a2be6b5e@infradead.org>
Date: Wed, 25 Mar 2020 08:05:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1585128694-13881-5-git-send-email-hanks.chen@mediatek.com>
Content-Language: en-US
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Andy Teng <andy.teng@mediatek.com>, linux-kernel@vger.kernel.org,
 Mars Cheng <mars.cheng@mediatek.com>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 3/25/20 2:31 AM, Hanks Chen wrote:
> diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
> index 701f9af..f628d01 100644
> --- a/drivers/pinctrl/mediatek/Kconfig
> +++ b/drivers/pinctrl/mediatek/Kconfig
> @@ -86,6 +86,13 @@ config PINCTRL_MT6765
>  	default ARM64 && ARCH_MEDIATEK
>  	select PINCTRL_MTK_PARIS
>  
> +config PINCTRL_MT6779
> +	bool "Mediatek MT6779 pin control"
> +	depends on OF
> +	depends on ARM64 || COMPILE_TEST
> +	default ARM64 && ARCH_MEDIATEK
> +	select PINCTRL_MTK_PARIS

Hi,
Please add some useful help text.

> +
>  config PINCTRL_MT6797
>  	bool "Mediatek MT6797 pin control"
>  	depends on OF

thanks.
-- 
~Randy


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
