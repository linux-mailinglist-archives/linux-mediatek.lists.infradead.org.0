Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E101C5682
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 15:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzFq6K/TFgBv3x5ChWwNPeeCaB2GIiUI7bi+kXmiSLw=; b=ZW3C8WPh4XpjcJ
	F4XHsd3y0qWaDkBEdodppSxdQpAqjteFrwgUMxbiMZCTbtAwWW/kZ+8iVcbRJfK4ZeAtHIEIylAOX
	+Ovo6onOrGfwTtN45TVFugyP3r/k6YNev4z+k68ayjL2H9YB5gWobyLizpgZZF79urUHfX6276X7w
	1AUPkLjy6rCoSwo2IfFaHmYiPQM1fECXwwFBYh/6+qoJbHZeJLUcjJtijZsohRleyiRqtP96YgIeZ
	/j8Bj2q/kiM+DImUNWUdXclhXNppGEFyG1y9lVrIISXtf/wvIQ5WOThvC8ohPt1lK42kBEC8lBjAX
	57vkkFIxJgtKm58ia+vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxP3-0005w6-Nm; Tue, 05 May 2020 13:14:29 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxOv-0005ok-DB
 for linux-mediatek@lists.infradead.org; Tue, 05 May 2020 13:14:23 +0000
Received: by mail-vk1-xa43.google.com with SMTP id i185so454062vki.12
 for <linux-mediatek@lists.infradead.org>; Tue, 05 May 2020 06:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KsKPjiGD3v4nUxVeceFtJMoKp1s3SQbqenpM+1b5fpE=;
 b=Q6M4ixDU2PotV5YdJgoaS65scBDD6EAK+e/FJ2k1P714fM2+ma/nd5sp+bpfD27UVO
 2kOF/9ZAJFgzAKFeADd0tl29NS0TvsAh3YeCxegL5YSiVjF7ksh76GSUbvaUDqTX8uXh
 o9S/F0lMuVNGeszZH3z6ZofBBG1wX7LqQR6Scd2p98dIUlxRKKpJx0Yf8mIwC28JTX4r
 38nGUJEoUmUkwtPmtVrgDrX3SI3ZoEFcf5KoUF9GQUAlwZ/Oc3/7RgT/gHspux4FJccO
 4s/pqW1rIJtiHAEZiptpqSbPzaE3wp0fhO8/2DpcnjTSSlZLAs1b3k3HVHHlhAMSXD2H
 bVnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KsKPjiGD3v4nUxVeceFtJMoKp1s3SQbqenpM+1b5fpE=;
 b=p7dAtq5UsR3Nvg/rz4JHaT+mkw0ZTZZQfn52bj0/QM3T3i7vn8EwiRm4FI2z0IsJJD
 DEunN0YdRyG4m/k+00dckEFR8lxRJtf207AMQ92oHIewCBuNS1FfyhJVSy1eOr5nTH50
 ELxppBz0f8/tBmYwSBd+FkmeQ2iIkRAKE0451kQ90HCm5aLFcEos6kRwyY0ptLM54/sz
 Gw3Grb+9cW1CyZRsKk7dZ0Wub9rW93zsbujI8ctXSRNSyx8ADsM7lTIOsuwTcG5CEUk6
 kgQcRkpe/va6n+7qOJklOlunSGVv9MlxgjpGzjMEci+b7z9KRb6RuA/ZRvlgtLPYb8bX
 tBIQ==
X-Gm-Message-State: AGi0PubLGp04Vl3QWbgTr67zUPbqBQ0vKNrcj3AtSgqMuL3JzJsAqyDm
 nlaGrgPpuPkfiHA1fB6jQ6xg5Ftghd7VGSmpcSPV4w==
X-Google-Smtp-Source: APiQypL23qkTilWzBqjmhYQagYrDFEGN5QpB7ggXhJdp6TA6imXwX7wzy+FyjvuNooK6Ym4XpnfNvG/wJBlCpSZu2PQ=
X-Received: by 2002:a1f:ff11:: with SMTP id p17mr2234355vki.25.1588684458767; 
 Tue, 05 May 2020 06:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
 <1586835611-13857-2-git-send-email-yong.mao@mediatek.com>
 <CAPDyKFo40tBpowmWN3gxH8b=jMmCK8O5ALNQ7y6XZ5AosX=GUA@mail.gmail.com>
 <1588066038.30914.28.camel@mhfsdcap03>
 <CAPDyKFrBd0E2Qy89JgTE3YH0iiXB7due0JmnSVAhYL5aubSczA@mail.gmail.com>
 <1588148417.10768.18.camel@mhfsdcap03>
