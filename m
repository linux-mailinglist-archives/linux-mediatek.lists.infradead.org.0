Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8409055785
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 21:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxTc0/xzOTPzaLg1eBGFhiqvNWmRUhJIW4C9m75fOSM=; b=PmizbV0v57f+8J
	CWWiJH04+AAXZzSucVtWY4UCZUp3KC+Lg0nPgBISuiL+CMtKeME4LvtVis9PvCK490mIGoWJ5kRwx
	6LTb39Ody9hDppZ/4MgahobPy8TgNjVA8wdd7TNn9kke4RAugSLCbEvzvHmgs5rUje3u0XfMyuBPr
	5SqVc2buCEw0O15yGOfGHLbKWssEJhcRMg0iLVon8dZ2eMqXqOSjR2+kp0xMDc4PK7cwrQmtF5wLQ
	m3zIPZd9us7hmgi75mE3TVun62xyooTA9ACTd7I+Cq18cjhOJm7UD3Wxi2APzVhCMCjTT00O9zX1a
	jY5CPwpCBWye+2LVzR0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfqij-0004pq-95; Tue, 25 Jun 2019 19:03:09 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfqif-0004p9-Kr
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 19:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VAXht7vpZuAtpiuMA19JMP15bLrWIbv+G89yEKvdZCM=; b=WagtcMv/lSZC1/MxFghk1R0tXc
 vgwh1rTNfxElOekqfSxQJeuoYML7U6sdn7W9UhE2zW6TBpcSEVkTqHKfrog6Zpo9lz7cYWOoKjvSI
 IbiXK1tROWFfLWemwiWR4YTnCdTiInasFh5MIdISoQkTLoc4KVrhDPl9CPtMEyDFKgYE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hfqiM-0000Bg-C3; Tue, 25 Jun 2019 21:02:46 +0200
Date: Tue, 25 Jun 2019 21:02:46 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Daniel Santos <daniel.santos@pobox.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190625190246.GA27733@lunn.ch>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
 <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
 <1ad9f9a5-8f39-40bd-94bb-6b700f30c4ba@pobox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ad9f9a5-8f39-40bd-94bb-6b700f30c4ba@pobox.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_120305_837552_CD6DE066 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 vivien.didelot@gmail.com,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> But will there still be a mechanism to ignore link partner's advertising
> and force these parameters?

From man 1 ethtool:

       -a --show-pause
              Queries the specified Ethernet device for pause parameter information.

       -A --pause
              Changes the pause parameters of the specified Ethernet device.

           autoneg on|off
                  Specifies whether pause autonegotiation should be enabled.

           rx on|off
                  Specifies whether RX pause should be enabled.

           tx on|off
                  Specifies whether TX pause should be enabled.

You need to check the driver to see if it actually implements this
ethtool call, but that is how it should be configured.

	Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
