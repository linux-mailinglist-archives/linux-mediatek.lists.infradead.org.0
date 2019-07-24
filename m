Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAD072CCD
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 13:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufSxmgByWm7PRdJwyEcjw+1oKIEjdYe8W8VdX3l/f50=; b=MKaDXVcO1FWOeN
	rIIa4mNdKUoSQ7xR69u9J2e0EkVIloduvHYWk+v86gptOLIDxKyIU9hgJtZqfA0A0IEhCrgKgYGTB
	24Ju1dlC/pC0qheAhnevZNtHMe6hwQVVVJsvpWhvVW3efWJEf2ARUxQE662cyi4iFOlVC7w47o4gA
	sYcsqIQdZ8ONYYkJSq5KbWaXLOYBsnqH5VN3iAJSqgECH91yLnImRTekSGt6KnpjoBpLIuj84aEX8
	vgg2Mp0uT0u+J+C5y1IMahRkaI5URbxaW6rXt8UAYEUke/whYVg8EC5uXFvHsbLPnPi8NQ0/qxFBr
	W0xZ86KBNZl9GCdjm3UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqF46-0004oE-K5; Wed, 24 Jul 2019 11:04:10 +0000
Received: from smtprelay0120.hostedemail.com ([216.40.44.120]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqF41-0004mq-TR
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 11:04:07 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id A888718037D48;
 Wed, 24 Jul 2019 11:03:49 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2194:2198:2199:2200:2393:2559:2562:2828:2898:3138:3139:3140:3141:3142:3352:3622:3865:4225:4321:5007:6119:8603:10004:10400:10848:11026:11232:11657:11658:11914:12043:12297:12438:12681:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21451:21627:30046:30054:30070:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:28,
 LUA_SUMMARY:none
X-HE-Tag: tax54_21268d0501225
X-Filterd-Recvd-Size: 2072
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Wed, 24 Jul 2019 11:03:47 +0000 (UTC)
Message-ID: <54692f19e845a74650c1d24cbe7b79c5dad7b061.camel@perches.com>
Subject: Re: [PATCH v1 5/6] mt76: fix some checkpatch warnings
From: Joe Perches <joe@perches.com>
To: Ryder Lee <ryder.lee@mediatek.com>, Felix Fietkau <nbd@nbd.name>, 
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Date: Wed, 24 Jul 2019 04:03:46 -0700
In-Reply-To: <0afa87cc70b34ee17d6c2247dfc8dac92c36852f.1563944758.git.ryder.lee@mediatek.com>
References: <cover.1563944758.git.ryder.lee@mediatek.com>
 <0afa87cc70b34ee17d6c2247dfc8dac92c36852f.1563944758.git.ryder.lee@mediatek.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_040406_016697_2D9A76CB 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-07-24 at 16:58 +0800, Ryder Lee wrote:
> This fixes the following checkpatch warnings:
[]
> diff --git a/drivers/net/wireless/mediatek/mt76/agg-rx.c b/drivers/net/wireless/mediatek/mt76/agg-rx.c
[]
> @@ -74,15 +75,14 @@ mt76_rx_aggr_check_release(struct mt76_rx_tid *tid, struct sk_buff_head *frames)
>  	for (idx = (tid->head + 1) % tid->size;
>  	     idx != start && nframes;
>  	     idx = (idx + 1) % tid->size) {
> -
>  		skb = tid->reorder_buf[idx];
>  		if (!skb)
>  			continue;
>  
>  		nframes--;
> -		status = (struct mt76_rx_status *) skb->cb;
> +		status = (struct mt76_rx_status *)skb->cb;
>  		if (!time_after(jiffies, status->reorder_time +
> -					 REORDER_TIMEOUT))
> +				REORDER_TIMEOUT))

trivia/bikeshedding:  perhaps better slightly differently:

 		if (!time_after(jiffies,
				status->reorder_time + REORDER_TIMEOUT))



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
