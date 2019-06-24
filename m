Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3936451D68
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 23:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqjYdxs7VTOi5sC1w6T4rdfp8Ev1aXLrNxMzEFhwz/Q=; b=c3qc4i1RDHw7s5
	KsR8kl7I96qkXmC69PeJMAvPgTojxHO5tfK87mZLRvQvsjmmemz4gSdx2Yo5IfQXqLOPXnFuppEac
	c08nhow0d8SeEJlNvLAL1RTuryiXh9y3KdKvvm6te8m4z78FW+M4Nd13GlULDSCXqlgSuBtuXYhYz
	zEAj1nhqX/Kx+kDBcavZLmM0SOntwv69+9DDsFpwsF1VMyhCkXeaB5Oi3FIo2nGXR3twOqT6pBxN+
	wOF6oRfdvkCHQFQNZt1eeV+wBniiN/52ofU6LBWUhbVnpXW0tCs3G9svqAs15G+i7j7QEhPqwKx0d
	K76YcHiMznna7BvZAk/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfWti-00081E-A5; Mon, 24 Jun 2019 21:53:10 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfWte-00080c-NS
 for linux-mediatek@lists.infradead.org; Mon, 24 Jun 2019 21:53:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nXnV3K3041bH5KruAWVhU8YbjxtW4QexjPRk7ueMrxw=; b=yQJ1V4usWaBbw+NMeyj/ryK2xj
 P76Xpng2LDJXCDNb6veATOD5UX2BR1h7nI5uITh7RWHJsXSymSGylua2omlgDwdTXkuzJ0TymxYZd
 qBmiAliSpIZZEarBxXCNTSzlOjzNSdQ7yG2y0RaUQYk7fez4x7ckQ3rE434tVbcAmI64=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hfWtM-0000jm-Dc; Mon, 24 Jun 2019 23:52:48 +0200
Date: Mon, 24 Jun 2019 23:52:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH RFC net-next 5/5] net: dsa: mt7530: Add
 mediatek,ephy-handle to isolate external phy
Message-ID: <20190624215248.GC31306@lunn.ch>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-6-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624145251.4849-6-opensource@vdorst.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_145307_827159_FE85D613 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 sean.wang@mediatek.com, linux@armlinux.org.uk, davem@davemloft.net,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, vivien.didelot@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> +static int mt7530_isolate_ephy(struct dsa_switch *ds,
> +			       struct device_node *ephy_node)
> +{
> +	struct phy_device *phydev = of_phy_find_device(ephy_node);
> +	int ret;
> +
> +	if (!phydev)
> +		return 0;
> +
> +	ret = phy_modify(phydev, MII_BMCR, 0, (BMCR_ISOLATE | BMCR_PDOWN));

genphy_suspend() does what you want.

> +	if (ret)
> +		dev_err(ds->dev, "Failed to put phy %s in isolation mode!\n",
> +			ephy_node->full_name);
> +	else
> +		dev_info(ds->dev, "Phy %s in isolation mode!\n",
> +			 ephy_node->full_name);

No need to clog up the system with yet more kernel messages.

   Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
