Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0E4D3889
	for <lists+linux-mediatek@lfdr.de>; Fri, 11 Oct 2019 06:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pF99bNb+gJEh9yI97ev7Z001aySopE/V8f+/EQWDA7E=; b=dSuLg5P72peegk
	uIzjQpCTy5zdBE+SbBWNmxa0JqkiQ3GGz5AwrACTfKf8bUJ8M4/8YkHhfzqdw/BnxVaidu2cHkWj5
	xxlYoU8ND3ygfQA/pmQuOOcdhv5mAJ5U3+8VdG/u0VCKVjuddIxiy+gAOjZfTLiFUXvuB6WwGOzyJ
	xl98Yfti3Ua3RoSbLqlfh8v/pSNIo0vuSpnmLT2Myzj+mayC6RXJGCIZv2ygAKnI+69T+taAGyWeJ
	GcAI+Q0X6sgddr4OWFAw67pBFcEPS9RBFM1hSi5U1PI7izprAXrwqHrgJBDl9iaR9r/4MyP69q1Za
	yp/6UKHCRyEfl1mOJ5gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iImf1-0006Cl-LP; Fri, 11 Oct 2019 04:36:15 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iImer-00065h-Sy
 for linux-mediatek@lists.infradead.org; Fri, 11 Oct 2019 04:36:07 +0000
Received: by mail-ed1-x543.google.com with SMTP id c4so7480463edl.0
 for <linux-mediatek@lists.infradead.org>; Thu, 10 Oct 2019 21:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rEUfphYgsPDsPF9Rx6VcR3QfxEgWOStdjPum/wk4KcI=;
 b=gEQ+fgGOIKBfW9V5FQ9sV5KdOdkGa1dsRLEj6pWenVSSurwPL6PVXti0w79F/LoGXE
 fRX92sJQbU7d8ptA/uk2X9exHL0yLbDgsQxJCfbdpwVPjiiFkWDjcy9z/5R+TvJxxEUR
 OJA158rP+mEzzpR+/dTLAb5wFtlh89OvWKG8Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rEUfphYgsPDsPF9Rx6VcR3QfxEgWOStdjPum/wk4KcI=;
 b=EJhu9308ak5UyOQSAuqtw6meuwFiyXFgrQmCItVhMrwb/jf51TL86eoMrzPBDBKRSi
 vbWWNQ961VE47JS3auPrLbznto6BDJ94so4pO/C7Imid1aVRVm19rryptNd12tY57W0p
 wd1AHv7m43iNT9C1J+uQoPJyAHAFomFxTgjSVUTHPeQoRT5tA0o3smnuW7dye8ICoRwL
 mrcX0zZIzOSKVj+FNlR4vCP420VnBnKJrkyrrgydPcL+z694Y6cXmf8LdbTnPofclj9g
 pE3CXtJQiUaWKhEytxT2MuNqIq8jhatTGxQ4E64YvATuPnRxktI1tnq3TLyR64+Ntcn4
 LPyQ==
X-Gm-Message-State: APjAAAWA98hqFNPZ813M1AQ6hJdiRmsfIJHnL0HdK6t8fRVWqrUNNfa6
 58FMxl+JHu4XdEzXRmtlycqGI2ZAKDRtSA==
X-Google-Smtp-Source: APXvYqy6hjiWOR9yDQhIDm+CIBeNid1HEC0/4+yeKL1Km6zqJtnMXQpJFjVOdkz3DKH10jhmo2x+2g==
X-Received: by 2002:a17:906:46c7:: with SMTP id
 k7mr11895304ejs.112.1570768562979; 
 Thu, 10 Oct 2019 21:36:02 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id j8sm1243401edy.44.2019.10.10.21.36.01
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 21:36:01 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id q9so10243247wrm.8
 for <linux-mediatek@lists.infradead.org>; Thu, 10 Oct 2019 21:36:01 -0700 (PDT)
