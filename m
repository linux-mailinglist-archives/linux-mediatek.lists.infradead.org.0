Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD48714668
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 May 2019 10:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5J2VIKQXqdY+oN/U0bNLhi8s/d5phQfJpSxKaGK6xHg=; b=SEIoXv7S6Zo7pM
	U5Z0sgbJ50pJLqGOduzFH0NOdbngWjEA73iyOppJ1de6J+EOQq7Wpv2jUtBGyhoErzn5/tqDITW8C
	LFYlacK5JKYkuXveDGxsgwlnlCakRJlGP4zh9Gf5ix+doSGJX0+A0I4OkcVtzBpUyV7WAlUnNEXpV
	xZxbbfRSN5tV86Aqm39tfT/ggNqwlP022kNYzUMnnJ9ERS3/yGtR89+28wPYX5M4yuJXaag0B4yss
	LAVhBj/UVxg20lNEBB5LyVuNWjKbiK8ezKg0tOu/eTcDEBqB4F5iNS5JqWlcoud+uGY9UGWmRuE1S
	pONDy9ZpfmTw3wrutJ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZ2s-0000eB-Nh; Mon, 06 May 2019 08:32:22 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZ2h-0000Vt-J5; Mon, 06 May 2019 08:32:13 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9448033DC;
 Mon,  6 May 2019 10:32:08 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id dad557b0;
 Mon, 6 May 2019 10:32:07 +0200 (CEST)
Date: Mon, 6 May 2019 10:32:07 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v4 00/10] of_net: Add NVMEM support to of_get_mac_address
Message-ID: <20190506083207.GG81826@meh.true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
 <20190505.214727.1839442238121977055.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190505.214727.1839442238121977055.davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_013211_779454_DF49A52C 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, devicetree@vger.kernel.org,
 maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 srinivas.kandagatla@linaro.org, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

David Miller <davem@davemloft.net> [2019-05-05 21:47:27]:

Hi David,

> Series applied, thank you.

I did probably something terribly wrong, but patch "[PATCH v4 05/10] net:
ethernet: support of_get_mac_address new ERR_PTR error" has not reached the
patchwork, but I'm sure, that it was sent out as Hauke Mehrtens (maintainer
for ethernet/lantiq_xrx200.c) has confirmed to me on IRC, that he has received
it.

I've as well noticed, that you've not considered "[PATCH v5] staging:
octeon-ethernet: support of_get_mac_address new ERR_PTR error"[1] which
contained a fix for possible NULL value of mac variable:

        const u8 *mac = NULL;

        if (priv->of_node)
                mac = of_get_mac_address(priv->of_node);

        if (!IS_ERR(mac))

I'll send those two patches again against net-next in a few moments. Sorry for
this mess.

1. https://patchwork.ozlabs.org/patch/1094942/

-- ynezz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
