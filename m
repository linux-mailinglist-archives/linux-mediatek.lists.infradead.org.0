Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02011105EF2
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 Nov 2019 04:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpOsX8gWtPUduRwOPIc9PGGYLTd/SR1mFH+BX9Imo1Q=; b=GP7Jxquxn6qe7M
	ca1k7fO6mrwr79cMHIw2SPVXrOORUCm/8sKPKmCr5Oe/fQL+5Xp1qzD4Y7mauXKRdBVnk778eFJKs
	D+VMEIxpkXU3ZqawFuLJvuiXSevZB/h+vWKtvT5uwbYO3A0JpRJ14qfJI6Y15jSGr68hBSEBhRNRW
	0GxxfR1VyoY8zIIEToBXf6B68HEWhKso4G6nrNROGjEYCA6LdhDUpoRjVoa0Vc6IHzt6WtC7bVz7x
	Nr+F5hMU2rNC9TXszzWoOeyW11YmpTSQlts4CjbqxjpYYBpmuHQ3QzHAbKfFMfTTsmOShfL/mVjvl
	RZkA/VCBRhSrxD+UXRNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXzP9-0005Js-Ms; Fri, 22 Nov 2019 03:14:43 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXzOs-000520-JD; Fri, 22 Nov 2019 03:14:27 +0000
Received: from localhost (c-73-35-209-67.hsd1.wa.comcast.net [73.35.209.67])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4376C15102FA7;
 Thu, 21 Nov 2019 19:14:19 -0800 (PST)
Date: Thu, 21 Nov 2019 19:14:17 -0800 (PST)
Message-Id: <20191121.191417.1339124115325210078.davem@davemloft.net>
To: rmk+kernel@armlinux.org.uk
Subject: Re: [CFT PATCH net-next v2] net: phylink: rename mac_link_state()
 op to mac_pcs_get_state()
From: David Miller <davem@davemloft.net>
In-Reply-To: <E1iXaSM-0004t1-9L@rmk-PC.armlinux.org.uk>
References: <E1iXaSM-0004t1-9L@rmk-PC.armlinux.org.uk>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 21 Nov 2019 19:14:20 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_191426_633050_F256829C 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, nbd@openwrt.org, f.fainelli@gmail.com,
 alexandre.torgue@st.com, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-stm32@st-md-mailman.stormreply.com, nicolas.ferre@microchip.com,
 vivien.didelot@gmail.com, michal.simek@xilinx.com, joabreu@synopsys.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 thomas.petazzoni@bootlin.com, john@phrozen.org, matthias.bgg@gmail.com,
 peppe.cavallaro@st.com, radhey.shyam.pandey@xilinx.com,
 Mark-MC.Lee@mediatek.com, mcoquelin.stm32@gmail.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>
Date: Thu, 21 Nov 2019 00:36:22 +0000

> Rename the mac_link_state() method to mac_pcs_get_state() to make it
> clear that it should be returning the MACs PCS current state, which
> is used for inband negotiation rather than just reading back what the
> MAC has been configured for. Update the documentation to explicitly
> mention that this is for inband.
> 
> We drop the return value as well; most of phylink doesn't check the
> return value and it is not clear what it should do on error - instead
> arrange for state->link to be false.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
> This is something I'd like to do to make it clearer what phylink
> expects of this function, and that it shouldn't just read-back how
> the MAC was configured.
> 
> This version drops the deeper changes, concentrating just on the
> phylink API rather than delving deeper into drivers, as I haven't
> received any feedback on that patch.
> 
> It would be nice to see all these drivers tested with this change.

I'm tempted to just apply this, any objections?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
