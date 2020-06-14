Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4FB1F8ABD
	for <lists+linux-mediatek@lfdr.de>; Sun, 14 Jun 2020 22:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cryz0Ujr+4qAyhSn5BGJiJDPB4Pkdoqi3lXMTYRZMlk=; b=pzlcPUCno8V2jh
	vVXhR6RRMRPxPjYeTxutmL2ONiOprf7BaFPtca+G8ad8Qih13AUNLuNUqcfut1kyPi6yNi9c2vDI4
	e+FSOhi/sraCwEtBa4NTCc6ykuZQ0mxD+5hhAdVFwuilrwlkM2vTLFA1YdIOTDPPvcrQKklMvkRnA
	YnsoPOyNM5W6WofNvUdDZnDqoUT1Bls26tfuFebwbG2Bl+3skOeczf2LlddjmxjwuTYlVxXsH20pv
	3ekSnKcX0J+PI2x+gCMc2uGc5lFPAAvKb+hc/wYiVfQKHUe1eEVFgIVc8DohX+3AW1nCpCSG3ByQx
	c7abBV4mn0Lq3rr/0vBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkZS6-0002P8-6c; Sun, 14 Jun 2020 20:42:02 +0000
Received: from smtprelay0068.hostedemail.com ([216.40.44.68]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkZRw-0002IT-Cn; Sun, 14 Jun 2020 20:41:53 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 79E4F15E7;
 Sun, 14 Jun 2020 20:41:44 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3870:3871:4321:4605:5007:9121:10004:10400:10848:11026:11232:11233:11473:11657:11658:11914:12043:12048:12296:12297:12438:12679:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21433:21451:21627:21990:30012:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: error76_4e1659226df0
X-Filterd-Recvd-Size: 1906
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Sun, 14 Jun 2020 20:41:42 +0000 (UTC)
Message-ID: <48891eaf60c5e0c449e573a906894db2c3a7b72c.camel@perches.com>
Subject: Re: [PATCH] drm/mediatek: remove unnecessary conversion to bool
From: Joe Perches <joe@perches.com>
To: Bernard Zhao <bernard@vivo.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>,  Philipp Zabel <p.zabel@pengutronix.de>, David
 Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,  Matthias
 Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,  linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Sun, 14 Jun 2020 13:41:41 -0700
In-Reply-To: <20200612124007.4990-1-bernard@vivo.com>
References: <20200612124007.4990-1-bernard@vivo.com>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_134152_495063_0060FB34 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.68 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: opensource.kernel@vivo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2020-06-12 at 20:40 +0800, Bernard Zhao wrote:
> In function mtk_dsi_clk_hs_state, remove unnecessary conversion
> to bool return, this change is to make the code a bit readable.
[]
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
[]
> @@ -319,7 +319,7 @@ static bool mtk_dsi_clk_hs_state(struct mtk_dsi *dsi)
>  	u32 tmp_reg1;
>  
>  	tmp_reg1 = readl(dsi->regs + DSI_PHY_LCCON);
> -	return ((tmp_reg1 & LC_HS_TX_EN) == 1) ? true : false;
> +	return ((tmp_reg1 & LC_HS_TX_EN) == 1);

Given:

drivers/gpu/drm/mediatek/mtk_dsi.c:#define LC_HS_TX_EN                  BIT(0)

This is likely clearer as

	return tmp_reg1 & LC_HS_TX_EN;

or even

static bool mtk_dsi_clk_hs_state(struct mtk_dsi *dsi)
{
	return readl(dsi->regs + DSI_PHY_LCCON) & LC_HS_TX_EN;
}



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
