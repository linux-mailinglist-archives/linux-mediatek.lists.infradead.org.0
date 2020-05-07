Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1AE1C82BC
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 May 2020 08:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCpnI+PzamUABvugVT5v32ibR8mtIOqXgs2kFNKRxOU=; b=O95Irj2WJNBDMT
	xuoBn8KgxOYyLiqesKORDNHwsDhTSgftxHnlSLS/UL+NWqohrs3gRe/Lyd0WO5K1u819GzjzX3aRn
	a/TgSmLO3bqYUHpAf5bY/3iHcBdo49kCGKQJ5794cDrGP99p9av7DPLzvkk42B/4cotNqtVs+EyWs
	FY45yVfRNVS4QRaCe9jsakMN79wxRTYPYA6Yt9pAze5IJEMKQhijbeSkEWeQkIvawnv94g7cyEQvr
	tobWEXh68T9Gc9kf0/qfoxvkal1IREyAVCQIlUXoBTbuQzUTCnj/gyVdu5WTZgitdbwcnGaVJSW9y
	Xi+EQDKDSC74CK/er1YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWaGj-0006S5-CH; Thu, 07 May 2020 06:44:29 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWaGg-0006RC-4s
 for linux-mediatek@lists.infradead.org; Thu, 07 May 2020 06:44:27 +0000
Received: by mail-lj1-f196.google.com with SMTP id u15so5073728ljd.3
 for <linux-mediatek@lists.infradead.org>; Wed, 06 May 2020 23:44:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KPHo05lQ60Sgmm/o6B6Lw5R77cey+JqtyoXZZ3TP7Og=;
 b=g9/hYsFL6ooJnG/38sE90gqKEQ5KBXaImX5RrBG00TOFoc1w0X4HsVQbWkjmODQ++P
 Y7kbCdqvAnsvxwzxi5ckPLarMylsGgfx8L+I9egX5HqNNgqKCI/ozfFjY/9s+9cy5cDo
 NIVfcFEtN/PeVnS4hEdUNzXxKlAT/l8o6RBlkPRXlGNsIyDViBvKHZLJqT4pO3XVob1c
 fCSkkVaecRIFg9HVxXaYiZthXb2HpBOfaP7BkmnnmIEuK9GwZ0eAKzh7iQVyGw5+5RYj
 nBxqg5GVnLnBbQVltQZdf9VN83ZskeU9wCoVxtoG9Rsr3lH9KZ7MXi7jtEK1YJMQs7LZ
 O33Q==
X-Gm-Message-State: AGi0PuZ13XK2GfwFuG+w21KvcPFVmxO3Mzmj8tUr3a/4y19RxbM+4qh8
 8pab6s2piR8eg7owElQhR5Y=
X-Google-Smtp-Source: APiQypIpQr2fTJp7sK/Z45NvIbcu6kYbSACpGgviZMKo6vxLEoYdxdc72K9eQNDS8kRJ9TzuUBJ2bQ==
X-Received: by 2002:a2e:b44c:: with SMTP id o12mr6880195ljm.240.1588833860796; 
 Wed, 06 May 2020 23:44:20 -0700 (PDT)
Received: from xi.terra (c-beaee455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.174.190])
 by smtp.gmail.com with ESMTPSA id o20sm3131820lfc.39.2020.05.06.23.44.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 23:44:19 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1jWaGS-0008Rt-A0; Thu, 07 May 2020 08:44:12 +0200
Date: Thu, 7 May 2020 08:44:12 +0200
From: Johan Hovold <johan@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH net 11/16] net: ethernet: marvell: mvneta: fix fixed-link
 phydev leaks
Message-ID: <20200507064412.GL2042@localhost>
References: <1480357509-28074-1-git-send-email-johan@kernel.org>
 <1480357509-28074-12-git-send-email-johan@kernel.org>
 <CA+G9fYvBjUVkVhtRHVm6xXcKe2+tZN4rGdB9FzmpcfpaLhY1+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+G9fYvBjUVkVhtRHVm6xXcKe2+tZN4rGdB9FzmpcfpaLhY1+g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_234426_187431_2CE76F1A 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jhovold[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkft-triage@lists.linaro.org,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, Sasha Levin <sashal@kernel.org>,
 Felix Fietkau <nbd@openwrt.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Claudiu Manoil <claudiu.manoil@freescale.com>, Li Yang <leoli@freescale.com>,
 Mugunthan V N <mugunthanvnm@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Lars Persson <lars.persson@axis.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-omap@vger.kernel.org,
 John Crispin <blogic@openwrt.org>,
 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>,
 Fugang Duan <fugang.duan@nxp.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Vivien Didelot <vivien.didelot@savoirfairelinux.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxppc-dev@lists.ozlabs.org,
 open list <linux-kernel@vger.kernel.org>,
 linux- stable <stable@vger.kernel.org>, linux-renesas-soc@vger.kernel.org,
 Vitaly Bordug <vbordug@ru.mvista.com>, Netdev <netdev@vger.kernel.org>,
 nios2-dev@lists.rocketboards.org,
 Vince Bridgers <vbridger@opensource.altera.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 12:27:53AM +0530, Naresh Kamboju wrote:
> On Tue, 29 Nov 2016 at 00:00, Johan Hovold <johan@kernel.org> wrote:
> >
> > Make sure to deregister and free any fixed-link PHY registered using
> > of_phy_register_fixed_link() on probe errors and on driver unbind.
> >
> > Fixes: 83895bedeee6 ("net: mvneta: add support for fixed links")
> > Signed-off-by: Johan Hovold <johan@kernel.org>
> > ---
> >  drivers/net/ethernet/marvell/mvneta.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
> > index 0c0a45af950f..707bc4680b9b 100644
> > --- a/drivers/net/ethernet/marvell/mvneta.c
> > +++ b/drivers/net/ethernet/marvell/mvneta.c
> > @@ -4191,6 +4191,8 @@ static int mvneta_probe(struct platform_device *pdev)
> >         clk_disable_unprepare(pp->clk);
> >  err_put_phy_node:
> >         of_node_put(phy_node);
> > +       if (of_phy_is_fixed_link(dn))
> > +               of_phy_deregister_fixed_link(dn);
> 
> While building kernel Image for arm architecture on stable-rc 4.4 branch
> the following build error found.
> 
> drivers/net/ethernet/marvell/mvneta.c:3442:3: error: implicit
> declaration of function 'of_phy_deregister_fixed_link'; did you mean
> 'of_phy_register_fixed_link'? [-Werror=implicit-function-declaration]
> |    of_phy_deregister_fixed_link(dn);
> |    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> |    of_phy_register_fixed_link
> 
> ref:
> https://gitlab.com/Linaro/lkft/kernel-runs/-/jobs/541374729

Greg, 3f65047c853a ("of_mdio: add helper to deregister fixed-link
PHYs") needs to be backported as well for these.

Original series can be found here:

	https://lkml.kernel.org/r/1480357509-28074-1-git-send-email-johan@kernel.org

Johan

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
