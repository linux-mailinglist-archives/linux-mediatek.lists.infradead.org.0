Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C52FB909B
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Sep 2019 15:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MwxECwaHhGvd7Yy9sqr02u3tek15cmRQY2/Kd9tprbI=; b=O4fArFizhjWp41RIyFDs5KOwy
	fHC8CFISX1/DJKiCQo7s6CqWtNNgeArOn0YiHbQuvxMCLtY50l9tBev0Z4ooWr5qnL/xAWIWZp8jR
	x2YYVZ7CE8hycOnNoci0//n5zRpmHTkaC85IG3BZ/PQ7o70P/gE2JC2kZvLdq2Oqz+d5qyobiCst+
	plF8lDPMDL6kq7OlUOYsmAwasH5AjvBPMyKQup0DvTc83YxePN9djpIg5XWFMDz9sO5rfba+bPtM2
	c4b3+n0VorGdaRDX1YlRrmVaPHFf4xZmJ7f1L3gF6d2DzKSyYOpNbTlmQGNP0lZqP7neuHEd8+SG3
	V2fp9kOgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIuo-0006ss-T0; Fri, 20 Sep 2019 13:25:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIuf-0006ZP-UL; Fri, 20 Sep 2019 13:25:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA67F1570;
 Fri, 20 Sep 2019 06:25:26 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 68BB93F67D;
 Fri, 20 Sep 2019 06:25:23 -0700 (PDT)
Subject: Re: [PATCH] mt7601u: phy: simplify zero check on val
To: Colin King <colin.king@canonical.com>, Jakub Kicinski <kubakici@wp.pl>,
 Kalle Valo <kvalo@codeaurora.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20190920125414.15507-1-colin.king@canonical.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2f9ab78a-ea76-0b60-375a-9a22cd2ff0f5@arm.com>
Date: Fri, 20 Sep 2019 14:25:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190920125414.15507-1-colin.king@canonical.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_062530_023279_C8DBBA25 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 20/09/2019 13:54, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently the zero check on val to break out of a loop
> is a little obscure.  Replace the val is zero and break check
> with a loop while value is non-zero.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>   drivers/net/wireless/mediatek/mt7601u/phy.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/wireless/mediatek/mt7601u/phy.c b/drivers/net/wireless/mediatek/mt7601u/phy.c
> index 06f5702ab4bd..4e0e473caae1 100644
> --- a/drivers/net/wireless/mediatek/mt7601u/phy.c
> +++ b/drivers/net/wireless/mediatek/mt7601u/phy.c
> @@ -213,9 +213,7 @@ int mt7601u_wait_bbp_ready(struct mt7601u_dev *dev)
>   
>   	do {
>   		val = mt7601u_bbp_rr(dev, MT_BBP_REG_VERSION);
> -		if (val && ~val)
> -			break;

AFAICS, this effectively implements "while (val == 0 || val == 0xff)", 
which is not at all equivalent to "while(val)"... :/

Robin.

> -	} while (--i);
> +	} while (val && --i);
>   
>   	if (!i) {
>   		dev_err(dev->dev, "Error: BBP is not ready\n");
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
