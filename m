Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123461B15B0
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 Apr 2020 21:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YDcYu8NxuRLOd9UNGt8Eaz1hTWvvdhOm/5TPjjIRp8=; b=OvoRs5x0sUA2Ha
	Sk416dbuxjeoKrmdIk1ycbIvAo+2XDFGv9Q8ju5pp2mTglW/TFgeHXiAvesY3Q2Klx+zo1sZS9Aec
	rdfFpvke2xxI6YID7DUE6GotnmGPfGWLBe6ycOgfuAXrDLa7KoBirSfoK7QvA/2csvqzy4KldVT0j
	f61M4ikMI1QCbSC5efcgJPUSzsPXMbCZGD3/9zB5MiPLeGE+yRnXdzhu85U2uxF+lscRxnWeM8jS7
	0trbv8n8BLmaOKYlFQ9ZG92/c/ZpgviCXoPHCQ+Dbp4fTlG2906fxAKZc4TM768z2/X2uS3OaUhCl
	eoTwegWS8tBF4IeEKrOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQbt6-0006fN-Tn; Mon, 20 Apr 2020 19:15:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQbt4-0006d8-FI
 for linux-mediatek@lists.infradead.org; Mon, 20 Apr 2020 19:15:23 +0000
Received: by mail-pg1-x544.google.com with SMTP id g6so5534100pgs.9
 for <linux-mediatek@lists.infradead.org>; Mon, 20 Apr 2020 12:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s4hrruIEfeHbnCer3L7xymo3BPcqZk1wOgCil6L4gXc=;
 b=jkUCF9b3xkKwajGHRP14VA5YPuTR0uv9ThYOOWUiuSrrcX8fguG/qXV/ZrUEnsXGQ0
 ve3D9RcEwHxcP8Rds85FUEIPAZPk/ZJ4MA3JL1eWCckkp9eUNXyoHxJAzOCLC0l7hJU4
 tjDvPbpkU78tKvlJsgegIpmgqf0kxXn83VDBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s4hrruIEfeHbnCer3L7xymo3BPcqZk1wOgCil6L4gXc=;
 b=KNtoAjFFwAwfyKO3oq1qYuUWYBC/ChC7a3hV7P/PoJR5K8NGU3PyqVP/DyQ91ufcYF
 IlRrsyvSeQpqAuVdEPJgsBmxKM11HghyApeZizDZ4LIpYhPlUggYDdGJ7f8d7Z5AoWwL
 3ISPAsn3qRF6+Yx1tQFdf+rpg+IwzjbcVwUokpT5qtQP25BM1pGrJ500VT5dJ9UWFQwu
 D1f+heTMxSgYxYvhYhQQtM/foPRqSz8nSYMor5iMgpwjOIO++DLeyYaPn1fjbKDNgISN
 BXmNwGIYduWqTGzOhsY5jUPgENm2HrbLqX7vOBAxB82ZCK3yG2/jIj6FLlSwXx7/E0Hh
 p8qQ==
X-Gm-Message-State: AGi0PuZBLMLaHUo8UzUqiXnhpXWWT/EMg3GPc6/P1KICCEd11OhJuq/J
 yFNRQKqmp5lrzLibWoS7mbDQjg==
X-Google-Smtp-Source: APiQypJCgAQPRawkGIDVIK1DeGjLm/plSOv3ZpQojggeG3wLIJkbLMEB6AvcO7FMJg7kHrvwF6uHlg==
X-Received: by 2002:a63:d90c:: with SMTP id r12mr17745526pgg.158.1587410121447; 
 Mon, 20 Apr 2020 12:15:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id l15sm96958pgk.59.2020.04.20.12.15.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 12:15:20 -0700 (PDT)
Date: Mon, 20 Apr 2020 12:15:18 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Yong Mao <yong.mao@mediatek.com>
Subject: Re: [PATCH 1/3] mmc: core: need do mmc_power_cycle in
 mmc_sdio_resend_if_cond
Message-ID: <20200420191518.GG199755@google.com>
References: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
 <1586835611-13857-2-git-send-email-yong.mao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586835611-13857-2-git-send-email-yong.mao@mediatek.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_121522_536330_D3DA7F4D 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, srv_heupstream@mediatek.com,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On Tue, Apr 14, 2020 at 11:40:09AM +0800, Yong Mao wrote:
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
>  				    struct mmc_card *card)
>  {
> +	mmc_power_cycle(host, host->card->ocr);

My MMC/SDIO background is limited, but it seems this isn't needed for the
vast majority of SDIO devices, otherwise it probably would have been added
earlier. I wonder if it would make sense to make the power cycle
conditional through a quirk, to limit it to the devices that need it.

>  	sdio_reset(host);
>  	mmc_go_idle(host);
>  	mmc_send_if_cond(host, host->ocr_avail);
> -- 
> 1.9.1

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
