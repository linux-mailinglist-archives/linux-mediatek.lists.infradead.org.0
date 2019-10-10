Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2D3D25F8
	for <lists+linux-mediatek@lfdr.de>; Thu, 10 Oct 2019 11:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIGr9AMxHOyouS95cY2cWf9nSEc5TV7SJ1cTit0nhIQ=; b=mCOtNnk3JKVb2o
	DAUqVzA034sh34HrEhULlEKAOpRlGlyf9ZtlpOQJZeFKmLQZ4dEHRn7ioRz4JnKNwvH+iJALPYeT7
	wVM7US6RxwjfGP51/wN5ops/TqOFvARaSlqCKrjQaQar6CKxyF0ZukuWoWtzzziAYK/0J57+6GMZp
	eyXftVK6UaMuUsQVI+mTy76pIuRiJnW8vzyX4qOfUVJrwdMP+BSiyz/nqKztIAPAOWZ6ehniN9UBP
	tmUzxpYueA4/XR/zpanI1rMe5SqHDvY5W012eUVAKTCRNa73BHc9GxN4DcvfE3ZO02+m0iDaH2Uet
	Q+uHnqXpzvid90fa3tbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUU8-0000z0-RV; Thu, 10 Oct 2019 09:11:48 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUU5-0000yQ-D9
 for linux-mediatek@lists.infradead.org; Thu, 10 Oct 2019 09:11:46 +0000
Received: by mail-ed1-x543.google.com with SMTP id p10so4801005edq.1
 for <linux-mediatek@lists.infradead.org>; Thu, 10 Oct 2019 02:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VBMkhodqn4U5kuTJg5v2ifZwnktnXDoyfQB0T+lz2I8=;
 b=ZlN666g+jTCNpilG4QHCpeYoynta7EDdUBxYR6G+XNbiu6uKvC9S4XCYHA8gAWceuk
 j5Me0Yw6RKR9InXvCEPvVeR1f10m2TcGnldLpxmuqVniAE1hwd5Zv1aWCv5zdTolBLqH
 PyhbGks7ZbGwZ5UXPcm4nRFRvLyI+KapSIRV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VBMkhodqn4U5kuTJg5v2ifZwnktnXDoyfQB0T+lz2I8=;
 b=K73ZXELjU3lRTLpdoobdRdfdgnSo6j2WeOyMLhjSFNw/LZPVervchPSOWgjoGwEtBY
 MhAr8Jv189AcOVpyK+DwMG9Dcrg7tdcV5qNHM8XoUlar4ufbJ9IJNz36H4uCo4ittTvo
 ymR+G9ZxBAAFcCig882GdSGe8VoX97ovRTjp2ekVSJ6xhitk97JVWBIWbnuUir1dNP9u
 q31ynzHQ6QWl04rVzct9x3UgW7nsFtxw8RxhkuY776/WSYpoXWQS57te4XRrkR1qeN5Q
 Skw+s2p/EZOuQjquOS+/wD4xYbyrKp3rX7zjud0IJKMyBi932R78QWmFL4W35sS1dFFY
 ultg==
X-Gm-Message-State: APjAAAX91xALVCpZe2Pu8IB3BC86MZAbMnW3SmZH6TVq5QuiOMfeLPxc
 KEPqV6ipiSmXvvwLDa/Dz5JOJsf5k3qYMQ==
X-Google-Smtp-Source: APXvYqz4Zgw5T5/3XRlSvMHSZtDhiYhPizFobp7ssoOJBuUBAImVXHyOBNwsqqUzI5ZSpm3UztgvGg==
X-Received: by 2002:aa7:de1a:: with SMTP id h26mr7087474edv.289.1570698703740; 
 Thu, 10 Oct 2019 02:11:43 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com.
 [209.85.128.49])
 by smtp.gmail.com with ESMTPSA id h7sm822519edn.73.2019.10.10.02.11.41
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 02:11:42 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id y21so5925335wmi.0
 for <linux-mediatek@lists.infradead.org>; Thu, 10 Oct 2019 02:11:41 -0700 (PDT)
X-Received: by 2002:a1c:e404:: with SMTP id b4mr7233084wmh.90.1570698701061;
 Thu, 10 Oct 2019 02:11:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191010075004.192818-1-tfiga@chromium.org>
 <CANMq1KAA+nqcOqiE_g=vA8DC=_t=FqSRtR5kk=1XqSsgZGj+_A@mail.gmail.com>
In-Reply-To: <CANMq1KAA+nqcOqiE_g=vA8DC=_t=FqSRtR5kk=1XqSsgZGj+_A@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 10 Oct 2019 18:11:27 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DazVnFGmNENnxT_FHed2Jx30hLT29HyEjxY7xeqLnGCg@mail.gmail.com>
Message-ID: <CAAFQd5DazVnFGmNENnxT_FHed2Jx30hLT29HyEjxY7xeqLnGCg@mail.gmail.com>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_021145_450129_CA709E3C 
X-CRM114-Status: GOOD (  19.50  )
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

On Thu, Oct 10, 2019 at 6:08 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> On Thu, Oct 10, 2019 at 3:50 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >
> > MediaTek XHCI host controller does not support 64-bit addressing despite
> > the AC64 bit of HCCPARAMS1 register being set. The platform-specific
> > glue sets the DMA mask to 32 bits on its own, but it has no effect,
> > because xhci_gen_setup() overrides it according to hardware
> > capabilities.
> >
> > Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
> > 32-bit DMA mask instead.
> >
> > Signed-off-by: Tomasz Figa <tfiga@chromium.org>
>
> Can we add a Fixes: tag for stable backports?
> (after addressing the other comments of course)
>

The problem with Fixes: is that this patch depends on the quirk being
there, but the offending code was merged earlier. Do you know how to
handle such cases?

>
> > ---
> >  drivers/usb/host/xhci-mtk.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > index b18a6baef204a..4d101d52cc11b 100644
> > --- a/drivers/usb/host/xhci-mtk.c
> > +++ b/drivers/usb/host/xhci-mtk.c
> > @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
> >         xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
> >         if (mtk->lpm_support)
> >                 xhci->quirks |= XHCI_LPM_SUPPORT;
> > +       /*
> > +        * MTK host controller does not support 64-bit addressing, despite
> > +        * having the AC64 bit of the HCCPARAMS1 register set.
> > +        */
> > +       xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
> >  }
> >
> >  /* called during probe() after chip reset completes */
> > @@ -488,11 +493,6 @@ static int xhci_mtk_probe(struct platform_device *pdev)
> >                 goto disable_clk;
> >         }
> >
> > -       /* Initialize dma_mask and coherent_dma_mask to 32-bits */
> > -       ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
> > -       if (ret)
> > -               goto disable_clk;
> > -
> >         hcd = usb_create_hcd(driver, dev, dev_name(dev));
> >         if (!hcd) {
> >                 ret = -ENOMEM;
> > --
> > 2.23.0.581.g78d2f28ef7-goog
> >

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
