Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDC815BA5D
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Feb 2020 08:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSdQGFq5LL4iZfyiWaVSNeqTyGaf+8EVaKf9mRrJ8E0=; b=BVjrwgtgkAm634
	yiSNovc5SnULs3jA4jBBpFdf1+bL4P/9tWfWmA22FEe25IgvLzrrD4t1+oVziyNuF5UwSHDKZ5StD
	So8PEhbUECe9TpEgnyMMBPL/LxrFcTSIxrEmzLhyL1iVjY2LqnEXo4r3696/Eniy3nByXy51moLXi
	0UVfhSV6T01amuFG/wMVUHVkBELG7gF0u5LRmeNtEHhdhIwt++m6UqGph6DZ5vYN1DG9q5YAO144y
	lBUmjKgjyO1tMAylswsl3iYN5XBicYHiswWRe2TBGpT+QH0DN+PL2VIR7Y6RER/9FaXFPpD4Sk2uV
	QShohVvFRJ0G5VxTedww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29Nw-0000Zc-FN; Thu, 13 Feb 2020 07:58:08 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29Ns-0000Ys-NA
 for linux-mediatek@lists.infradead.org; Thu, 13 Feb 2020 07:58:06 +0000
Received: by mail-qk1-x741.google.com with SMTP id d11so4798665qko.8
 for <linux-mediatek@lists.infradead.org>; Wed, 12 Feb 2020 23:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=63SchGggoiyVI5EN3ryL83QTa83h0sF68yqzlCCOYPA=;
 b=dKMEN31/0+UPjXjjiovyaJUVBlun8Po5VfH13AHcZMUXJDuSs1EI8nWJXKA7w7uhm7
 ZFZz9QipKQ788oZVIHCnev3yFTRL7P+gk1Dj0VbcEMXdofR1rbh4c1ZuIizRumh9PFo7
 XasDtmmhv2Ji6x1dAjrj+mXlEzg1Y9xWMKswM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=63SchGggoiyVI5EN3ryL83QTa83h0sF68yqzlCCOYPA=;
 b=Ur5S6Mnist8/9JexvT/EQgo2Vpa+qm+YZLmc5ZRIh1PXDE9fO43RgdTUBdnsLSMMx9
 jP2UE0GZrkSaEZzGrrGdbF2Oik2K1sIhgwdqWsxd+DoNBG6tGJzTUsFMD16u4fu3/mfJ
 97MvLOB9H8P4VN4aKglcdsdgXy4biMoTYW/+r/dZxPfNo3H7wkXm26CQd4MAM8QCbtj+
 xK8lqvQfDB3XOmaEz60b2IiswgcJxQVOomH/tsovY/EZaEP35lxkG3u8ugSu53tyxn6E
 PitKJI7EfhDXvuSrxa0g9mT6GfI/OblyYYUDce04phz/1Lgg/7zKNE4bUWkHy+rjjzI3
 FnJw==
X-Gm-Message-State: APjAAAX8U+tpNW+3VLT89dqvfX4atGUBMKR4/lC/RMykPVSD/2uSFipw
 LSVvfyyeAry7fM0Hivs1wegrjWdFFiLo8hjN/CA1aQ==
X-Google-Smtp-Source: APXvYqxdfgmZS7tZ6HGaEuN1SVX0b/SGRzgpoe8N6khQQjmKFbfTE+Cbo3vlrlKewIFqbPKGpw+YYWx3Re780dY9rnc=
X-Received: by 2002:a37:6595:: with SMTP id
 z143mr11648233qkb.457.1581580683445; 
 Wed, 12 Feb 2020 23:58:03 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-8-drinkcat@chromium.org>
 <CANMq1KBL-S2DVKbCB2h_XNpfUro+pZ96-C5ft0p-8GX_tbXELQ@mail.gmail.com>
 <CAL_JsqLuo+2G2MjiwS9cwNhMV2pGBojXFGNqEfLv3fP-Y04mfA@mail.gmail.com>
In-Reply-To: <CAL_JsqLuo+2G2MjiwS9cwNhMV2pGBojXFGNqEfLv3fP-Y04mfA@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 13 Feb 2020 15:57:52 +0800
Message-ID: <CANMq1KCn5rrOrv2GjFh5Aau5Los4VVk=NMWAsvZiNuwoxyMVHA@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] RFC: drm/panfrost: devfreq: Add support for 2
 regulators
To: Rob Herring <robh+dt@kernel.org>, Weiyi Lu <weiyi.lu@mediatek.com>, 
 Nick Fan <nick.fan@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_235804_780561_D406B00E 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

+Weiyi Lu +Nick Fan @MTK who may have more ideas.

On Thu, Feb 13, 2020 at 2:14 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Wed, Feb 12, 2020 at 2:49 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > +Viresh Kumar +Stephen Boyd for clock advice.
> >
> > On Fri, Feb 7, 2020 at 1:27 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > The Bifrost GPU on MT8183 uses 2 regulators (core and SRAM) for
> > > devfreq, and provides OPP table with 2 sets of voltages.
> > >
> > > TODO: This is incomplete as we'll need add support for setting
> > > a pair of voltages as well.
> >
> > So all we need for this to work (at least apparently, that is, I can
> > change frequency) is this:
> > https://lore.kernel.org/patchwork/patch/1192945/
> > (ah well, Viresh just replied, so, probably not, I'll check that out
> > and use the correct API)
> >
> > But then there's a slight problem: panfrost_devfreq uses a bunch of
> > clk_get_rate calls, and the clock PLLs (at least on MTK platform) are
> > never fully precise, so we get back 299999955 for 300 Mhz and
> > 799999878 for 800 Mhz. That means that the kernel is unable to keep
> > devfreq stats as neither of these values are in the table:
> > [ 4802.470952] devfreq devfreq1: Couldn't update frequency transition
> > information.
> > The kbase driver fixes this by remembering the last set frequency, and
> > reporting that to devfreq. Should we do that as well or is there a
> > better fix?
> >
> > Another thing that I'm not implementing is the dance that Mediatek
> > does in their kbase driver when changing the clock (described in patch
> > 2/7):
> > ""
> > The binding we use with out-of-tree Mali drivers includes more
> > clocks, this is used for devfreq: the out-of-tree driver switches
> > clk_mux to clk_sub_parent (26Mhz), adjusts clk_main_parent, then
> > switches clk_mux back to clk_main_parent:
> > (see https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.19/drivers/gpu/arm/midgard/platform/mediatek/mali_kbase_runtime_pm.c#423)
> > clocks =
> >         <&topckgen CLK_TOP_MFGPLL_CK>,
> >         <&topckgen CLK_TOP_MUX_MFG>,
> >         <&clk26m>,
> >         <&mfgcfg CLK_MFG_BG3D>;
> > clock-names =
> >         "clk_main_parent",
> >         "clk_mux",
> >         "clk_sub_parent",
> >         "subsys_mfg_cg";
> > ""
> > Is there a clean/simple way to implement this in the clock
> > framework/device tree? Or should we implement something in the
> > panfrost driver?
>
> Putting parent clocks into 'clocks' for a device is a pretty common
> abuse. The 'assigned-clocks' binding is what's used for parent clock
> setup. Not sure that's going to help here though. Is this dance
> because the parent clock frequency can't be changed cleanly?

Nick/Weiyi, any idea why we do that dance in the first place? (maybe
the PLL clock is unstable while it's being changed?)

If we really need it, can we move that logic to the clock core?

> If up to
> me, I'd put that dance in the clock driver. The GPU shouldn't have to
> care.
>
> Rob

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
