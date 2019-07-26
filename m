Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B797671C
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 15:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BplXANjf5SoE5llykumEloMkLE+dXuO6M3pG1VEJUs=; b=oZ2dps4U1DEwRx
	JOLqr6IMAjUYWKcKV7tFibsm/SXWR7bAUHuRxeEw6SziboKTImk41JnEIL9SN//TwDBN9tLXmUe8H
	JI+WgS4crmflcnn/P+s0U3vcMzXZq4oxb2lt4EU2it+h3mU1XJWOOnV5TGqmRvAw9jRQ3SyxcqmmB
	g3WvUg0akt8Yp+kEJXT0qD8qJFf1bCW8r4f5tbtHJq+KKMarmEG33IsCOmpFez6sZFO8FW/bQsq9f
	F8x3GeiOGQ03Fx4u9WDYx1S3wOKOe6Dva9Vo/irmHab1OrgcjRkkJ6hLaeAniPKLFN/8XwQ2cPJBL
	UCV7/ShPNAwOl2+7cH8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr05M-0000x5-6A; Fri, 26 Jul 2019 13:16:36 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr05G-0000wD-8c
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 13:16:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zlBlbbS7pVGRZymSGxMNLXgZrluPVS4d6ho9KEo9Pe8=; b=peGM8EL7a0nP0aP/yzSd4+E5sp
 FK9GZHL9uLqS0vxfePvism+CuZKTKocVBcNjB0ekZRj/G6FeguYBa39rg7rRZIHGexiWGpeP9UeX+
 rgGEsjmSoJxk8KSmV3x/M/q6fp3YPZk4fLIefVARbHzSBkS12c6To7D8y+K9aswxBWgA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hr04q-0004s6-Hl; Fri, 26 Jul 2019 15:16:04 +0200
Date: Fri, 26 Jul 2019 15:16:04 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next 3/3] dt-bindings: net: ethernet: Update mt7622
 docs and dts to reflect the new phylink API
Message-ID: <20190726131604.GA18223@lunn.ch>
References: <20190724192411.20639-1-opensource@vdorst.com>
 <20190725193123.GA32542@lunn.ch>
 <20190726071956.Horde.s4rfuzovwXB-d3LnV0PLRc8@www.vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726071956.Horde.s4rfuzovwXB-d3LnV0PLRc8@www.vdorst.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_061633_745262_EB5AF087 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 vivien.didelot@gmail.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 07:19:56AM +0000, Ren=E9 van Dorst wrote:
> Quoting Andrew Lunn <andrew@lunn.ch>:
> =

> >>+	gmac0: mac@0 {
> >>+		compatible =3D "mediatek,eth-mac";
> >>+		reg =3D <0>;
> >>+		phy-mode =3D "sgmii";
> >>+
> >>+		fixed-link {
> >>+			speed =3D <2500>;
> >>+			full-duplex;
> >>+			pause;
> >>+		};
> >>+	};
> >
> >Hi Ren=E9
> >
> =

> Hi Andrew,
> =

> >SGMII and fixed-link is rather odd. Why do you need this combination?
> =

> BananaPi R64 has a RTL8367S 5+2-port switch, switch interfaces with the S=
OC
> by a
> (H)SGMII and/or RGMII interface. SGMII is mainly used for the LAN ports a=
nd
> RGMII for the WAN port.
> =

> I mimic the SDK software which puts SGMII interface in 2.5GBit fixed-link
> mode.
> The RTL8367S switch code also put switch mac in forge 2.5GBit mode.
> =

> So this is the reason why I put a fixed-link mode here.

Are you sure it is using SGMII and not 2500BaseX? Can you get access
to the signalling word? SGMII is supposed to indicate to the MAC what
speed it is using, via inband signalling. So there should not be any
need for a fixed-link. 2500BaseX however does not have such
signalling, so there would need to be a fixed link.

Maybe we should really consider what phy-mode =3D "sgmii"; means. Should
this include the overclocked 2.5G speed, or should we add a 2500sgmii
link mode?

     Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
