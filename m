Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D1E47B94
	for <lists+linux-mediatek@lfdr.de>; Mon, 17 Jun 2019 09:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRIHDDANBCyF/Tsis6egkH8HzD7usrImDq6Pf14zvm4=; b=DH0kKpVD4ddLdk
	e1CXrdqdEg7vmAmlCPYf6k1OSjo8Upcy7JGnYoY2CuyF7ETW2KVpwcDupv9O2GamYk+bfRyzHzbCF
	BktxrfmtZiEDcajglo8W0pfI/y/N4pARb3S0JNwCNWmficRw9zy/nsV2bUta56vgotDPS0SjozYHf
	nFEaPpsSZvP6ERGN8LHKaN9CBY1NBPaeaAUrL5HM8F63lCgG2f/tY1JFCmVuAH9151eAWZwBcCAYq
	kF5pRMPsE0RPOzLvCRfnskp+zFjzEnBCZBFINFfa5pEzXwwjQ49XDM9ybkmE+f9VMYm9XV3F6V6Pv
	Z0mNRRO2lZgndWYcNxsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmMq-0005Qk-Nw; Mon, 17 Jun 2019 07:47:52 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmMn-0005PD-2Y
 for linux-mediatek@lists.infradead.org; Mon, 17 Jun 2019 07:47:50 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 2so2378186vso.8
 for <linux-mediatek@lists.infradead.org>; Mon, 17 Jun 2019 00:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MY3tGGLQYLdVpFw8r18hUsv6GICSapuyFtcuKuaoUEA=;
 b=ZYRGE1HFozqJdEnhT1Aq/4xm+obkmNZrwpLYS6CqA8W4IsHsooLzuhUj9jUSZ1pXMC
 IsXK1DN3/8Mq5xMzyHVJMekFzoPBD2onXipXv6T6czln5mJD7VqZU06BrnLXZaJQIYuY
 GelMtbVdclV+tc4E1i8u6QZ0XUsBjyZoLoHKm5nJHdI/KqH6iijuAZ5gJJhFzUbF9/Se
 +d0PwpL9FYuscR3eumeYjxhDhQBzbuINEQC+U6SZeB3RRxCEfIHtq7tM5fHj8IBH+IVM
 LVPADPXiZyM/rBVAiiOgU2IkNKSgrteIJ3daMDxF7Jks6qjq+ry/Fluln+qx7YV2FdPP
 QVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MY3tGGLQYLdVpFw8r18hUsv6GICSapuyFtcuKuaoUEA=;
 b=G9ZRB8Qh19fyBmBdxZACc+hXHF/iRov6zFB6T2HVdZ58YxUvAO+7GmQTUHn226JULy
 tPT+72DWDZP7BNmLA55saq/N//oRIxQ8dHEph8bripW67pLv7LPzYGWOxX8+1tWhoso0
 adosEhDfRti27xn65JFy9OBlhBW2Pja6yKWEOGYTWOiC5pWgZUd2aAJNl+GJ8p1UP3qR
 BZQNtRvdbXhZKzD1xQeWEWgg5ha5AaKLYsABo1r5oahW7KiJE1PyxiMXO8MajXk2oREM
 Pd3m1E/7pG3j/qkcn4aGDdANp4DoCt+YtpgOW1gYLLrxzLNF3eX9TbHNRpBmqK1qhYFK
 1O3g==
X-Gm-Message-State: APjAAAXMUZwSM1LkPFCEvCWYBBAXArIVEpYxRvZRz7W2J91/H5BctpAC
 tLb/zMd4ZgH3KMf2UdAI/80aKT+ePPl4uHlUlnwgeA==
X-Google-Smtp-Source: APXvYqyiVUylNuTkYLjx9KI91CAaUXCepGMea+Uy268M4YUvBMxIeXwcC02Sm1UIK2FsXcJpIkuX3opSJ31nZGo10h8=
X-Received: by 2002:a67:7a90:: with SMTP id
 v138mr11089584vsc.200.1560757665797; 
 Mon, 17 Jun 2019 00:47:45 -0700 (PDT)
MIME-Version: 1.0
References: <1560489970-30467-1-git-send-email-jjian.zhou@mediatek.com>
 <CAPDyKFrXU4bpKeB7Aa15j2nHqUCn-bk+YKn9_vkznmi+PS8H7A@mail.gmail.com>
 <1560751020.3103.25.camel@mhfsdcap03>
