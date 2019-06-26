Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C739560FF
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 05:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8G/EFTz6MUzQgvxlMhrbo7cJGOzdtLV/melekEcQ8w=; b=IIgEA4F29rUY+t
	IROibAwieKpAe7aCOWEsE49r8NbtLiwf332bvd2m32qS54rNpWSykZ7FRA56VLTSgn+nGf4/NKosl
	QNzYNl9/q9qvPis8pjeEe4o4sSM7rVO6tpJeW5UiUPrtNrleFlfNjHza9WqEs8zr9iHDSm5klG2La
	S5yzvHGXit4/dmeSA+EvMfDc08yNTwaLRXdHK+EnMEa/TEvQkdX7qZeh5/pfMrrjn+jFt7zVZiCTW
	j9Od86Gcxbt6fzBJRcUMZgzYagfWw12ExkYdMPQo5sJESE6acBGaM9+TbDJ7OS2+pvUA3DN84JryX
	S0o4oVwFyQVGX5+EyPFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfyzx-0000at-C9; Wed, 26 Jun 2019 03:53:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfyzG-0000NE-NW; Wed, 26 Jun 2019 03:52:48 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4591A20659;
 Wed, 26 Jun 2019 03:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561521166;
 bh=YtbDfJl0BWbBYAdPqlHUFfwmDl41K3e4m55oYYuQFmo=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=bPsaerdHt5VMFIeTHZlGLf2VI08qXlLs9kDyiLi5peBR1pEi2qEpNBqFLRFqHt2tJ
 sJFDz0U1eeN6X9MULqO9W6PnSJib8wD826AlNWh7Kkis6a8vESxxO0+Po1znPJvX9G
 y06ljy6KIeOz0PidhfhJwl59jSvNEJSW2fiWZAC4=
MIME-Version: 1.0
In-Reply-To: <1561511122.24282.10.camel@mtksdaap41>
References: <1560138293-4163-1-git-send-email-weiyi.lu@mediatek.com>
 <20190625221415.B0DC22086D@mail.kernel.org>
 <1561511122.24282.10.camel@mtksdaap41>
To: Weiyi Lu <weiyi.lu@mediatek.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1] clk: core: support clocks that need to be enabled during
 re-parent
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 20:52:45 -0700
Message-Id: <20190626035246.4591A20659@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_205246_785938_09C2A228 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Liao <jamesjj.liao@mediatek.com>, srv_heupstream@mediatek.com,
 Biao Huang <biao.huang@mediatek.com>, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Weiyi Lu (2019-06-25 18:05:22)
> On Tue, 2019-06-25 at 15:14 -0700, Stephen Boyd wrote:
> > Quoting Weiyi Lu (2019-06-09 20:44:53)
> > > When using property assigned-clock-parents to assign parent clocks,
> > > core clocks might still be disabled during re-parent.
> > > Add flag 'CLK_OPS_CORE_ENABLE' for those clocks must be enabled
> > > during re-parent.
> > > 
> > > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > 
> > Can you further describe the scenario where this is a problem? Is it
> > some sort of clk that is enabled by default out of the bootloader and is
> > then configured to have an 'assigned-clock-parents' property to change
> > the parent, but that clk needs to be "enabled" so that the framework
> > turns on the parents for the parent switch?
> 
> When driver is built as module(.ko) and install at runtime after the
> whole initialization stage. Clk might already be turned off before
> configuring by assigned-clock-parents. For such clock design that need
> to have clock enabled during re-parent, the configuration of
> assigned-clock-parents might be failed. That's the problem we have now.

Great. Please put this sort of information in the commit text.

> Do you have any suggestion for such usage of clocks? Many thanks.
> 

Ok, and in this case somehow CLK_OPS_PARENT_ENABLE flag doesn't work? Is
that because the clk itself doesn't do anything unless it's enabled?  I
seem to recall that we usually work around this by caching the state of
the clk parents or frequencies and then when the clk prepare or enable
op is called we actually write the hardware to change the state. There
are some qcom clks like this and we basically just use the hardware
itself to cache the state of the clk while it hasn't actually changed to
be at that rate, because the clk is not enabled yet.

The main concern is that we're having to turn on clks to make things
work, when it would be best to not turn on clks just so that register
writes actually make a difference to what the hardware does.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
