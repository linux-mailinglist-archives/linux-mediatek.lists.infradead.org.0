Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AFCA2FB3
	for <lists+linux-mediatek@lfdr.de>; Fri, 30 Aug 2019 08:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qd/23Z8H0d1lDXz+Wbt9/F2Zn602DpH9J/V/Bfq/Hnw=; b=ACfon8lasmo6VW
	1MVR8E8+ofrJx0T0R+VIzaWsBgcd1uSjVspk5XimmqmyR8h3xTqIpFz5LaSqH3lJrJi0fM+YgWjgv
	tOMmJ3mHdKNQTrP05LK9oYW8MUA7IxnhQD2DTvXh5SGSdk6hEmkQ92xxP/PFpbJotbjK4tRJ6+FFo
	DoHDFLtGp7pN73CsjUtX76FQur2rYGTBCp9GYruvF7Uw5c7NAwaiKgt6/adGRKg/R/yor1dFHCGpq
	gghwMkjHvzuaztaGWs8lHQMwhfjf4SmPA1aeKP4nMSaTqdt+fqy4c1tvVQ1x6iLf/MneokcM/2iZE
	JP/pntzEYCa2TQeypMQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aJ0-0007Zl-FQ; Fri, 30 Aug 2019 06:22:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aIw-0007ZN-DP; Fri, 30 Aug 2019 06:22:39 +0000
X-UUID: 812305690ab24653a2b0dc3efc22cbd8-20190829
X-UUID: 812305690ab24653a2b0dc3efc22cbd8-20190829
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2010545636; Thu, 29 Aug 2019 22:22:38 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 23:22:37 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 30 Aug 2019 14:22:34 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 14:22:34 +0800
Message-ID: <1567146149.7317.40.camel@mhfsdcap03>
Subject: Re: [PATCH 02/11] dt-bindings: phy-mtk-tphy: make the ref clock
 optional
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Fri, 30 Aug 2019 14:22:29 +0800
In-Reply-To: <20190829192550.GA29881@bogus>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
 <a31d78484b64f853a16e7dcb16fae9fc0de45ebb.1566542696.git.chunfeng.yun@mediatek.com>
 <20190829192550.GA29881@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 98DB08F7F53AF6863050E9819BDD5FA46007C836A76BD5835C75A269FC4EE4DF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_232238_459041_26FEC175 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-08-29 at 14:25 -0500, Rob Herring wrote:
> On Fri, Aug 23, 2019 at 03:00:09PM +0800, Chunfeng Yun wrote:
> > Make the ref clock optional, then we no need refer to a fixed-clock
> > in DTS anymore when the clock of USB3 PHY comes from oscillator
> > directly
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> >  .../devicetree/bindings/phy/phy-mtk-tphy.txt        | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > index d5b327f85fa2..1c18bf10b2fe 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > +++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > @@ -34,12 +34,6 @@ Optional properties (controller (parent) node):
> >  
> >  Required properties (port (child) node):
> >  - reg		: address and length of the register set for the port.
> > -- clocks	: a list of phandle + clock-specifier pairs, one for each
> > -		  entry in clock-names
> > -- clock-names	: must contain
> > -		  "ref": 48M reference clock for HighSpeed analog phy; and 26M
> > -			reference clock for SuperSpeed analog phy, sometimes is
> > -			24M, 25M or 27M, depended on platform.
> >  - #phy-cells	: should be 1 (See second example)
> >  		  cell after port phandle is phy type from:
> >  			- PHY_TYPE_USB2
> > @@ -48,6 +42,13 @@ Required properties (port (child) node):
> >  			- PHY_TYPE_SATA
> >  
> >  Optional properties (PHY_TYPE_USB2 port (child) node):
> > +- clocks	: a list of phandle + clock-specifier pairs, one for each
> > +		  entry in clock-names
> > +- clock-names	: may contain
> > +		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
> > +			reference clock for SuperSpeed anolog phy, sometimes is
> > +			24M, 25M or 27M, depended on platform.
> 
> How do you know the frequency when it is not present?
It's always present, but sometimes it's always on by default (e.g. 48Mhz
of U2 PHY), or comes from oscillator directly  (e.g. 26Mhz of U3 PHY),
so not controlled by CCF, of course we can use a fixed-clock in latter
case, it's useful to make it optional for these two cases.

Thanks

> 
> > +
> >  - mediatek,eye-src	: u32, the value of slew rate calibrate
> >  - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
> >  - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage
> > -- 
> > 2.23.0
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
