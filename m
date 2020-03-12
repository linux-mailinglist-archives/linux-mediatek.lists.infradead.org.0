Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFF6183922
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Mar 2020 20:02:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=klIhnO2YMtR3BVq2rJgwbDTMtKmmqXNNqzpsP0aq+kE=; b=VMB1+dR0g9r2PP
	mikPkgwm3aGH+yz1atlacgEIlNw5k52Rq3azm1xJemt3aqKTXMA4MUUicH/DdZnBjh7KGc7nR7lgG
	OET+/BJoaKEISEFNMZeMkhhr2UauWlQQ6duIK5cHHMA6J5VrowG39bsdi2LXz+bOoc0os1SBDcL6r
	4CB9Y4QAuupPFNJEutdYrjQdf3doXaCmR3r4SWI5vv62FC1Ez7gj50ZlTZfBlDugFsU/icJqxrHKh
	YwM8bLDyTnQRuhVq7bzOd4azH+4cW2nqdVsTWtYO7q5iuRAV1VJ3aPvCKRfm4u+syHKbO4UxxZnHv
	MXwL2ZWabRl8fFC464cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCT5z-0005wH-8e; Thu, 12 Mar 2020 19:02:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCT5p-0005nV-KS; Thu, 12 Mar 2020 19:02:07 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48FA9206EB;
 Thu, 12 Mar 2020 19:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584039724;
 bh=SlkhTmsxIrlEojuXYKZBatDWX41BUd/qNHIhRRSgdNI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=HduS9YsRfFqHiD9D0BPFGNc9LGRdKIq7LV4bMwx9D9gKIHDZxIv/oUpKkgvfT0MgW
 2uLGu6gw8Wb7hWtlyDfCCyO6K8lu2T2oRjF49qzR2Nu9THEDcZBV03OO8o9hb2jBdo
 OB5TeC/AUJleYP6rcDcjWO1p43gbpGkMcyytIQB8=
Date: Thu, 12 Mar 2020 14:02:02 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/5] pci: handled return value of platform_get_irq
 correctly
Message-ID: <20200312190202.GA110276@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYv0U0RmT7snp+UejEXecq4wLkhc11DUniUfGYAgyXC=A@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_120205_713487_E88F1D17 
X-CRM114-Status: GOOD (  21.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci <linux-pci@vger.kernel.org>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Aman Sharma <amanharitsh123@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-mediatek@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Marc Zyngier <maz@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mans Rullgard <mans@mansr.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

[+cc Marc, Thomas]

Hi Linus,

On Thu, Mar 12, 2020 at 03:07:58PM +0100, Linus Walleij wrote:
> On Wed, Mar 11, 2020 at 8:19 PM Aman Sharma <amanharitsh123@gmail.com> wrote:
> > Signed-off-by: Aman Sharma <amanharitsh123@gmail.com>
> > ---
> >  drivers/pci/controller/pci-v3-semi.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
> > index bd05221f5a22..a5bf945d2eda 100644
> > --- a/drivers/pci/controller/pci-v3-semi.c
> > +++ b/drivers/pci/controller/pci-v3-semi.c
> > @@ -777,9 +777,9 @@ static int v3_pci_probe(struct platform_device *pdev)
> >
> >         /* Get and request error IRQ resource */
> >         irq = platform_get_irq(pdev, 0);
> > -       if (irq <= 0) {
> > +       if (irq < 0) {
> 
> Have you considered:
> https://lwn.net/Articles/470820/
> 
> TL;DR Linus (both of them) are not with you on this.
> 
> And that is why the code is written like this.

I'm not sure I understand you here, so please correct me when I go in
the weeds.  I guess you're saying that platform_get_irq() can return
0 here and we should treat that as an error?

This particular driver seems to be ARM-specific -- does that mean we
need to check for 0 on some arches but not others?  That would
definitely be suboptimal, and that's what I'd like to fix here.

IIUC, in the link you mentioned, Linus T says that "dev->irq == 0"
means we don't have a valid IRQ.  I think that makes sense, but I'm
not sure it follows that 0 must be a sensical return value for
platform_get_irq().  It seems to me that platform_get_irq() ought to
return either a valid IRQ or an error, and the convention for errors
is a negative errno.

In fact, the platform_get_irq() function comment says it returns "IRQ
number on success, negative error number on failure."  If we need to
interpret 0 as an error on some arches, it sounds like something is
wrong in the arch-specific bowels of platform_get_irq().

If platform_get_irq() returns an error, a driver might want to
continue in polled mode without IRQs, in which case it could set its
"dev->irq = 0" to indicate that it has no valid IRQ.  But I think we
might be able to separate that "stored IRQ" situation from the
platform_get_irq() interface.

Bjorn

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
