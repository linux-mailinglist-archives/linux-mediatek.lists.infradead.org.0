Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F86C1DB914
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 18:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hpFYeSj5nY+2pEOiddFT3FZBKumd9vWyApDty299Fmc=; b=RA3jD/i2WnRo7L
	qrxw2QudX6/OQA2txM0aduQMGZtKPFcDLgug48xYuxl5UfUphk1I1si5gcmBVB1NG4BYqwbtXlGDC
	iqHzQ4V3WLe5ym7iVyNckJZSQHiQJDbJkx1dh0UiuLrMHXzpZi67VF/M35t+qlyqNVbTVhlZCos+x
	c2uzXOhqB1PKSIJBFND42kyiBVW4rab2z2mYUD7SsEtR63Xz8py51auXcL+uNGgHoGnRLz4nqISsi
	PeZdr4P+sBu1KGzQvnp0V72USAYsoKZ7bA0oohJdIg/bUO8HeKqvCPrnJPZckb0Eao8zIUkvRluVz
	k0DfjCdQoFag2vBkZKUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbRNA-0000Gx-Ba; Wed, 20 May 2020 16:15:12 +0000
Received: from c-73-157-219-8.hsd1.or.comcast.net ([73.157.219.8]
 helo=[10.0.0.252])
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbRN6-00083y-Lu; Wed, 20 May 2020 16:15:09 +0000
Subject: Re: [next] i2c: mediatek: Use div_u64 for 64-bit division to fix
 32-bit kernels
To: qii.wang@mediatek.com, wsa@the-dreams.de
References: <1589970713-19944-1-git-send-email-qii.wang@mediatek.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <c92c499b-825d-bd28-3c0d-e63076cba1b6@infradead.org>
Date: Wed, 20 May 2020 09:15:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1589970713-19944-1-git-send-email-qii.wang@mediatek.com>
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 leilk.liu@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 5/20/20 3:31 AM, qii.wang@mediatek.com wrote:
> From: Qii Wang <qii.wang@mediatek.com>
> 
> Use div_u64 for 64-bit division, and change sample_ns type to
> unsigned int. Otherwise, the module will reference __udivdi3
> under 32-bit kernels, which is not allowed in kernel space.
> 
> Signed-off-by: Qii Wang <qii.wang@mediatek.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

thanks.

> ---
>  drivers/i2c/busses/i2c-mt65xx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
> index 7020618..deef69e 100644
> --- a/drivers/i2c/busses/i2c-mt65xx.c
> +++ b/drivers/i2c/busses/i2c-mt65xx.c
> @@ -551,7 +551,8 @@ static int mtk_i2c_check_ac_timing(struct mtk_i2c *i2c,
>  	const struct i2c_spec_values *spec;
>  	unsigned int su_sta_cnt, low_cnt, high_cnt, max_step_cnt;
>  	unsigned int sda_max, sda_min, clk_ns, max_sta_cnt = 0x3f;
> -	long long sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src;
> +	unsigned int sample_ns = div_u64(1000000000ULL * (sample_cnt + 1),
> +					 clk_src);
>  
>  	if (!i2c->dev_comp->timing_adjust)
>  		return 0;
> 


-- 
~Randy

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
