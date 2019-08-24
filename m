Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD47A9BCAD
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 11:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=el/JGZyI+lddA7qSinLm3duA7mKHdQFy89uup84esqk=; b=LLqWQSQjrjem+B
	J9s5IPUP64L9Mdbhj6ZmhSMtSxgfXp70Yb1w40jjdAoeoun/iixdj1UpsNHzXKD6/sVFFyUKgzfyX
	/9vpp1Gu9hReo2CwQzRbplbOolFDGvgcYb1/jPnI6shtUYCSOCbY76xs2L98d3qkDtDUYt2ngUO9S
	J/uh3Pzmw8+GnbAm+b3aUA8tki7kCs2MiHhwnKeOKvuUacDTdcVRC3QAuAIxV7JYHKZR/CsQXfb7/
	nlJ0SfH5HTEXWhPNlXAppMNgUEuLW/S9sNcQj+1UgJO/szqqR++NIJm+TipqOfW+ptrtAINXKRpxQ
	xsZWOYEzLZKAPhRzEm6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1S5e-0005k9-H2; Sat, 24 Aug 2019 09:12:07 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1S5C-0005e3-Kf; Sat, 24 Aug 2019 09:11:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=35I2LZAPShB6Cj6P1TUgP57NLp4slH9dw71QCTasf9w=; b=mLioaqdQuJrNX1/NOkC7pA8My
 Ryo55kL3A7U7vH8bgvzRZRnYXeZ2hRuR+aV+Sc3CBEDrBRmT35v1S4u6kcoA16cth4z8CJTm6ymbD
 8WNI/0PSz/PSa2MVjCktPfJYME3Y3RZPoAOyP/skC54IPikXx2zLBOF2tH7vrGDyfBW0ZLCSY6og5
 +OvoFmwhMZbpHFxXBxrW3v60B6ExenZlhuYUSmpKggb28NJIaq+yDZpiI9Xx3Iym4pGP1vujJZkaM
 Hrh7+UUsjFRODb6McAKxgR1p8fT+POTuIuy8aMHnD2pXhRqNR169RFR1NJ3NGxJkNUHXdGvRkZx6K
 SMP73liAA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:53936)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i1S4m-00029T-5T; Sat, 24 Aug 2019 10:11:12 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i1S4g-0002Ql-9j; Sat, 24 Aug 2019 10:11:06 +0100
Date: Sat, 24 Aug 2019 10:11:06 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v3 1/3] net: ethernet: mediatek: Add basic
 PHYLINK support
Message-ID: <20190824091106.GC13294@shell.armlinux.org.uk>
References: <20190823134516.27559-1-opensource@vdorst.com>
 <20190823134516.27559-2-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823134516.27559-2-opensource@vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_021139_039800_648B9B3C 
X-CRM114-Status: UNSURE (   8.57  )
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

On Fri, Aug 23, 2019 at 03:45:14PM +0200, Ren=E9 van Dorst wrote:
> This convert the basics to PHYLINK API.
> SGMII support is not in this patch.
> =

> Signed-off-by: Ren=E9 van Dorst <opensource@vdorst.com>
> --
> v2->v3:
> * Make link_down() similar as link_up() suggested by Russell King

Yep, almost there, but...

> +static void mtk_mac_link_down(struct phylink_config *config, unsigned in=
t mode,
> +			      phy_interface_t interface)
> +{
> +	struct mtk_mac *mac =3D container_of(config, struct mtk_mac,
> +					   phylink_config);
> +	u32 mcr =3D mtk_r32(mac->hw, MTK_MAC_MCR(mac->id));
>  =

> +	mcr &=3D (MAC_MCR_TX_EN | MAC_MCR_RX_EN);

... this clears all bits _except_ for the tx and rx enable (which will
remain set) - you probably wanted a ~ before the (.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
