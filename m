Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0FD978C3
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 14:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nxog+EmyWnDDuUCp24hWw+WirhAUE5FWmEQyW1BaR8=; b=qo5SE3t+sSa/lG
	SWFqBUjskLua+NvFwm997q38Ay2ehpHXOnK2nr7ZBE4qjpKQ8d+FjL8n9PAo6i9w+EZjXhh0mjBlE
	ptxyLYSa6XZsMG3M/hQ3XSHZZPthKiKp5rhsBqNTmEluJWtr0VbEdc8U3+ocH+SSvQIXY9pQeJ+iA
	0iQX3K9Et0Lwpqmb44391atM/oaaA4ayXn9sZH8NIkJOm8EII6T5kSUcrRXUO7MG0XMz1ShBYBGc6
	D/aQxddFBqTTzTtQasMZPpG0BWTIh1USjmeoQ40g8zObJxpp1H5Ig9AhElISw1HBjGVSsAEQMZtXT
	mi/W7lom0a77ZMCNMvBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0PKX-0003Ux-L2; Wed, 21 Aug 2019 12:03:09 +0000
Received: from smtprelay0083.hostedemail.com ([216.40.44.83]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PHC-0000e3-7v
 for linux-mediatek@lists.infradead.org; Wed, 21 Aug 2019 11:59:47 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 9803D1802B9F8;
 Wed, 21 Aug 2019 11:59:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3871:4321:4605:5007:10004:10400:10848:11232:11657:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30070:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: bead95_6e7a6e0c32b4a
X-Filterd-Recvd-Size: 2118
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Wed, 21 Aug 2019 11:59:19 +0000 (UTC)
Message-ID: <5613f082389460cb8de4251c08038c914683bd49.camel@perches.com>
Subject: Re: [PATCH v2] mt76: fix some checkpatch warnings
From: Joe Perches <joe@perches.com>
To: Ryder Lee <ryder.lee@mediatek.com>, Felix Fietkau <nbd@nbd.name>, 
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Date: Wed, 21 Aug 2019 04:59:16 -0700
In-Reply-To: <4ff1174b111ab61e147510ffbcde706d1a00600d.1566356513.git.ryder.lee@mediatek.com>
References: <4ff1174b111ab61e147510ffbcde706d1a00600d.1566356513.git.ryder.lee@mediatek.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_045943_527497_D9E1C69C 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.83 listed in list.dnswl.org]
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

On Wed, 2019-08-21 at 11:11 +0800, Ryder Lee wrote:
> This fixes the following checkpatch warnings:
> CHECK: Alignment should match open parenthesis
> CHECK: No space is necessary after a cast
> 
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> ---
> Changes since v2: remove false positive checkpatch warnings.

What were those?

> diff --git a/drivers/net/wireless/mediatek/mt76/dma.c b/drivers/net/wireless/mediatek/mt76/dma.c
[]
> @@ -587,8 +589,8 @@ mt76_check_sta(struct mt76_dev *dev, struct sk_buff *skb)
>  	}
>  
>  	if (ieee80211_has_morefrags(hdr->frame_control) ||
> -		!(ieee80211_is_mgmt(hdr->frame_control) ||
> -		  ieee80211_is_data(hdr->frame_control)))
> +	    !(ieee80211_is_mgmt(hdr->frame_control) ||
> +	    ieee80211_is_data(hdr->frame_control)))

Poor alignment here.

This should be:

	if (ieee80211_has_morefrags(hdr->frame_control) ||
	    !(ieee80211_is_mgmt(hdr->frame_control) ||
	      ieee80211_is_data(hdr->frame_control)))



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