X-Received: by 2002:adf:f3c9:: with SMTP id g9mr1230397wrp.7.1570768560872;
 Thu, 10 Oct 2019 21:36:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191010075004.192818-1-tfiga@chromium.org>
 <1570697118.32135.20.camel@mhfsdcap03>
 <CAAFQd5AU53=BRUrK_i-0dRYueVoSd3Bg3AtvZUMHgFv3hLuNug@mail.gmail.com>
 <1570705147.22261.13.camel@mhfsdcap03>
In-Reply-To: <1570705147.22261.13.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 11 Oct 2019 13:35:48 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AszvSow2vgRq+CbtBzdNO7ysymXp=xerR6dtmi8OxMZw@mail.gmail.com>
Message-ID: <CAAFQd5AszvSow2vgRq+CbtBzdNO7ysymXp=xerR6dtmi8OxMZw@mail.gmail.com>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_213605_943334_7B5A09CC 
X-CRM114-Status: GOOD (  28.91  )
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Changqi Hu <Changqi.Hu@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Shik Chen <shik@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 7:59 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> On Thu, 2019-10-10 at 18:00 +0900, Tomasz Figa wrote:
> > Hi Chunfeng,
> >
> > On Thu, Oct 10, 2019 at 5:45 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> > >
> > > Hi, Tomasz,
> > >
> > > On Thu, 2019-10-10 at 16:50 +0900, Tomasz Figa wrote:
> > > > MediaTek XHCI host controller does not support 64-bit addressing despite
> > > > the AC64 bit of HCCPARAMS1 register being set. The platform-specific
> > > > glue sets the DMA mask to 32 bits on its own, but it has no effect,
> > > > because xhci_gen_setup() overrides it according to hardware
> > > > capabilities.
> Yes, this is what I want to do, maybe need remove DMA mask setting in
> platform-specific.
>
> > > >
> > > > Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
> > > > 32-bit DMA mask instead.
> > > >
> > > > Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> > > > ---
> > > >  drivers/usb/host/xhci-mtk.c | 10 +++++-----
> > > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > > > index b18a6baef204a..4d101d52cc11b 100644
> > > > --- a/drivers/usb/host/xhci-mtk.c
> > > > +++ b/drivers/usb/host/xhci-mtk.c
> > > > @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
> > > >       xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
> > > >       if (mtk->lpm_support)
> > > >               xhci->quirks |= XHCI_LPM_SUPPORT;
> > > > +     /*
> > > > +      * MTK host controller does not support 64-bit addressing, despite
> > > > +      * having the AC64 bit of the HCCPARAMS1 register set.
> > > > +      */
> > > > +     xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
> > > Somes SoCs support 64bits in fact, so can't support this quirk, do you
> > > encounter any issues without this quirk?
> > >
> >
> > Thanks for taking a look at this patch.
> >
> > Yes, on MT8183 the DMA mask ended up being set to 64 bits, but
> > according to the information I received from MediaTek, the controller
> > on that SoC only supports 32 bits.
> As I know, mt8183 doesn't support memory greater than 4G mode.
>

We have 4GB of DRAM at 0x40000000-0x140000000 on our board with
MT8183. What happens if you attempt to use the memory from
0x100000000-0x140000000 with the XHCI controller on this SoC?

> >
> > If some SoCs support only 32 bits and some support 64 bits, we may
> > either need to use different DT compatible string for them or add a DT
> > property and set the quirk based on that. Right now in upstream we
> > have:
> >
> > 1) "mediatek,mt8173-xhci", used by:
> > MT8173
> >
> > 2)"mediatek,mtk-xhci", used by:
> > MT2712
> > MT7622
> > MT8183 (not yet upstream, but I suppose it's on the mailing lists)
> >
> > Would you be able to check which of the SoCs above report 64 bits but
> > support only 32? (and so would need this quirk)
> I'm afraid I can't, almost all MTK SoCs supporting xHCI are using this
> driver, AC64 should be set rightly according to addressing capability.
>

Does it mean that only MT8183 may be the only SoC with a problem with
this capability bit?

Matthias, do you have access to MT2712 and MT7622 devices? I have
MT8173 and MT8183, so I can check them, but would be good to check
this on the other ones too.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
