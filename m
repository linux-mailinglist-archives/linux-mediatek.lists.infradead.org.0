Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439E8484D5
	for <lists+linux-mediatek@lfdr.de>; Mon, 17 Jun 2019 16:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMtXDxh3SI+JCIku7e8uAoJqwtPV4aGSfUuQN8Uigq4=; b=u2RSuCFVpYZ+fA
	aOpT9Lq6taNyy/rySn7JTD3uJsoWG8kV/woXlPXAx6/iyxoj0wmC4FMf+jD9pR5arVEsl1kk9Xjgy
	jfuHslh3LiidVQ2evcXuXMG+IhmoiCElhHl3jeNsvJ0C1Dxz0Ktg1P4oK7yEPBgg6ZQbYo7kJJZ3u
	ed1PbDMyXudA3OVHrXFxM1rixWF4/dKnaSKve1DF2zmKGR5xRELEs25uen0mzGNTmhi9gkeAUJb32
	xu98RCWxcWMMIsWkD9sAnWRe+q/fE9Kv443odYflDJT8g0MsYjoiA4nZfcZSrabhxSCiyiaf1cpeb
	9lbeTBqeANswQWtmxtxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsDt-0000DS-8t; Mon, 17 Jun 2019 14:03:01 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsDl-0000CN-On
 for linux-mediatek@lists.infradead.org; Mon, 17 Jun 2019 14:02:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NLmK9rOO5VvLR7mLxvavfAoFSN3ceVBckcTU41bgZsw=; b=hMmhLsBoXeMpfMl3U4IHIwRdsj
 PLbBdSI7lLwFY5f0CpH3RRL3hYYfE2Rj1DM65UJ8ZFAE9L096phJ6YbPsSmwo1V3cg8y7CiFGqx4Q
 ObFfvXCtO0a14PpRW0dS137hADwrk2g35cUwGgNhOvU+tG3GiL4jbgK0jDk0fVsqrzbA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hcsDH-0007gw-Tq; Mon, 17 Jun 2019 16:02:23 +0200
Date: Mon, 17 Jun 2019 16:02:23 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next 0/2] net: mediatek: Add MT7621 TRGMII mode support
Message-ID: <20190617140223.GC25211@lunn.ch>
References: <20190616182010.18778-1-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190616182010.18778-1-opensource@vdorst.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_070254_124640_DF21A2D9 
X-CRM114-Status: UNSURE (   5.04  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, linux-mediatek@lists.infradead.org,
 john@phrozen.org, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, Jun 16, 2019 at 08:20:08PM +0200, Ren=E9 van Dorst wrote:
> Like many other mediatek SOCs, the MT7621 SOC and the internal MT7530 swi=
tch both
> supports TRGMII mode. MT7621 TRGMII speed is 1200MBit.

Hi Ren=E9

Is TRGMII used only between the SoC and the Switch? Or does external
ports of the switch also support 1200Mbit/s? If external ports support
this, what does ethtool show for Speed?

      Thanks
	Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
