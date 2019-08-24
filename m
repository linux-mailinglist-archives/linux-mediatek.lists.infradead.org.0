Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344269C0BE
	for <lists+linux-mediatek@lfdr.de>; Sun, 25 Aug 2019 00:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPrqe8SwpWqtP16q4wNe7XvjYBtRqdwImhSKZYAOXuk=; b=QZwjjFeJ/v3Tun
	7/lMP17Ak07mM3kmGHXbvPRVKKVNwqqB/EFGbsBcmbbY3wa1wfNWSJWKuHhbT09UBR0/yi80Sgjyk
	XZIw3edqEW2msmmk9ve53PGi0C5UcdIc/pSDSI46QtXf9UvWlcus+kmMyDYW3rjhEWT8bERLE7P3y
	0+5VJqheDm0Fit8gYZ2vxTuJXycBHqe0D4D6hX3GZiE+5+9k6ZiY/RQ3dl3aeMOcQdFfkdNqHJG8W
	xbj5ugwwd4G9pjZIXJGWLy0Ol1525HVA+2nBBmOwk+Ek6fm6Qlf9mpxORSbVvnvREGvsuuVFMscap
	uDAw7fUpSbkm87GHzhyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1eZb-0000ls-Gg; Sat, 24 Aug 2019 22:31:51 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1eZY-0000lQ-An; Sat, 24 Aug 2019 22:31:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0P9kq7rO9q6BZvVdrWv6/VLTzkv+c7sSgMh3X9sSgj4=; b=WurvjCu2wGq2loRlkOquX6nOV
 zdbMPRjNKc8M08ZT4mP9gXJewORGnh+wClTJsI0T3ZIKdOf1kwTh/M33iM3GuCmqv8UObI5DXd8i6
 pMoJRc7+NIQ0zz9wg9Vc3UFEXqRnsptRhqAuKyPr0beR7ue1hbYKqLtfX3zDv6ElvdUyDqSRWaXzC
 vSzgaFACTkfh8dSaMU77IjBEuKBONLgt5qlJkbnYIvm8pLX/lzdI28KyQ2eOSRANlzJrX6nrMDckT
 /IqRPFjoX6gEtjRMMLQmLijk8mBKXPkt291LOuMn1srN6iGr+eFAkKAhq7/kIH8ObQ1UlT5QzZs9g
 URd1ylAtA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:54164)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i1eZM-0005W5-D1; Sat, 24 Aug 2019 23:31:36 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i1eZK-0002yi-27; Sat, 24 Aug 2019 23:31:34 +0100
Date: Sat, 24 Aug 2019 23:31:34 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK and
 add support for port 5
Message-ID: <20190824223133.GH13294@shell.armlinux.org.uk>
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190822.162047.1140525762795777800.davem@davemloft.net>
 <20190823010928.GK13020@lunn.ch>
 <20190824.141803.1656753287804303137.davem@davemloft.net>
 <20190824221519.GF8251@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824221519.GF8251@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_153148_382171_240B5F9C 
X-CRM114-Status: GOOD (  12.89  )
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
Cc: f.fainelli@gmail.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-mips@vger.kernel.org, vivien.didelot@gmail.com,
 opensource@vdorst.com, linux-mediatek@lists.infradead.org, john@phrozen.org,
 matthias.bgg@gmail.com, David Miller <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 12:15:19AM +0200, Andrew Lunn wrote:
> 65;5402;1cOn Sat, Aug 24, 2019 at 02:18:03PM -0700, David Miller wrote:
> > From: Andrew Lunn <andrew@lunn.ch>
> > Date: Fri, 23 Aug 2019 03:09:28 +0200
> > 
> > > That would be Russell.
> > > 
> > > We should try to improve MAINTAINER so that Russell King gets picked
> > > by the get_maintainer script.
> > 
> > Shoule he be added to the mt7530 entry?
> 
> Hi David
> 
> No. I think we need a phylink entry. And then make use of the K: line
> format to list keywords. I hope that even though changes like this
> don't touch any files listed as being part of phylink, they will match
> the keyword and pickup Russell.

Note that phylink itself is already covered by

"SFF/SFP/SFP+ MODULE SUPPORT"

but doesn't pick up on keywords.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
