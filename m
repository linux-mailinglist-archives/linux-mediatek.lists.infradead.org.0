Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E03C1BBFF6
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 Apr 2020 15:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYFU7UEpknR+eiq5ymySE1GKEPx47/jvGl8nStL1N88=; b=TV898Tt4RIOhlD
	7Lnjbxnj2TZX7REGsVIuFCKCPZGevzrZ6xLpOYpYb7qubtY2S/6zbAK/FkWO9G9h6mECoElA05E7W
	aMUKf1ZQPT99cdN+E5brpb231QX8QwzcLuoYu2quTwcw9i2rNgdR3sREvLBuMxO/dUo4ktoXq3OQ1
	Nrp1OxlgD3Xnuji0+1QILeduKetUZuOS0b54t0B7U+cuwQIla+7kHjogb3HUElMKY6LDBFNKcfbW2
	EQMY3CLTFtb7YNme6pPO2u9S+oc/gkSBKb9fG8CCHXKUByXtRcisGnFXEXQ2kS7AWMxVP5pANFUMM
	1gA6eq0XgcTnBnBzK00w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQSt-0004Xb-FC; Tue, 28 Apr 2020 13:39:59 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQSh-0004Qv-M1
 for linux-mediatek@lists.infradead.org; Tue, 28 Apr 2020 13:39:49 +0000
Received: by mail-wr1-f65.google.com with SMTP id x17so23944811wrt.5
 for <linux-mediatek@lists.infradead.org>; Tue, 28 Apr 2020 06:39:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5a2eKTENfxkdvpOt5VzR6SvytBF+3s88viN7AKjLVdk=;
 b=r7lWA2zlNJytlt+1NUdTkLB+KRpyQOWPD1QNGT3GwnCL9t/dolCiPR49meDqwmUJDg
 bV03IUIliNrlvAPWs5+Xe9b5BPK3T58CAGrOxHVOKpbw4qrANQ67rb7mO790S8JHQaal
 i1Rgxv+6JgbjpNQgEWVxKiTPhz2bKg73orP+z6+ZBSEt5OSaHqw6iFitM28AZoMxIbFh
 0STId/5DOMOAV0ErybDWFzhfIJJbD2kb7rkC7LrNgZvw4v7zFOooMq6Z8vvM9XYO1cb1
 CB6iMBRxGUmnz8vc2gQDzyfyEIgVl+uxLX0wvomFBBz6km12HEVNpbpc+N1iE99VNBeU
 xlGw==
X-Gm-Message-State: AGi0PuZLi0Hz1g9VA8D77Wap6Zd6RWJxC1YC2wHjzmyghtOLxDMY2OG/
 XNLyZohEpBVAM+YegXNKiIbveIzK2mmXOVO97W4A
X-Google-Smtp-Source: APiQypKJ7Znr8xxbFupiDIbeDll7/mUifz2A7jx6hPicMw/uEvMh3pLQxhSgEGbao/4OCBqSoJuvk7DcpKLXX/Mx2Bk=
X-Received: by 2002:adf:fe45:: with SMTP id m5mr35638988wrs.124.1588081185601; 
 Tue, 28 Apr 2020 06:39:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200426161319.23941-1-john.oldman@polehill.co.uk>
 <20200426170719.GA2138855@kroah.com>
In-Reply-To: <20200426170719.GA2138855@kroah.com>
From: John Oldman <john.oldman@polehill.co.uk>
Date: Tue, 28 Apr 2020 14:39:34 +0100
Message-ID: <CA+JojbrD5F6foCUGZT_fKW+MnJnuQsFH87bfy9V+WUXwxqKyXw@mail.gmail.com>
Subject: Re: [PATCH] Staging: mt7621-dma: mtk-hsdma.c: Fix Missing a blank
 line after declarations
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_063947_747304_7EE76158 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
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
Cc: devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

(this time sent as plain text)

I was not so happy about this one, even though I went and committed it.

Without the blank line checkpatch reports:

WARNING: Missing a blank line after declarations
#160: FILE: drivers/staging/mt7621-dma/mtk-hsdma.c:160:
+ struct tasklet_struct task;
+ volatile unsigned long chan_issued;

So I dumly inserted a blank line to silence checkpatch.

In hindsight maybe a false positive, blank lines in a struct!

Someone may have been there before as there is a previous blank line
in the struct mtk_hsdam_engine :o)

Cheers
John


On Sun, 26 Apr 2020 at 18:07, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sun, Apr 26, 2020 at 05:13:19PM +0100, John Oldman wrote:
> > Fixed coding style issue
>
> No you didn't :)
>
> >
> > Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> > ---
> >  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > index 14592ed9ce98..dd35d0bce6ca 100644
> > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > @@ -157,6 +157,7 @@ struct mtk_hsdam_engine {
> >       struct device_dma_parameters dma_parms;
> >       void __iomem *base;
> >       struct tasklet_struct task;
> > +
> >       volatile unsigned long chan_issued;
> >
> >       struct mtk_hsdma_chan chan[1];
>
> This file seems to be the "does the submitter look at the patch they are
> sending" litmus test.
>
> Does that really do what you think it does?
>
> thanks,
>
> greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
