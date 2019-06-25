Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE1C559C0
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 23:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VG+hdi/0OZMFhIZ/jOgg833hq4P4a2xBgfPvsQ4QMJ0=; b=KZeTRxK8xGsf86
	RFqraKOJ5K3U+GdR/fp0a15TR7VdIzW+apUaGPrDoasIhrgbhuoJvQWb3fm65lAHGlk3wfptjd5uZ
	VN08U6q53/GBOJGtBRdXVZ31wq1gaxEQ4PKStSdTg5j5FiN33jUQBneTbsDdMjR90YTqLIfT+emXa
	omDbQBNQm9/pbyWWO6a+hXW9qF3zJL5UqVlAftsnkHa+24UN2BdDR+kfrojPoMS5xA8D/+QV6nePE
	Hw7Im+G3CTfyxFV4v6l3MkQksUXPPEXmNhKyrA1sNqhttMeUVYU44ir8NtDLpTNLJ6Oomih43ZA8x
	pdANvVE9mJQSHyUhjIFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfskr-0004wH-SS; Tue, 25 Jun 2019 21:13:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfskm-0004ve-U0
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 21:13:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A/NQpvmNbFWHvMWWPlx4XYpVJM2W6vODhSI5tf99DfA=; b=00wSm6HoiE+w8Fg/YaQagOZy3
 lBhwJjPAnC2sND4z+XSNrDxdKiedGkeLq5zw9EaggrPRm1DRYVG5SINz6uzSRP15jnuK7+f8c3w6g
 CfPYTWgSK1Z1TnM1jDohTQwrCGc0LzoWKpqG4YuBww1DCF0okd7sitGI2Qps8K8Y1b4P1ZXS7yt1a
 hgCDRjqaaHUKP9tCkPO+/O0eL8gcHeGRwdx9iWU7VX40Altri+h7F9MjCr9O1xDDzv2hveJkZbeSa
 OoMPUK9+aXdCmvLOSn1dOOSqIx2JuPeIM6ggloXHkitTA6vITKU9eGaHfnUyprdEKspNV7gHl5lrB
 nniGyiXlA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60002)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfskW-0000Y4-Jd; Tue, 25 Jun 2019 22:13:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfskO-0007YA-Rz; Tue, 25 Jun 2019 22:13:00 +0100
Date: Tue, 25 Jun 2019 22:13:00 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190625211300.4hywbhyt6nj5pmvt@shell.armlinux.org.uk>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
 <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
 <1ad9f9a5-8f39-40bd-94bb-6b700f30c4ba@pobox.com>
 <20190625190246.GA27733@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625190246.GA27733@lunn.ch>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_141325_173889_36B1BDE0 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: frank-w@public-files.de, f.fainelli@gmail.com,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 vivien.didelot@gmail.com, Daniel Santos <daniel.santos@pobox.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 09:02:46PM +0200, Andrew Lunn wrote:
> > But will there still be a mechanism to ignore link partner's advertising
> > and force these parameters?
> 
> From man 1 ethtool:
> 
>        -a --show-pause
>               Queries the specified Ethernet device for pause parameter information.
> 
>        -A --pause
>               Changes the pause parameters of the specified Ethernet device.
> 
>            autoneg on|off
>                   Specifies whether pause autonegotiation should be enabled.
> 
>            rx on|off
>                   Specifies whether RX pause should be enabled.
> 
>            tx on|off
>                   Specifies whether TX pause should be enabled.
> 
> You need to check the driver to see if it actually implements this
> ethtool call, but that is how it should be configured.

Note that phylink provides this call, and provided mac_config() is
correctly implemented, will result in the pause mode parameters in
the MAC being correctly set.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
