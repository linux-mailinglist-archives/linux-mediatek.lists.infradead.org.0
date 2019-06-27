Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8555458AF1
	for <lists+linux-mediatek@lfdr.de>; Thu, 27 Jun 2019 21:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A09wWmf/rcB7TUfbAS5TG+7R2JlWRiE1e+V+l6M8cE=; b=PubxGb3dHw8ZmZ
	VqaAkGUxY235A0zrubpRhHOG/gYcj2WdCCVVM1s6ePQ4TjncPleO7Ns0IkBpGQ92OQB2Ave0Qi+Wj
	MjHZTjQ/0TucKEXY33t4I0giIclaY3gih+ytz/7ommHBd7zrDwuhFrjMwsslPZqJMMcgNC663ZTQ3
	NfHNkLxiYfGkMc720LD0lhl4tpfeq2jUE36dI4GDc3nVGXJHOyp9KojyjN/iQTZmSYRYgaYGRQhnJ
	lBPDK/B2kkAI0ILkHmPWEZYJ+ugxTKfYFUmHJROM3+XaRSdb4/10P+G1rn50+qEQf30uOWvgc7JJw
	ND3NQEp4RjpHSc5Kvo4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hga4S-0003qs-4S; Thu, 27 Jun 2019 19:28:36 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hga4P-0003qX-Tw
 for linux-mediatek@lists.infradead.org; Thu, 27 Jun 2019 19:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pfFOMoKJzOKIQebJNqxQnidmbuTVklA+Iu6cpCenVNE=; b=KXsLMH0hNE8NJ4cEwwQM99d3Me
 gRSSxDznM4Bg2y37GuZ5KL6eCrBoR2YCPrkvTLWL2r2BtqaeoioZPnXheGxF8DoLf3svxxhEwDuMJ
 sSCtzMcfYZO3ZVB6LfQlde6hYtvefr76UEEHBaqjXCMjOQOuFyhU5uxartSW9ErTnewE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hga3y-00037F-Tj; Thu, 27 Jun 2019 21:28:06 +0200
Date: Thu, 27 Jun 2019 21:28:06 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Daniel Santos <daniel.santos@pobox.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190627192806.GQ27733@lunn.ch>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
 <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
 <1ad9f9a5-8f39-40bd-94bb-6b700f30c4ba@pobox.com>
 <20190625190246.GA27733@lunn.ch>
 <4fc51dc4-0eec-30d7-86d1-3404819cf6fe@pobox.com>
 <20190625204148.GB27733@lunn.ch>
 <e469daa1-3e28-db9c-e29a-7f68cc676fda@pobox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e469daa1-3e28-db9c-e29a-7f68cc676fda@pobox.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_122834_123293_7C56804C 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 vivien.didelot@gmail.com,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> > Looking at the data sheet page, you want FORCE_MODE_Pn set. You never
> > want the MAC directly talking to the PHY. Bad things will happen.
> =

> So what exactly do you mean by the MAC directly talking to the PHY?=A0 Do
> you mean setting speed, duplex, etc. via the MAC registers instead of
> via MDIO to the MII registers of the PHY?

The data sheet implies the MAC hardware performs reads on the PHY to
get the status, and then uses that to configure the MAC. This is often
called PHY polling. The MAC hardware however has no idea what the PHY
driver is doing. The MAC does not take the PHY mutex. So the PHY
driver might be doing something at the same time the MAC hardware
polls the PHY, and it gets odd results. Some PHYs have multiple pages,
and for example reading the temperature sensor means swapping
pages. If the MAC hardware was to poll while the sensor is being read,
it would not get the link status, it would read some random
temperature register.

So you want the PHY driver to read the results of auto-neg and it then
tell the MAC the results, so the MAC can be configured correctly.

> > Then use FORCE_RX_FC_Pn and FORCE_TX_Pn to reflect phydev->pause and
> > phydev->asym_pause.
> >
> > The same idea applies when using phylink.
> >
> >     Andrew
> =

> You're help is greatly appreciated here.=A0 Admittedly, I'm also trying to
> get this working in the now deprecated swconfig for a 3.18 kernel that's
> in production.

I'm not very familiar with swconfig. Is there software driving the
PHY? If not, it is then safe for the MAC hardware to poll the PHY.

     Andrew


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
