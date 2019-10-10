Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DD4D26F0
	for <lists+linux-mediatek@lfdr.de>; Thu, 10 Oct 2019 12:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NIaRQKJkyQEPKXPoo+sCE/BPwa1OJ9eZw6FhTnsLHE=; b=FQJeeI1H+n41Cp
	WmXSRG4NLG+7w+nr1PvWpbjovONXAgs9dJ8ejiyDaF4e16PA4OjapbtUQZfMgGkGQdVWND+YrfB1A
	Xm8rmUswY93Pfelrni66m/wM22XeKOtEPiW3IWwnefsZAAl2gy/nlcR1dBthfQ9FacNOiBwtP45QV
	lZO5HXKMwtOjv2LIqRAXrCb2+sFkZSamtAvUs+j0zpw4z0Uok69Jg6rRPZ6988z1KSXBEC93ZbWgP
	LG/c8NPl5qwNsAbs5jTguBaSOQ/hlyaoa4pw8eAPE7uOWtkQI0Q09h5f0tk4Eazg7CB9hU6PmMpNd
	NgrFbC1g5rfhWhzZc82A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIVNt-0006wp-CO; Thu, 10 Oct 2019 10:09:25 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIVNq-0006w7-RL
 for linux-mediatek@lists.infradead.org; Thu, 10 Oct 2019 10:09:24 +0000
Received: by mail-ed1-x543.google.com with SMTP id h33so4892812edh.12
 for <linux-mediatek@lists.infradead.org>; Thu, 10 Oct 2019 03:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vBN/g7icYkS/AmLkTr95uIthk9ZmG2qQFolljRp0WMk=;
 b=Qzjl5XP3gY1S8P95T06xre3Rfh0XgcTj0Hb5LBLMatyyGelv6QhZqxTNAwYwagYrM0
 PDIgesmF0xt/RYeXsachoBoIxdRO/Vzs0AeoZQen9rM9IJZwjBY5UAG/3FN4W9dFqMxa
 y7RW8ty64z8J96LC/ZWehDgzeKJROAjwMFe1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vBN/g7icYkS/AmLkTr95uIthk9ZmG2qQFolljRp0WMk=;
 b=toZ8zEOKWbpDsADGSkH5w0Vrr4cpTpOgHZSZzLcE+LnsLaFh/tW8TaNGg2hu8rjEEG
 ZJC3keRoJUrlQGOgBWgNd8duSq5l03GpYeLMbjQ+RdfhITORMUxB0VVjInUzFaKBHqJW
 autTKH3K+6aZfcEbDmz+1JHqb3XO3czJseMM+kh6/PchATXZLLzF9epVbgnmgdDFANY6
 ZO6ZQMSTxKf4vC7Yd8CjMKzh7I8L4d0w1ZdZCyixgspuYEO+t++aiHv+TlhOUejq13Ry
 hiouhqxOlOhpDW5Nx074WaxBaa3XIyxIzH1CeJcQ9P1ZnE7d5UOuuBJjvV0xLbg3XCwt
 IiSg==
X-Gm-Message-State: APjAAAWoXLcKqCcDXwPBP7v+G+Dp9mqFHAPF18EEkgE+KSijixdPcjX0
 o3HaV7Ay7kGIp5OOA5xildKEGTx2DillxQ==
X-Google-Smtp-Source: APXvYqyV0NbItVm1Y5hX+nU4p+ecc3bPR69UkDEgu4Ijvmuywy5D9kCMH8zU8KyFnid80Z+6kVAsPw==
X-Received: by 2002:a05:6402:1652:: with SMTP id
 s18mr7345429edx.241.1570702161094; 
 Thu, 10 Oct 2019 03:09:21 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id z24sm608624ejw.57.2019.10.10.03.09.19
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 03:09:19 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id o18so7075098wrv.13
 for <linux-mediatek@lists.infradead.org>; Thu, 10 Oct 2019 03:09:19 -0700 (PDT)