In-Reply-To: <1588148417.10768.18.camel@mhfsdcap03>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 5 May 2020 15:13:42 +0200
Message-ID: <CAPDyKFrtaCcFK+nRMH4wysA2ALguea8E+gdnr-CfQhQtpr5jdA@mail.gmail.com>
Subject: Re: [PATCH 1/3] mmc: core: need do mmc_power_cycle in
 mmc_sdio_resend_if_cond
To: "yong.mao@mediatek.com" <yong.mao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_061421_445846_D57FE819 
X-CRM114-Status: GOOD (  45.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 at 10:21, yong.mao@mediatek.com
<yong.mao@mediatek.com> wrote:
>
> On Tue, 2020-04-28 at 14:13 +0200, Ulf Hansson wrote:
> > On Tue, 28 Apr 2020 at 11:28, yong.mao@mediatek.com
> > <yong.mao@mediatek.com> wrote:
> > >
> > >
> > > On Fri, 2020-04-24 at 12:09 +0200, Ulf Hansson wrote:
> > > > On Tue, 14 Apr 2020 at 05:40, Yong Mao <yong.mao@mediatek.com> wrote:
> > > > >
> > > > > From: yong mao <yong.mao@mediatek.com>
> > > > >
> > > > > When mmc_sdio_resned_if_cond is invoked, it indicates the SDIO
> > > > > device is not in the right state. In this condition, the previous
> > > > > implementation of mmc_sdio_resend_if_cond can't make sure SDIO
> > > > > device be back to idle state. mmc_power_cycle can reset the SDIO
> > > > > device by HW and also make sure SDIO device enter to idle state
> > > > > correctly.
> > > > >
> > > > > Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> > > > > ---
> > > > >  drivers/mmc/core/sdio.c | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > >
> > > > > diff --git a/drivers/mmc/core/sdio.c b/drivers/mmc/core/sdio.c
> > > > > index ebb387a..ada0a80 100644
> > > > > --- a/drivers/mmc/core/sdio.c
> > > > > +++ b/drivers/mmc/core/sdio.c
> > > > > @@ -546,6 +546,7 @@ static int mmc_sdio_init_uhs_card(struct mmc_card *card)
> > > > >  static void mmc_sdio_resend_if_cond(struct mmc_host *host,
> > > > >                                     struct mmc_card *card)
> > > > >  {
> > > > > +       mmc_power_cycle(host, host->card->ocr);
> > > >
> > > > This looks wrong to me. mmc_sdio_resend_if_cond() is called from two places.
> > > >
> > > > 1. In the case when mmc_set_uhs_voltage() fails in
> > > > mmc_sdio_init_card(), which means a call to mmc_power_cycle() has
> > > > already been done.
> > > >
> > >   Thanks for your comment.
> > >   Yes. It is right that mmc_power_cycle() has already been done when
> > >   mmc_sdio_resend_if_cond() is called. In normal re-initialization case,
> > >   this mmc_power_cycle() (currently in 1.8v voltage and 208Mhz clock)
> > >   can make SDIO device really back to idle state. Unfortunately, in some
> > >   special SDIO device, it will enter to unstable state.
> > >
> > >   At this unstable state, device may keep data0 always low after receiving CMD11.
> > >   And then every other SDIO CMD can't be sent to device any more due to card
> > >   is busy(data0 is low). Therefore, previous implementation can't save the
> > >   device. At this time, mmc_power_cycle() may be the final solution to make
> > >   sure SDIO device can back to idle state correctly.
> >
> > Well, this still sounds a bit vague to me. I need to understand more
> > exactly under what circumstances the problem occurs.
> >
> > What platform are you testing with and what SDIO card is being used?
>  The platform information is mt8173 + Marvell sdio device + kernel-3.18

I see, thanks for sharing this information. Forward/backporting
against 3.18 is hard, perhaps impossible when it comes to this, sorry.

A lot of SDIO core parts, especially related to re-initialization and
power management have been changed since v3.18.

"git log --oneline v3.18..v5.7-rc4 drivers/mmc/core/sdio*" will tell you.

Would it be possible to move to a later kernel and test instead? I
mean, the problem may already have been solved!? mt8173 should be
rather well supported upstream, but perhaps lots are missing for the
SDIO parts?

>
> >
> > Is the problem happening during the system resume phase?
>   The problem happen when mmc_sdio_runtime_resume is invoked.
> >
> > Are the SDIO func driver using runtime PM and then is the host capable
> > of MMC_CAP_POWER_OFF_CARD?
> >
>   Yes. SDIO func driver uses runtime PM and MMC_CAP_POWER_OFF_CARD is
> enabled.

Alright, that explains the use case, thanks!

>
> > Is it easy to reproduce the problem for you?
> >
>  There are only two units out of many produced units that can always
> reproduce this issue.

An idea to possibly help to narrow down the problem, could be to
implement an "test SDIO func driver" and use that rather than the
mwifiex driver (which I assume is the one you are using?). Then we
could run various tests from it, like calling pm_runtime_get|put() for
example.

We already have a similar thing to replace the mmc/sd block device
driver, so this could be useful for testing SDIO cards/funcs I think.

>
> > >
> > > > 2. Wen sdio_read_cccr() fails and when we decide to retry the UHS-I
> > > > voltage switch. Then perhaps it could make sense to run a power cycle.
> > > > But if so, we better do it only for that path.
> > > >
> > > > I will continue to look a bit, as I think there are really more issues
> > > > that we may want to look into while looking at this piece of code.
> > > > However, allow me some more time before I can provide some more ideas
> > > > of how to move forward.
> > >   In the actual project, we do encounter many relative issues about re-initialized card.
> > >   The following two categories are the most common issue we met before.
> > >   A. the SDIO card is initialized by UHS-I mode at the first time, but will be
> > >      re-initialized by High Speed mode at the second time.
> > >      ==> All this type of issues is relative with S18A in response of CMD5.
> > >          And most of the issues are related to the interval between powering off and
> > >          powering on card.

This sounds a bit like the card gets re-initialized without it first
being properly power cycled.

Perhaps you call mmc_sw_reset() for a "test SDIO func driver", which
re-initializes the card, but without doing a power cycle. Then that
should give you the similar problem?

> > >   B. If there is something wrong in the flow of voltage switch(after CMD11), card will
> > >      always keep all data pins to low. And then it hangs up because data0 is always low.
> > >   Hope this information will be helpful for you.

I keep repeating myself, but there seems to be a problem with the
power cycling of the SDIO card.

> >
> > Thanks for sharing these details! I think we need to continue to debug
> > this issue, to fully understand.
> >
> > In principle, it sounds to me that maybe mmc_power_cycle(), isn't
> > really successfully power-cycling the SDIO card. Perhaps insert a few
> > delays or so in that code to see how that would affect things?
> >
> > Anyway, how is the power to the SDIO card controlled in this case? Are
> > you using a mmc-pwrseq?
> >
>   vmmc is controlled through GPIO to supply 3.3v power.
>   And the vqmmc is supplied from PMIC which is always 1.8v.
>   (There is no 3.3v here. Perhaps this is one of the reasons to happen
> this issues)

If it's the Marvell 8787/8897/8997 SDIO module you are using, you most
likely need a mmc-pwrseq to properly control the power to the SDIO
module. Perhaps that is what is missing?

See Documentation/devicetree/bindings/net/wireless/marvell-8xxx.txt
and arch/arm/boot/dts/rk3288-veyron.dtsi for an example.

>
> > >
> > >   Anyway, we will wait for your advises.
> > > >
> > > > >         sdio_reset(host);
> > > > >         mmc_go_idle(host);
> > > > >         mmc_send_if_cond(host, host->ocr_avail);
> > > > > --
> > > > > 1.9.1
> > > >
> > > > Kind regards
> > > > Uffe
> >
> > I have a few patches in the pipe, which fixes some other problems in
> > mmc_sdio_init_card(). Possibly those can be related, but I need a day
> > or so to post them, let's see.
> The codebase of this project is kernel-3.18. Maybe it is hard to apply
> these new patches. Anyway, We will try it when we get the patches.
> Thanks.

As you are on a 3.18 kernel, the tests seem quite irrelevant, so I
wouldn't bother with the backports.

Kind regards
Uffe

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
