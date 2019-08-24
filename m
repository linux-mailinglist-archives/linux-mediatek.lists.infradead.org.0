Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B0D9C0B2
	for <lists+linux-mediatek@lfdr.de>; Sun, 25 Aug 2019 00:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SBZsqmjFVGlsfZKehvHJZGYMifFWfqGjlc8DK4Ihaw=; b=ms2EmWoTDOGYMO
	jnHiPR7s6xlTQL5Iqzi2S/jKqrIEXQoqe3Ek0pD9H+r4p/ff3vP3c4zzFjS70gxvDJGDoGtnpRTFT
	X8SwTYLAqGfX9oszewcnodKUpRPqNe29Cq1z+rNyDITDyKP4BssO6lBNEgIpanqFOgI4RzBBzSUwB
	ranCs6CuAy5iSKhohmRwb3sXdqLeBoSvJp0kh1uu56SsKb1FUZW5BLkfoWWQuVZLYTCZYiP9Sl4cO
	+BipzAO26tk5CDBzcTyzECMHJrqgxosasKnNV/K3L1RGojqPYnIfSqEngupkt1HgIPT7h//w1cLB/
	O5SYOKF0XasxcjpmTZkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1eN7-0004bL-Cv; Sat, 24 Aug 2019 22:18:57 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1eN3-0004ah-DJ; Sat, 24 Aug 2019 22:18:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2gX0YBMomljkwshRej6u+EEHPfaWAXoeifTSU8RFO4A=; b=qot0e0wLKpStolVBR004h9dZq
 kbYoixlHybIeKJaES850gjNw58K34Gh8X98UgXdCVNOZ/bM/ufShUavrNPM1hIsixRihZfNwNfR9t
 H98vH8pu7Xk6CG6b91qM0OlruYfQY7T3kj4gbuB2UVYR7hGTcCOe2C2ZkduK0wNFTcXdED2q/Pmsy
 CV8MzM3z7j2WI+rRXQpAU0YlKqLyWhyny06Hj1x3IVUU8brSncVBdCmFdNfUI77q3R5DNTUQfxHAS
 RHkioXEtrwSlnFWg/9rfET5govArt2hkNwB2Kk0z0CVI4MTm0fg+AWji9dEmYygzd7Dkiyc06U6TP
 qitksgu5Q==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:37580)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i1eMl-0005SV-Bf; Sat, 24 Aug 2019 23:18:35 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i1eMg-0002y9-Ln; Sat, 24 Aug 2019 23:18:30 +0100
Date: Sat, 24 Aug 2019 23:18:30 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK and
 add support for port 5
Message-ID: <20190824221830.GF13294@shell.armlinux.org.uk>
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190822.162047.1140525762795777800.davem@davemloft.net>
 <20190823010928.GK13020@lunn.ch>
 <20190824.141803.1656753287804303137.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824.141803.1656753287804303137.davem@davemloft.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_151853_453115_D008B3CF 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 opensource@vdorst.com, linux-mediatek@lists.infradead.org, john@phrozen.org,
 matthias.bgg@gmail.com, vivien.didelot@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 02:18:03PM -0700, David Miller wrote:
> From: Andrew Lunn <andrew@lunn.ch>
> Date: Fri, 23 Aug 2019 03:09:28 +0200
> 
> > That would be Russell.
> > 
> > We should try to improve MAINTAINER so that Russell King gets picked
> > by the get_maintainer script.
> 
> Shoule he be added to the mt7530 entry?

Probably some way to make MAINTAINERS pick up on phylink-containing
patches.  Something like:

K:	phylink

maybe?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
