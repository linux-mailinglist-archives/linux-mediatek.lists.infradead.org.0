Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A7E76732
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 15:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFY0TcjzCd+xKeY5AqvvKgDLuryVD9kcwV6Ivlnx9Eo=; b=JM+6tHEqDCOdj9
	JOaRE+kaw/VkZNFlda4vdI2fMx3hgS5Q7pP1H5fZUlV0kEqUgbH5E6yTF98FgIKwr8C0OmiGZ5xGY
	dVcvl1pZYdUF+2zLbRNUGB2u6zAL91Pr/5llv3G4pbe/V0/DMDV3dBfA19k+pjvGMjqLdB3fCw83E
	lQsh6FFD/LlR+QBpNOgF9QaZnEYAFCl8wWYJfibAIZmQpz6yRFW9NpJYqymmBWU2wCUQJUMf5vnVM
	OUr/VsGarzewczmr1K4WGPK8u6SuDVPRYB+apk3MLUbzwg5Bko7bS3FU7E1RNPqFWNoz/jm3Pm8NN
	xLe6H8tGuv4YRtl8DM7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr08Y-0001a3-Ln; Fri, 26 Jul 2019 13:19:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr08J-0001OG-6I
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 13:19:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1ide1S0VA9YNwqSMlXRfUIlxbpaz20nr8XX4lCcdPsk=; b=l8LCWcB8yjaQG0uSpG+DN990G
 pp2jnxAF1UjU37FQBaQviWeZ2M2bWm9Qh2PRjEVm2yytR/H6IOv0ur/jnhR02P3wRTI84qrmhYcgc
 W7HZEaQSKtE+X8AeSjpA0ITldNNZeXBbjyI0OAEhueG9g81rS5R3Lh2v78oNKi6cc+hXz4aIsiqm8
 MYB+FFRMZPB3vv6MxTc/6mc8ti/PN6BktKtJp8PnioI4UXVibWejHtFOTvqkZls22SakiJi84OydL
 NvI2X8ykD/ET9QFQDkOWRoj6vDdhEfEarlex/ZlIKV2JNjJ8aRDFwgbYfb1kzTT8NLaRBs9/yLz5I
 ljWkMFtrw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:44778)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hr07t-0006Qj-L0; Fri, 26 Jul 2019 14:19:13 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hr07l-0006om-BN; Fri, 26 Jul 2019 14:19:05 +0100
Date: Fri, 26 Jul 2019 14:19:05 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next 3/3] dt-bindings: net: ethernet: Update mt7622
 docs and dts to reflect the new phylink API
Message-ID: <20190726131905.GP1330@shell.armlinux.org.uk>
References: <20190724192411.20639-1-opensource@vdorst.com>
 <20190725193123.GA32542@lunn.ch>
 <20190726071956.Horde.s4rfuzovwXB-d3LnV0PLRc8@www.vdorst.com>
 <20190726131604.GA18223@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726131604.GA18223@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_061939_278665_72B834AE 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 vivien.didelot@gmail.com,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 03:16:04PM +0200, Andrew Lunn wrote:
> Are you sure it is using SGMII and not 2500BaseX? Can you get access
> to the signalling word? SGMII is supposed to indicate to the MAC what
> speed it is using, via inband signalling. So there should not be any
> need for a fixed-link. 2500BaseX however does not have such
> signalling, so there would need to be a fixed link.
> 
> Maybe we should really consider what phy-mode = "sgmii"; means. Should
> this include the overclocked 2.5G speed, or should we add a 2500sgmii
> link mode?

Note that Documentation/networking/phy.rst now contains definitions
for SGMII, 1000BASE-X and 2500BASE-X.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
