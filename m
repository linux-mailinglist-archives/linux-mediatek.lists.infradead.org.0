Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55F255932
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 22:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxTbnRmV3S4rVvZyAo7C/aqpnA0hLt6k+7xw8XrOR0o=; b=NgP+KwWwHd2y0H
	xgwLghs0HGnX1C687VzIRgqxXyMEGAjzWbPOuaYDoYv+giWY5zB98XDQPwdqPKmBQdfY3fKpGX8Hs
	qxdJBiG9ZkuLl/yFJ2Kkd29OikchuRWCVczx97prHZGqclvC7JoTjR9ejkPuaStJgq+wNvkub9MO3
	0rs5a1RyswtbnslAqnWCX91EJp4SpXy1nGEw3/gYhtvOCogyJMflu0zKiVM2UqXvQYSevlDFwiGCb
	MXiMvQ0mfkOKs/YvcTuNaoekocOoww2CkycYHGljNbJpTlPlIoIWCfCmYrAhat4cXXE59mPhLqzpS
	CEFsP78cZmgzFToxdGHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfsGT-0000cB-Aq; Tue, 25 Jun 2019 20:42:05 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfsGP-0000bL-N3
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 20:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yqc4vT4415VkqyQ2Zqhlm7NzOXhoJ6B6XpmxOaJIoGI=; b=xMpeGzpmHMbEU3WkmL7jnCkNTm
 f7+XoXiiO2CO+5ZdfZlDfKBytPSYATwmYXMuT7MP/rJDEplXLxEnMQ+M6L/HH0QW1gBF6BAg9U96/
 IFCcsT4dpEJHmqoeFKHF5/CUURXjSb7jQA/mR4SJndTI3tJqBNbacBssWdzNwxvr/0jY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hfsGC-0000mO-Nt; Tue, 25 Jun 2019 22:41:48 +0200
Date: Tue, 25 Jun 2019 22:41:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Daniel Santos <daniel.santos@pobox.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190625204148.GB27733@lunn.ch>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
 <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
 <1ad9f9a5-8f39-40bd-94bb-6b700f30c4ba@pobox.com>
 <20190625190246.GA27733@lunn.ch>
 <4fc51dc4-0eec-30d7-86d1-3404819cf6fe@pobox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4fc51dc4-0eec-30d7-86d1-3404819cf6fe@pobox.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_134201_908691_606773C9 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Jun 25, 2019 at 02:27:55PM -0500, Daniel Santos wrote:
> On 6/25/19 2:02 PM, Andrew Lunn wrote:
> >> But will there still be a mechanism to ignore link partner's advertisi=
ng
> >> and force these parameters?
> > >From man 1 ethtool:
> >
> >        -a --show-pause
> >               Queries the specified Ethernet device for pause parameter=
 information.
> >
> >        -A --pause
> >               Changes the pause parameters of the specified Ethernet de=
vice.
> >
> >            autoneg on|off
> >                   Specifies whether pause autonegotiation should be ena=
bled.
> >
> >            rx on|off
> >                   Specifies whether RX pause should be enabled.
> >
> >            tx on|off
> >                   Specifies whether TX pause should be enabled.
> >
> > You need to check the driver to see if it actually implements this
> > ethtool call, but that is how it should be configured.
> >
> > 	Andrew
> >
> Thank you Andrew,
> =

> So in this context, my question is the difference between "enabling" and
> "forcing".=A0 Here's that register for the mt7620 (which has an mt7530 on
> its die): https://imgur.com/a/pTk0668=A0 I believe this is also what Ren=
=E9
> is seeking clarity on?

Lets start with normal operation. If the MAC supports pause or asym
pause, it calls phy_support_sym_pause() or phy_support_asym_pause().
phylib will then configure the PHY to advertise pause as appropriate.
Once auto-neg has completed, the results of the negotiation are set in
phydev. So phdev->pause and phydev->asym_pause. The MAC callback is
then used to tell the MAC about the autoneg results. The MAC should be
programmed using the values in phdev->pause and phydev->asym_pause.

For ethtool, the MAC driver needs to implement .get_pauseparam and
.set_pauseparam. The set_pauseparam needs to validate the settings,
using phy_validate_pause(). If valid, phy_set_asym_pause() is used to
tell the PHY about the new configuration. This will trigger a new
auto-neg if auto-neg is enabled, and the results will be passed back
in the usual way. If auto-neg is disabled, or pause auto-neg is
disabled, the MAC should configure pause directly based on the
settings passed.

Looking at the data sheet page, you want FORCE_MODE_Pn set. You never
want the MAC directly talking to the PHY. Bad things will happen.
Then use FORCE_RX_FC_Pn and FORCE_TX_Pn to reflect phydev->pause and
phydev->asym_pause.

The same idea applies when using phylink.

    Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
