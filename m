Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA865E2A66
	for <lists+linux-mediatek@lfdr.de>; Thu, 24 Oct 2019 08:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+5hRMkBLvyNZawnVLbRcMkC1Nywhk+N152T8lRzv1I=; b=a1aN5mN+zeqhPp
	Hg9q1nfAF8Wk7MUQnLgTOIfqMpTUq2v85Oax6ffE6Zij+Qs6fLwcDQJJWdDDLR8S+BgC0Dj692aTg
	yI71j4fEsronYuUPZk0+kwUKh/x0cUU0A0cipihCl6WL3iZz/wPvFe7xId/j/z14UDOtwScgX5AlE
	jPdZgEl3T5Lf5kY/7ucIOvKaPMLksYFwZ5NNhx+g4ATOMrY0Q4F3oSqozo8PeuxcTvfV7AQ+53Bd5
	y1wiwYAk4nHb5FyTA52LRjnZX7uyC343ujDeg//x1kQic+8wx1W0HRG2IDJq/xWfn7R4J4t8NQOEn
	W5J/QTPOMfn2iu0AutFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNWYh-0005nP-Ta; Thu, 24 Oct 2019 06:25:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNWYf-0005mf-5q; Thu, 24 Oct 2019 06:25:18 +0000
X-UUID: a874f3a9fc704192ac3b215dc9f2d57b-20191023
X-UUID: a874f3a9fc704192ac3b215dc9f2d57b-20191023
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <luhua.xu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1452921731; Wed, 23 Oct 2019 22:25:06 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 23 Oct 2019 23:25:09 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 24 Oct 2019 14:25:08 +0800
Received: from [10.15.20.246] (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 24 Oct 2019 14:25:07 +0800
Message-ID: <1571898319.4311.3.camel@mbjsdccf07>
Subject: Re: [PATCH 1/1] spi: mediatek: add power control when set_cs
From: luhua xu <luhua.xu@mediatek.com>
To: Mark Brown <broonie@kernel.org>
Date: Thu, 24 Oct 2019 14:25:19 +0800
In-Reply-To: <20191023151121.GC5723@sirena.co.uk>
References: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
 <1571834322-1121-2-git-send-email-luhua.xu@mediatek.com>
 <20191023151121.GC5723@sirena.co.uk>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_232517_223758_00065BDF 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-10-23 at 16:11 +0100, Mark Brown wrote:
> On Wed, Oct 23, 2019 at 08:38:42AM -0400, Luhua Xu wrote:
> > From: "luhua.xu" <luhua.xu@mediatek.com>
> 
> > Use runtime PM to power spi when set_cs
> > As set_cs may be called from interrupt context,
> > set runtime PM IRQ safe for spi.
> 
> Why might we be trying to set the chip select state while the device is
> runtime idle?  It seems like whatever is trying to set the chip select
> should be dealing with this, not the chip select operation itself since
> that's unlikely to be happening in isolation.

Hi Mark,
Spi framework provideds  spi_setup() to modify spi settings for spi
device (maybe spi is runtime idle now), and this will call
spi_controller->set_cs() accessing registers.
Other spi_controller callbacks that need to access hardware registers,
are triggered by spi transfer. Spi framework will get and put runtime
power in __spi_pump_message().


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
