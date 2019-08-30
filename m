Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDABA2FBD
	for <lists+linux-mediatek@lfdr.de>; Fri, 30 Aug 2019 08:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYf4bGf5ItAry5o1plAfDuJkFSQyT4o9J9I7fHym0cI=; b=KqYxv/uRSfzyaT
	AlpcXILzV8oin/Vb52vOdunvuCzZoLU8nukNgsr0ocyFa/iEnuw6zhjoLSYsE62U+Dl8XSQjpYbI5
	BWSq0Cbs8eQ10h4Ll+MFevQk2Ya5t+afd/5G72CxnsEEdSA8a+5zKyrfLqhKX/53vU0e9JT53megB
	RkdK/GdZG81h8hSmA0TvejKRLLAZDgrEM95opqfghrbNI/xgbVg7noUCjTz+QGSNwM9iFv/oLzuk4
	HxN9l7B1AyLzYjUS6CCAqti0rzezFurAuz/nlokeS/n/oGipEJIZkMH/zodb45z2pmr5jrPMyqXoW
	OfNJFWJghL/dJLjdoCqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aKP-00086z-0k; Fri, 30 Aug 2019 06:24:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aKH-000835-Am; Fri, 30 Aug 2019 06:24:03 +0000
X-UUID: bacfb79122ad47e1a385b5481aee6351-20190829
X-UUID: bacfb79122ad47e1a385b5481aee6351-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 703893492; Thu, 29 Aug 2019 22:24:02 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 23:24:00 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 30 Aug 2019 14:23:56 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 14:23:56 +0800
Message-ID: <1567146231.7317.41.camel@mhfsdcap03>
Subject: Re: [PATCH 04/11] dt-bindings: phy-mtk-tphy: add a new reference clock
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Fri, 30 Aug 2019 14:23:51 +0800
In-Reply-To: <20190829200503.GA2542@bogus>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
 <f6ee7d33103b43b2f1e1331c23c36057ef20b20d.1566542697.git.chunfeng.yun@mediatek.com>
 <20190829200503.GA2542@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9D29D17FAA54D1AE255DE995E26BF8FEA1AEFE9EE094F78B2839206ECE2E9EEE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_232401_738680_2E2917CD 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Thu, 2019-08-29 at 15:05 -0500, Rob Herring wrote:
> On Fri, Aug 23, 2019 at 03:00:11PM +0800, Chunfeng Yun wrote:
> > Usually the digital and anolog phys use the same reference clock,
> > but on some platforms, they are separated, so add another optional
> > clock to support it.
> > In order to keep the clock names consistent with PHY IP's, use
> > the da_ref for anolog phy and ref clock for digital phy.
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > index dbc143ed5999..ed9a2641f204 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > +++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > @@ -41,9 +41,12 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
> >  - clocks	: a list of phandle + clock-specifier pairs, one for each
> >  		  entry in clock-names
> >  - clock-names	: may contain
> > -		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
> > -			reference clock for SuperSpeed anolog phy, sometimes is
> > +		  "ref": 48M reference clock for HighSpeed (digital) phy; and 26M
> > +			reference clock for SuperSpeed (digital) phy, sometimes is
> >  			24M, 25M or 27M, depended on platform.
> > +		  "da_ref": the reference clock of anolog phy, used if the clocks
> > +			of anolog and digital phys are separated, otherwise uses
> 
> s/amolog/analog/
will fix it
> 
> > +			"ref" clock only if need.
> 
> needed.
also here

Thanks a lot

> 
> >  
> >  - mediatek,eye-src	: u32, the value of slew rate calibrate
> >  - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
> > -- 
> > 2.23.0
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
