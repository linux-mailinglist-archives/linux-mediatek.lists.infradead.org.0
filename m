Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACEB55DFC
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 03:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwMuckNF8CS0MSOLFJhec9mRSwTSynE+auG12T5kxm0=; b=l6g7BT+CwqLKrA
	fdeX0nF/36uDmW3a/s5NTznmH01X+A3BA5odImq/gLkndKr89aRBe9ajiBGSTtf2GpmsU83mPQfOo
	CAUKGw73JGdA5efpiReTORvN2NU1nKqNvPySRMDWnXgDASYdU2lY1//VSQlEEqe6rQyHc9/iY+msw
	9YccxZDO+djHiB8CgjfnRj+YyxChFrMh5wEKJL6akpG0+mX11H1fD2oKkVtw+Koi0VLMhBIr4RyNK
	XVAla9xX2zzDJqZNRueD2OHtYSxFbHF1F4Vdze5vVUAXXkE5UDVsD8L+nzjoQmIEuE3L/LmiPFlUr
	iiTNeA3drkp6t1e6rHrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfx7a-00061H-Pk; Wed, 26 Jun 2019 01:53:15 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfx7W-00060r-VA
 for linux-mediatek@lists.infradead.org; Wed, 26 Jun 2019 01:53:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kMI+jbwLjwcHDwbzOcT0DV6XCOAjiyVP6LoQDg6R71A=; b=1XdnwPWnx3QNsuu/0jY9gzb+eY
 soZ3A8P7JyBW8LNe9dfvK/Qxp0MMJjbFBKf1RKfib4Xl08piQUH9rwz1HhqALqsEyejPRA5u7PUNt
 jW6aLRAjU3cF10YUZl2FoDXAaeZ+hO8A6CR8mRj3ObZOZW3//AvVDnif0t99vfsfAlRk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hfx7C-0006TO-DH; Wed, 26 Jun 2019 03:52:50 +0200
Date: Wed, 26 Jun 2019 03:52:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190626015250.GH17872@lunn.ch>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <6f80325d-4b42-6174-e050-48626f7a3662@gmail.com>
 <20190625215329.5ubixxiwprnubwmv@shell.armlinux.org.uk>
 <CA+h21hqK0VMtHpZ6eka9ESuMhsFTw2mx+c0GYmxq4_G_YmiVpg@mail.gmail.com>
 <20190625225759.zztqgnwtk4v7milp@shell.armlinux.org.uk>
 <CA+h21hq_w8-96ehKYxcziSq1TjOjoKduZ+pB3umBfjODaKWd+A@mail.gmail.com>
 <CA+h21hrsosGVQczMWy1+WfyNGZCpeMFerUwvWb-z+TTjrSOP1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hrsosGVQczMWy1+WfyNGZCpeMFerUwvWb-z+TTjrSOP1Q@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_185311_211975_6FBF3DB7 
X-CRM114-Status: GOOD (  20.11  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, frank-w@public-files.de,
 netdev <netdev@vger.kernel.org>, sean.wang@mediatek.com,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 02:13:25AM +0300, Vladimir Oltean wrote:
> On Wed, 26 Jun 2019 at 02:10, Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> > On Wed, 26 Jun 2019 at 01:58, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Wed, Jun 26, 2019 at 01:14:59AM +0300, Vladimir Oltean wrote:
> > > > On Wed, 26 Jun 2019 at 00:53, Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > >
> > > > > On Tue, Jun 25, 2019 at 11:24:01PM +0300, Vladimir Oltean wrote:
> > > > > > Hi Russell,
> > > > > >
> > > > > > On 6/24/19 6:39 PM, Russell King - ARM Linux admin wrote:
> > > > > > > This should be removed - state->link is not for use in mac_config.
> > > > > > > Even in fixed mode, the link can be brought up/down by means of a
> > > > > > > gpio, and this should be dealt with via the mac_link_* functions.
> > > > > > >
> > > > > >
> > > > > > What do you mean exactly that state->link is not for use, is that true in
> > > > > > general?
> > > > >
> > > > > Yes.  mac_config() should not touch it; it is not always in a defined
> > > > > state.  For example, if you set modes via ethtool (the
> > > > > ethtool_ksettings_set API) then state->link will probably contain
> > > > > zero irrespective of the true link state.
> > > > >
> > > >
> > > > Experimentally, state->link is zero at the same time as state->speed
> > > > is -1, so just ignoring !state->link made sense. This is not in-band
> > > > AN. What is your suggestion? Should I proceed to try and configure the
> > > > MAC for SPEED_UNKNOWN?
> > >
> > > What would you have done with a PHY when the link is down, what speed
> > > would you have configured in the phylib adjust_link callback?  phylib
> > > also sets SPEED_UNKNOWN/DUPLEX_UNKNOWN when the link is down.
> > >
> >
> > With phylib, I'd make the driver ignore the speed and do nothing.
> > With phylink, I'd make the core not call mac_config.
> > But what happened is I saw phylink call mac_config anyway, said
> > 'weird' and proceeded to ignore it as I would have for phylib.
> > I'm just not understanding your position - it seems like you're
> > implying there's a bug in phylink and the function call with
> > MLO_AN_FIXED, state->link=0 and state->speed=-1 should not have taken
> 
> I meant MLO_AN_PHY, sorry.

The MAC could go into a low power mode.

    Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
