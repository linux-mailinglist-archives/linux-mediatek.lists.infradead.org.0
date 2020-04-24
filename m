Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57561B7199
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 Apr 2020 12:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkbzDnpKHwzDnj5FX4Grc2QQHUw6jJ1UvgAnOcarsgg=; b=cS44XYcp4ZhG9L
	z60ZCiNYrnuLwYZV4j6RrY2auNkWuis06XQRULE1lCwcMgGPvtqYnDuJ38IGFMhCgb1PeymPNBIZY
	2luug9CUYDlo0yFDCsMzug9K6QE5TX1oTuLs0Aws0GK8L9EdbKmTZ3DKX2XjchlA1jgzPWubp9gmC
	JyUhlQh4dhkmiYz8zglrEJwinUILN5JsgcJIjPF/7phdNoLbwJcDSwCec7jnIuHJ1ONy5PqTzsotN
	+Tbd4exuP8tnduJUqMOT5lDucAcWh3Behy5xfrx/p+TUGGPsa9AWHyZcNknu/uMRwvOb6MCOF1GFT
	za18Q69IkreWJ6us/HfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRvHm-0003ga-Al; Fri, 24 Apr 2020 10:10:18 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRvHi-0003eI-Js
 for linux-mediatek@lists.infradead.org; Fri, 24 Apr 2020 10:10:16 +0000
Received: by mail-ua1-x941.google.com with SMTP id c24so8850113uap.13
 for <linux-mediatek@lists.infradead.org>; Fri, 24 Apr 2020 03:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/7X2G22ItV4Y4N+eb7B9/IPLptDWVPPgxbfXxVm6c0U=;
 b=VpecBWsDHCHHO0gD9i2Q+wOtC/bhPUTbFJumSZmGKAPLRyGV0WQNt+0aw3Fzkvd6Ky
 YNnA3xcIN+JKDZPwlTndqmO/W3+X8T5EaIskhnIvK0+od9Dh2G1TpQoC2ex4NIFslEOK
 wyph8U4lQiPX/EY1u7sdflAgmOPiWwOUC5I4uyYHIqebMO8tKeOL7F2+/v9KhWLuUlzp
 NE9K5KuDRaimnnq1rVRW40PPCD+1dh4R6OYSlpPJAY32uxr2mOz79SVJP6ttVM5dm6cn
 mf2rknK5IJWHhSWj3Gw8nyJLC3+q6iIszJNoLq7J7Ld+CRf3RvsCM8heQx0RJFLLcvN9
 KAKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/7X2G22ItV4Y4N+eb7B9/IPLptDWVPPgxbfXxVm6c0U=;
 b=o+KgVEwOITEmeYD9ReYrQjJiYIUuWjbfzzHh4gkvxOHn1R2dXKWtGzK4VRhBMr+TYO
 RARHn9gdZLLX3I8ii07HeZvYOD1nuyNMAm5odLMzAjYYEr/etJ4Fd5fAaYA16giwXsMI
 LJSpQQ1+W9H5xeF12B/Quw0LzN1cEOLlnhNi87ryMcRWBQ72jVNVI1Mr4Zh9X+5uCZVX
 pTsDQfYLksuPRzsHtRfpVO/l6y8Sr0vrBTrR8wqbd9z018bmvEZQMfmECxl0ASdUIq7a
 LwAk1Bw9lhFdcT0xkUR/W3Lq4kRTm5qTmr598wgninXlXntzzOOr/btp+rd8a8A0WHZM
 ZB6A==
X-Gm-Message-State: AGi0PubY9rgLKJhX+Q+Jh17klky2PLe4zFP4MeZLXtQ9SzRIBDP8BqmI
 MmYZxx3kcVgKGN4d+ZBavOkMbgGicRvr+kKHPXi63w==
X-Google-Smtp-Source: APiQypKPFxKbTuswyzazMAoKTL41AiVtC3nWpHcWL/JgaZTTZJKmyutS6k++bDb6ybJle6h4nW9ENAd6LSnZ1BI5+xw=
X-Received: by 2002:a67:8b46:: with SMTP id n67mr6857957vsd.35.1587723013211; 
 Fri, 24 Apr 2020 03:10:13 -0700 (PDT)
MIME-Version: 1.0
References: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
 <1586835611-13857-2-git-send-email-yong.mao@mediatek.com>
In-Reply-To: <1586835611-13857-2-git-send-email-yong.mao@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 24 Apr 2020 12:09:37 +0200
Message-ID: <CAPDyKFo40tBpowmWN3gxH8b=jMmCK8O5ALNQ7y6XZ5AosX=GUA@mail.gmail.com>
Subject: Re: [PATCH 1/3] mmc: core: need do mmc_power_cycle in
 mmc_sdio_resend_if_cond
To: Yong Mao <yong.mao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_031014_691676_801E7069 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 at 05:40, Yong Mao <yong.mao@mediatek.com> wrote:
>
> From: yong mao <yong.mao@mediatek.com>
>
> When mmc_sdio_resned_if_cond is invoked, it indicates the SDIO
> device is not in the right state. In this condition, the previous
> implementation of mmc_sdio_resend_if_cond can't make sure SDIO
> device be back to idle state. mmc_power_cycle can reset the SDIO
> device by HW and also make sure SDIO device enter to idle state
> correctly.
>
> Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> ---
>  drivers/mmc/core/sdio.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/mmc/core/sdio.c b/drivers/mmc/core/sdio.c
> index ebb387a..ada0a80 100644
> --- a/drivers/mmc/core/sdio.c
> +++ b/drivers/mmc/core/sdio.c
> @@ -546,6 +546,7 @@ static int mmc_sdio_init_uhs_card(struct mmc_card *card)
>  static void mmc_sdio_resend_if_cond(struct mmc_host *host,
>                                     struct mmc_card *card)
>  {
> +       mmc_power_cycle(host, host->card->ocr);

This looks wrong to me. mmc_sdio_resend_if_cond() is called from two places.

1. In the case when mmc_set_uhs_voltage() fails in
mmc_sdio_init_card(), which means a call to mmc_power_cycle() has
already been done.

2. Wen sdio_read_cccr() fails and when we decide to retry the UHS-I
voltage switch. Then perhaps it could make sense to run a power cycle.
But if so, we better do it only for that path.

I will continue to look a bit, as I think there are really more issues
that we may want to look into while looking at this piece of code.
However, allow me some more time before I can provide some more ideas
of how to move forward.

>         sdio_reset(host);
>         mmc_go_idle(host);
>         mmc_send_if_cond(host, host->ocr_avail);
> --
> 1.9.1

Kind regards
Uffe

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
