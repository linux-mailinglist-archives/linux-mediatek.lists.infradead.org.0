Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64889A5F88
	for <lists+linux-mediatek@lfdr.de>; Tue,  3 Sep 2019 05:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkasboLVUF+MaQcJxNQhfvvXAdAgQ1iByX6//cMf3n0=; b=mnVhfhN3ggRP3W
	5IrZ3c9uTWKYSMmkqvFuqaEQRmoHmlUB1Y+vSZwIkrsvPbdOZYZ1Y/KQ8eEfEf5WAhB97lkeICGpq
	abRcZVqCX4DpVZJzkirw7gr1vtSDfUlqq4tpnSmsP95tKLt+1pFyZz8w3bsbnrJVq12e3skPQgAHa
	DsmXv7MinCKUIoN0FWtv/hjDN0u5IMHBvkk5hQhjIEPoXUjGYn2Mrf14FVXeaW0L5vlvgvZ53Nutq
	joihLZ7Qw88l2CowYCD4CSe1WnVNW7MfFJXSja8n8AkqWisnoGRKkRNGObzqoQZkCXnOwfx6rKj+o
	A7xflhofSigHQPHowaWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4zBS-0002ez-Mh; Tue, 03 Sep 2019 03:08:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4zB1-0002X3-9W; Tue, 03 Sep 2019 03:08:17 +0000
X-UUID: c40574eb1e9b4d009ae59823a3478818-20190902
X-UUID: c40574eb1e9b4d009ae59823a3478818-20190902
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1249448002; Mon, 02 Sep 2019 19:08:10 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 20:08:09 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 11:08:07 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Sep 2019 11:08:07 +0800
Message-ID: <1567480086.22890.21.camel@mtksdaap41>
Subject: Re: [RFC v1] clk: core: support clocks that need to be enabled
 during re-parent
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Stephen Boyd <sboyd@kernel.org>
Date: Tue, 3 Sep 2019 11:08:06 +0800
In-Reply-To: <20190626035246.4591A20659@mail.kernel.org>
References: <1560138293-4163-1-git-send-email-weiyi.lu@mediatek.com>
 <20190625221415.B0DC22086D@mail.kernel.org>
 <1561511122.24282.10.camel@mtksdaap41>
 <20190626035246.4591A20659@mail.kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_200815_339600_EC998753 
X-CRM114-Status: GOOD (  24.97  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, srv_heupstream@mediatek.com,
 Biao Huang <biao.huang@mediatek.com>, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-06-25 at 20:52 -0700, Stephen Boyd wrote:
> Quoting Weiyi Lu (2019-06-25 18:05:22)
> > On Tue, 2019-06-25 at 15:14 -0700, Stephen Boyd wrote:
> > > Quoting Weiyi Lu (2019-06-09 20:44:53)
> > > > When using property assigned-clock-parents to assign parent clocks,
> > > > core clocks might still be disabled during re-parent.
> > > > Add flag 'CLK_OPS_CORE_ENABLE' for those clocks must be enabled
> > > > during re-parent.
> > > > 
> > > > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > > 
> > > Can you further describe the scenario where this is a problem? Is it
> > > some sort of clk that is enabled by default out of the bootloader and is
> > > then configured to have an 'assigned-clock-parents' property to change
> > > the parent, but that clk needs to be "enabled" so that the framework
> > > turns on the parents for the parent switch?
> > 
> > When driver is built as module(.ko) and install at runtime after the
> > whole initialization stage. Clk might already be turned off before
> > configuring by assigned-clock-parents. For such clock design that need
> > to have clock enabled during re-parent, the configuration of
> > assigned-clock-parents might be failed. That's the problem we have now.
> 
> Great. Please put this sort of information in the commit text.
> 

OK, I'll do when sending next version.

> > Do you have any suggestion for such usage of clocks? Many thanks.
> > 
> 
> Ok, and in this case somehow CLK_OPS_PARENT_ENABLE flag doesn't work? Is
> that because the clk itself doesn't do anything unless it's enabled?  I
> seem to recall that we usually work around this by caching the state of
> the clk parents or frequencies and then when the clk prepare or enable
> op is called we actually write the hardware to change the state. There
> are some qcom clks like this and we basically just use the hardware
> itself to cache the state of the clk while it hasn't actually changed to
> be at that rate, because the clk is not enabled yet.
> 

Hi Stephen,

Will you recommend if we cache the state in the platform driver instead
of the hardware itself and then change the state when clk enable op is
called if we don't have such hardware design on MTK clocks?

> The main concern is that we're having to turn on clks to make things
> work, when it would be best to not turn on clks just so that register
> writes actually make a difference to what the hardware does.
> 

In my view, it's a safe operation to enable clock shortly to make things
work when its child clock is still disabled. What do you think?


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