X-Received: by 2002:adf:fc42:: with SMTP id e2mr8275718wrs.100.1570702158960; 
 Thu, 10 Oct 2019 03:09:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191010075004.192818-1-tfiga@chromium.org>
 <CANMq1KAA+nqcOqiE_g=vA8DC=_t=FqSRtR5kk=1XqSsgZGj+_A@mail.gmail.com>
 <CAAFQd5DazVnFGmNENnxT_FHed2Jx30hLT29HyEjxY7xeqLnGCg@mail.gmail.com>
 <CANMq1KA7pKqJDhFvkuBfEWtr81NUhyRpUE9ZZeTNCCc5Fphoyw@mail.gmail.com>
In-Reply-To: <CANMq1KA7pKqJDhFvkuBfEWtr81NUhyRpUE9ZZeTNCCc5Fphoyw@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 10 Oct 2019 19:09:06 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AZjiMuwaMTjy_1ftop+=E6_G7OGAs0+tD5SdJeW0AOLA@mail.gmail.com>
Message-ID: <CAAFQd5AZjiMuwaMTjy_1ftop+=E6_G7OGAs0+tD5SdJeW0AOLA@mail.gmail.com>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_030922_905716_4E6D2E27 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Changqi Hu <Changqi.Hu@mediatek.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Shik Chen <shik@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 6:37 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> On Thu, Oct 10, 2019 at 5:11 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >
> > On Thu, Oct 10, 2019 at 6:08 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > On Thu, Oct 10, 2019 at 3:50 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > > >
> > > > MediaTek XHCI host controller does not support 64-bit addressing despite
> > > > the AC64 bit of HCCPARAMS1 register being set. The platform-specific
> > > > glue sets the DMA mask to 32 bits on its own, but it has no effect,
> > > > because xhci_gen_setup() overrides it according to hardware
> > > > capabilities.
> > > >
> > > > Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
> > > > 32-bit DMA mask instead.
> > > >
> > > > Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> > >
> > > Can we add a Fixes: tag for stable backports?
> > > (after addressing the other comments of course)
> > >
> >
> > The problem with Fixes: is that this patch depends on the quirk being
> > there, but the offending code was merged earlier. Do you know how to
> > handle such cases?
>
> Oh, interesting. I think this is documented here:
> https://github.com/torvalds/linux/blob/master/Documentation/process/stable-kernel-rules.rst
>
> Something like this:
> Cc: <stable@vger.kernel.org> # 3.3.x: a1f84a3: sched: Check for idle
> Cc: <stable@vger.kernel.org> # 3.3.x
>
> (Where 3.3.x is the first release that contains the commit indicated
> in the Fixes tag)
>
> Try that, worst case you'll get automated emails from stable
> maintainers asking you how to fix the issue.
>

Oh, great, thanks a lot!

Best regards,
Tomasz

> >
> > >
> > > > ---
> > > >  drivers/usb/host/xhci-mtk.c | 10 +++++-----
> > > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > > > index b18a6baef204a..4d101d52cc11b 100644
> > > > --- a/drivers/usb/host/xhci-mtk.c
> > > > +++ b/drivers/usb/host/xhci-mtk.c
> > > > @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
> > > >         xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
> > > >         if (mtk->lpm_support)
> > > >                 xhci->quirks |= XHCI_LPM_SUPPORT;
> > > > +       /*
> > > > +        * MTK host controller does not support 64-bit addressing, despite
> > > > +        * having the AC64 bit of the HCCPARAMS1 register set.
> > > > +        */
> > > > +       xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
> > > >  }
> > > >
> > > >  /* called during probe() after chip reset completes */
> > > > @@ -488,11 +493,6 @@ static int xhci_mtk_probe(struct platform_device *pdev)
> > > >                 goto disable_clk;
> > > >         }
> > > >
> > > > -       /* Initialize dma_mask and coherent_dma_mask to 32-bits */
> > > > -       ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
> > > > -       if (ret)
> > > > -               goto disable_clk;
> > > > -
> > > >         hcd = usb_create_hcd(driver, dev, dev_name(dev));
> > > >         if (!hcd) {
> > > >                 ret = -ENOMEM;
> > > > --
> > > > 2.23.0.581.g78d2f28ef7-goog
> > > >

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