In-Reply-To: <1560751020.3103.25.camel@mhfsdcap03>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Jun 2019 09:47:07 +0200
Message-ID: <CAPDyKFqs2ngPfR_SM2MEssFVDDw=S7G_Oy7V7x-bP9_aFm5XDQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: mediatek: fix SDIO IRQ interrupt handle flow
To: jjian zhou <jjian.zhou@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004749_154497_5F8872A9 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?UTF-8?B?WW9uZyBNYW8gKOavm+WLhyk=?= <yong.mao@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 =?UTF-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?= <Chaotian.Jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 at 07:57, jjian zhou <jjian.zhou@mediatek.com> wrote:
>
> On Fri, 2019-06-14 at 17:46 +0800, Ulf Hansson wrote:
> > On Fri, 14 Jun 2019 at 07:26, Jjian Zhou <jjian.zhou@mediatek.com> wrote:
> > >
> > > From: jjian zhou <jjian.zhou@mediatek.com>
> > >
> > > SDIO IRQ is triggered by low level. It need disable SDIO IRQ
> > > detected function. Otherwise the interrupt register can't be cleared.
> > > It will process the interrupt more.
> > >
> > > Signed-off-by: Jjian Zhou <jjian.zhou@mediatek.com>
> > > Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
> > > Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> > > ---
> > >  drivers/mmc/host/mtk-sd.c | 13 +++++++------
> > >  1 file changed, 7 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> > > index c518cc2..29992ae 100644
> > > --- a/drivers/mmc/host/mtk-sd.c
> > > +++ b/drivers/mmc/host/mtk-sd.c
> > > @@ -1389,10 +1389,12 @@ static void __msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
> > >         struct msdc_host *host = mmc_priv(mmc);
> > >
> > >         spin_lock_irqsave(&host->lock, flags);
> > > -       if (enb)
> > > +       if (enb) {
> > >                 sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
> > > -       else
> > > +               sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> > > +       } else {
> > >                 sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
> >
> > Rather than clearing SDC_CFG_SDIOIDE in the irq handler, you need to
> > do it here. As otherwise when the mmc core calls
> > host->ops->enable_sdio_irq() to disable the SDIO IRQ, it may stay
> > enabled.
> >
>
> Thank you for your review.
>
> I remove the spin lock in "__msdc_enable_sdio_irq" and add
> spin lock in "msdc_enable_sdio_irq". The modification of
> "__msdc_enable_sdio_irq" and "msdc_enable_sdio_irq" is as following.
>
> static void __msdc_enable_sdio_irq(struct msdc_host *host, int enb)
> {
>         if (enb) {
>                 sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
>                 sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
>         } else {
>                 sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
>                 sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
>         }
> }
>
> static void msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
> {
>         unsigned long flags;
>         struct msdc_host *host = mmc_priv(mmc);
>         spin_lock_irqsave(&host->lock, flags);;
>         __msdc_enable_sdio_irq(host, enb);
>         spin_unlock_irqrestore(&host->lock, flags);
>
>         if (enb)
>                 pm_runtime_get_noresume(host->dev);
>         else
>                 pm_runtime_get_noidle(host->dev);
> }
>
> > > +       }
> > >         spin_unlock_irqrestore(&host->lock, flags);
> > >  }
> > >
> > > @@ -1422,6 +1424,8 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
> > >                 spin_lock_irqsave(&host->lock, flags);
> > >                 events = readl(host->base + MSDC_INT);
> > >                 event_mask = readl(host->base + MSDC_INTEN);
> > > +               if ((events & event_mask) & MSDC_INT_SDIOIRQ)
> > > +                       sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> >
> > As stated above, I suggest you move this into __msdc_enable_sdio_irq()
> > and thus call that function from here instead. Well, that doesn't work
> > as is, because of the spin lock, so you rather need to make a
> > sub-function of __msdc_enable_sdio_irq, that don't take/releases the
> > lock.
> >
> > I hope that was clear. If not, I can post a patch to show you what I mean.
> >
>
> I also modify this part handler in msdc_irq.
>
>         spin_lock_irqsave(&host->lock, flags);
>         events = readl(host->base + MSDC_INT);
>         event_mask = readl(host->base + MSDC_INTEN);
>         if ((events & event_mask) & MSDC_INT_SDIOIRQ)
>                 __msdc_enable_sdio_irq(host, 0);
>         /* clear interrupts */
>         writel(events & event_mask, host->base + MSDC_INT);
>
>         mrq = host->mrq;
>         cmd = host->cmd;
>         data = host->data;
>         spin_unlock_irqrestore(&host->lock, flags);
>
>         if ((events & event_mask) & MSDC_INT_SDIOIRQ)
>                 sdio_signal_irq(host->mmc);
>
> I also will add spin lock in the "msdc_ack_sdio_irq".
>
> Looking forward to your suggestions.

Seems reasonable, please post a new version, then I will review again.

[...]

Kind regards
Uffe

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
