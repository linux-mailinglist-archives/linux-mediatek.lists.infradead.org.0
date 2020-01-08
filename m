Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD54E134077
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 12:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcyhOD9vMHOOqF6w6cfJ2FQvqZWE6lWhcpJoPkoQoaI=; b=mEKvdRMvCV5ZaV
	XeyaPb9Y5Tt6kmqUksVbVtztR+KZqsTb0j3Bv8QcUh3gAFfkPY81R/gnbTx1v0hzfhRcRAZCsgxPH
	378juYBx6TFEmxNubVUQy9teNyzc1pGOM/iYKYR7DroUbflWVPGHq9I5ccaQCRL64+f95TRPB1iz3
	LowkN4l6rwXciKIP880JV9gNq7KytMVLIFsC6iHpIpEr49ocXFJzyBCpA6+m0LP7yifEWIWli3DFz
	YNcUkbxAxRJlDYmfH/8uGp4se/ZhaDeh709ftylcxxBaMLSSJHS+h4numozpRpGQFdkF5ZzqvfYHU
	N8wFOATKy1wy0+HN9WiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9VA-0007bn-Ky; Wed, 08 Jan 2020 11:27:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9V7-0007b4-7N
 for linux-mediatek@lists.infradead.org; Wed, 08 Jan 2020 11:27:50 +0000
X-UUID: 331fcc2f128e4caa99a4d06391831438-20200108
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=1fi/fDDjeP/w31P1XgOwqFMDo56O99pCAi7DUbNxiWw=; 
 b=QSs4GX+q97zVI0qik41FLqZHQ3zmFtdpTM1wQcoy7cXL4HLh7bKyPIMfMF8F/2/0kyloRGb7Z2enXKbSSUgUpEHhctOMeYSUwLmMvqCO5pDTWwgfwalZV7vez93adE/6LCt02OKHtA+8GIp44h8GjKhmFfKRrwzTSu9sNJ7JxhY=;
X-UUID: 331fcc2f128e4caa99a4d06391831438-20200108
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1860366833; Wed, 08 Jan 2020 03:27:39 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 03:27:36 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 19:28:10 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 Jan 2020 19:25:57 +0800
Message-ID: <1578482850.7554.18.camel@mtkswgap22>
Subject: Re: [PATCH v2 05/11] pinctrl: mediatek: avoid virtual gpio trying
 to set reg
From: Hanks Chen <hanks.chen@mediatek.com>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 8 Jan 2020 19:27:30 +0800
In-Reply-To: <CACRpkdZUxpQ1tS9mKG9tc_U==M2BL9HwXt3DS1t413GGSEaVTA@mail.gmail.com>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-6-git-send-email-mars.cheng@mediatek.com>
 <CACRpkdZa_sQgvWC3ic0NxrVi9gS1cNTsV-wa-SDpA0e5kutBRw@mail.gmail.com>
 <1577022724.7468.20.camel@mtkswgap22>
 <CACRpkdZUxpQ1tS9mKG9tc_U==M2BL9HwXt3DS1t413GGSEaVTA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_032749_271572_3ECF180E 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sean Wang <sean.wang@kernel.org>, Loda Chou <loda.chou@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Mars Cheng <mars.cheng@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, mtk01761 <wendell.lin@mediatek.com>,
 linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2020-01-07 at 11:20 +0100, Linus Walleij wrote:
> On Mon, Dec 23, 2019 at 4:11 AM Hanks Chen <hanks.chen@mediatek.com> wrote:
> > On Fri, 2019-08-23 at 10:57 +0200, Linus Walleij wrote:
> > > On Mon, Aug 19, 2019 at 11:22 AM Mars Cheng <mars.cheng@mediatek.com> wrote:
> 
> > > This does not explain what a "virtual GPIO" is in this
> > > context, so please elaborate. What is this? Why does
> > > it exist? What is it used for?
> > >
> > > GPIO is "general purpose input/output" and it is a
> > > pretty rubbery category already as it is, so we need
> > > to define our terms pretty strictly.
> > >
> > Virtual GPIO only used inside SOC and not being exported to outside SOC
> > in MTK platform. Some modules use virtual GPIO as eint (e.g. pmic or
> > usb).
> 
> I would call that internal GPIOs, those are very real rails inside
> the chip made with polysilicone so there is nothing "virtual"
> about them. If the documentation for the chip calls them virtual
> then explain in the driver that these are SoC-internal
> lines so that everyone will get it.
> 

Got it, I will add the info into the driver in v3 

> Is the PMIC inside the SoC? I thought that was usually outside of it
> in its own chip.
> 
> But I suppose there could be some interface to it in the SoC and
> then that interface has this EINT?
> 

That's right. I use incorrect word.
e.g. pmic interface inside the SOC (PMIF), not pmic...

> > In MTK platform, external interrupt (EINT) and GPIO is 1-1 mapping and
> > we can set GPIO as eint.
> > But some modules use specific eint which doesn't have real GPIO pin.
> > So we use virtual GPIO to map it.
> 
> OK I get it I think... just put these comments into the code as well
> so we understand when reading the code what is going on.

Got it, will add the comments in v3. Thanks for reviewing.

> 
> > > > +       if (mtk_is_virt_gpio(hw, gpio))
> > > > +               return 1;
> > >
> > > Why are "virtual GPIOs" always inputs?
> >
> > We set virtual GPIO as eint.
> > It mean virtual GPIO only used inside SOC and not being exported to
> > outside SOC.
> 
> Are you saying that:
> - "Virtual" GPIOs are always and only used for interrupts
> - Since they are only used for interrupts, they are always inputs
> 
> Then write that in a comment to the above change so we know
> this context.
> 

Yes, virtual GPIOs are always and only used for interrupts in mtk
platform. I'll add the comments in v3. Thanks for reviewing

> Yours,
> Linus Walleij
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
