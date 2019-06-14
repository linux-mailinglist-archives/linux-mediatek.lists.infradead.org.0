Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA014584F
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 11:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NU4lVoNmHjpFD6uhaYgkYS6FCU7zWN9tYA/0rvenvfQ=; b=iljY+usY9OGxAT
	g91E3EmtK4QjZiW/V4VZYozGOPTZqlvYzCKsaj9wc/0C8ldYAkTeQ82hI7+xKTGMPKXSEZwqe66+4
	SoY/YyqsXHK9RMq7j5hw9pZ4LUiyhOb7r3jkODW6BcnCwwo7Gc2BYBf5uoCBB0gthlLuDfq3/hMRz
	fWaKjWHtAMFw1hnoJR0x5Srk5Y0kyWoC41gXjB2Zd1fbqvyBSdbosfyUjCx9KpdZAaUnXa0ABuOzU
	OkEI4c2BNc3D3IJMphSIGH0WrjzavgdGq3DicGI9424RUNMdmzuc259s+3iDmm/R2jLxeQSxwW77o
	LxSjyCGuE+VYdFEMatfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiFn-00029d-8s; Fri, 14 Jun 2019 09:12:11 +0000
Received: from smtprelay0104.hostedemail.com ([216.40.44.104]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiFi-00028t-T4
 for linux-mediatek@lists.infradead.org; Fri, 14 Jun 2019 09:12:08 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 7610C182CF668;
 Fri, 14 Jun 2019 09:11:54 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3874:4321:5007:10004:10400:10848:11026:11232:11657:11658:11914:12043:12048:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:27,
 LUA_SUMMARY:none
X-HE-Tag: eyes88_4aa5799cf532f
X-Filterd-Recvd-Size: 1967
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Fri, 14 Jun 2019 09:11:52 +0000 (UTC)
Message-ID: <9fd990d12ea1488592c5a590046f001a187b9c3f.camel@perches.com>
Subject: Re: [PATCH v2] media: mtk-vcodec: remove unneeded proxy functions
From: Joe Perches <joe@perches.com>
To: Alexandre Courbot <acourbot@chromium.org>, Tiffany Lin
 <tiffany.lin@mediatek.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Mauro Carvalho Chehab
 <mchehab@kernel.org>, Yunfei Dong <yunfei.dong@mediatek.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>
Date: Fri, 14 Jun 2019 02:11:51 -0700
In-Reply-To: <20190614075640.106709-1-acourbot@chromium.org>
References: <20190614075640.106709-1-acourbot@chromium.org>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_021207_018618_9F770942 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.104 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.40.44.104 listed in wl.mailspike.net]
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-06-14 at 16:56 +0900, Alexandre Courbot wrote:
> We were getting the codec interface through a proxy function that does
> not bring anything compared to just accessing the interface definition
> directly, so just do that. Also make the decoder interfaces const.
[]
> diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
[]
> @@ -485,16 +485,9 @@ static int vdec_h264_get_param(void *h_vdec, enum vdec_get_param_type type,
>  	return 0;
>  }
>  
> -static struct vdec_common_if vdec_h264_if = {
> +const struct vdec_common_if vdec_h264_if = {

probably better to fixup whatever chains prevent
this (if any) from being static const

>  	.init		= vdec_h264_init,
>  	.decode		= vdec_h264_decode,
>  	.get_param	= vdec_h264_get_param,
>  	.deinit		= vdec_h264_deinit,
>  };



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
