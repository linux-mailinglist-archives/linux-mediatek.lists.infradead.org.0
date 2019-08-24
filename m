Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF319BE0A
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 15:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLJog1HBeJxb6U+l8ZxkHKC2cKuXBy+5C/SjhJimUgs=; b=OdfC2/ZIsQ1bwm
	eM4u6Qa3UMYYtlsGXAhoCJsz1Re8DjzFAopMSYC85hxTCwPHBHmeHGnY6L5vS/JVX8TP/Hsv0iV7c
	VxSCdZcv69gPgKlGcgMyiSKIqfKL0UF9jfUUac3JLkKVWXjYW57g0c0nztbLtlt5Lt9SAXx9nG20s
	fKsUmKZnk/e3ZG0E5iZz71HxKr43hH7nC3q6uVv1cwY204ETsShADCQaf4JhCyoIcG2SFcUwnFHsA
	Lw5vY6zpPPsg3OZtUWTVSx0Oh1J35i2g8YdwswHoAmsU7jhao1xQ/YAuZYHZPikMbUA0GM+jMuS9o
	WR/oWAoLkWgTXvOPIzxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1WAF-00087y-Dy; Sat, 24 Aug 2019 13:33:07 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1W9x-0007vS-Mn; Sat, 24 Aug 2019 13:32:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KHhx6Ie16m3agM3oyiR904J/GzPfUFeS/cpVkces4OY=; b=KQ2WNi+3wj+TUeA22nFBkmqBN
 gwndjfYh++memDYTISgSG8YumxD7BAlcn0Mvp8xBPrZYYxCRdQ7g7FYuTL5uzxRLOsp9+BG+/NefZ
 nqX48vmt4TA2dhNxKdz6E4A6MZX0JznD8Rwghk/T/+Mcqt48XHhv4VL+QeEtygqbm1GTFPutfucjI
 leaEFkzav2/CixtoO+4K+B/GPZJtKnNV/lv1kG1bX6HPqFPhpbQuRSnvAo4R88eZQR6UJaVpTG0TM
 0GWJFeSywCrfatmbPAssUr+gplC7b/gykdRfl9JLQe++4UZcWUU6BaFaVeTMLOkI6WpXgSR4XcB44
 W+aXDJ2IA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:33290)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i1W9d-0003Gx-Nu; Sat, 24 Aug 2019 14:32:29 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i1W9Z-0002eV-Ei; Sat, 24 Aug 2019 14:32:25 +0100
Date: Sat, 24 Aug 2019 14:32:25 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v3 2/3] net: ethernet: mediatek: Re-add support
 SGMII
Message-ID: <20190824133225.GE13294@shell.armlinux.org.uk>
References: <20190823134516.27559-1-opensource@vdorst.com>
 <20190823134516.27559-3-opensource@vdorst.com>
 <20190824092156.GD13294@shell.armlinux.org.uk>
 <20190824131117.Horde.vSCF_CQ5jCMHcSTWkh7Woxm@www.vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824131117.Horde.vSCF_CQ5jCMHcSTWkh7Woxm@www.vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_063250_691242_EEEE5345 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nelson Chang <nelson.chang@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Roese <sr@denx.de>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Ren=E9,

On Sat, Aug 24, 2019 at 01:11:17PM +0000, Ren=E9 van Dorst wrote:
> Hi Russell,
> =

> Mediatek calls it Turbo RGMII. It is a overclock version of RGMII mode.
> It is used between first GMAC and port 6 of the mt7530 switch. Can be used
> with
> an internal and an external mt7530 switch.
> =

> TRGMII speed are:
> * mt7621: 1200Mbit
> * mt7623: 2000Mbit and 2600Mbit.
> =

> I think that TRGMII is only used in a fixed-link situation in combination
> with a
> mt7530 switch and running and maximum speed/full duplex. So reporting
> 1000baseT_Full seems to me the right option.

I think we can ignore this one for the purposes of merging this patch
set, since this seems to be specific to this setup.  Neither 1000BaseT
nor 1000BaseX fit very well, but we have to choose something.

> PHY_INTERFACE_MODE_GMII:
> 	  10baseT_Half
> 	  10baseT_Full
> 	 100baseT_Half
> 	 100baseT_Full
> 	1000baseT_Half
> 	1000baseT_Full

I think GMII can be connected to a PHY that can convert to 1000BaseX, so
should probably include that here too.

Thanks.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
