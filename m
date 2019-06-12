Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C15641AE2
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 06:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ci1UfXTwKQrPnGwzIhj86wgztP+oFDImUWDwXai6Of8=; b=Ob9q3W6XoBTVRV
	3bIFXNl8bbCG6vT5UbrHKG+93NAXpqnuiFqayw4BSeD1HDlX6Kccgga7jQc827QGTp5zBIpcTCg3w
	MKnRO/mI4JBlyY4VVriHvojTcmRxn5BUYX2Gv2/3WTDm5qqOvaGV3TkdEimHcddgw2Y/8gozv/8fa
	O1E0m5Rk3yaPjWiWNI56MvKBssIJDxp4DGLf/c9gWfsl6o87wWW3wAFj3nXrN+dfm8OTUsIQ/dK6/
	4Cwq1mvZQYOjHkAp+e7VEKnhjp2NYPz3aIFNmIowSzguMXCE6vRW4vlNxSF79bNN+KA1TQvqb8b+U
	oPF/GfaIr6l30H5z2ONQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hauTw-0002nq-K2; Wed, 12 Jun 2019 04:03:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hauTf-0002cL-Mw; Wed, 12 Jun 2019 04:03:13 +0000
X-UUID: 1b1c458c5e96493891cc0e0c5e151175-20190611
X-UUID: 1b1c458c5e96493891cc0e0c5e151175-20190611
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 777876446; Tue, 11 Jun 2019 20:02:57 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 21:02:55 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 12:02:54 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Jun 2019 12:02:54 +0800
Message-ID: <1560312174.20601.6.camel@mtkswgap22>
Subject: Re: [PATCH v3 2/3] dt-bindings: rng: update bindings for MediaTek
 ARMv8 SoCs
From: Neal Liu <neal.liu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Wed, 12 Jun 2019 12:02:54 +0800
In-Reply-To: <20190611225351.GA17332@bogus>
References: <1560162984-26104-1-git-send-email-neal.liu@mediatek.com>
 <1560162984-26104-3-git-send-email-neal.liu@mediatek.com>
 <20190611225351.GA17332@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_210311_753034_6B051B5F 
X-CRM114-Status: GOOD (  17.94  )
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
 Herbert Xu <herbert@gondor.apana.org.au>, wsd_upstream@mediatek.com,
 Sean Wang <sean.wang@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo <Crystal.Guo@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-06-11 at 16:53 -0600, Rob Herring wrote:
> On Mon, Jun 10, 2019 at 06:36:23PM +0800, Neal Liu wrote:
> > Document the binding used by the MediaTek ARMv8 SoCs random
> > number generator with TrustZone enabled.
> > 
> > Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/rng/mtk-rng.txt |   15 ++++++++++++---
> >  1 file changed, 12 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/rng/mtk-rng.txt b/Documentation/devicetree/bindings/rng/mtk-rng.txt
> > index 2bc89f1..fb3dd59 100644
> > --- a/Documentation/devicetree/bindings/rng/mtk-rng.txt
> > +++ b/Documentation/devicetree/bindings/rng/mtk-rng.txt
> > @@ -3,9 +3,13 @@ found in MediaTek SoC family
> >  
> >  Required properties:
> >  - compatible	    : Should be
> > -			"mediatek,mt7622-rng", 	"mediatek,mt7623-rng" : for MT7622
> > -			"mediatek,mt7629-rng",  "mediatek,mt7623-rng" : for MT7629
> > -			"mediatek,mt7623-rng" : for MT7623
> > +			"mediatek,mt7622-rng", "mediatek,mt7623-rng" for MT7622
> > +			"mediatek,mt7629-rng", "mediatek,mt7623-rng" for MT7629
> > +			"mediatek,mt7623-rng" for MT7623
> > +			"mediatek,mtk-sec-rng" for MediaTek ARMv8 SoCs with
> > +			security RNG
> 
> Is there any commonality with the prior h/w? If not, make this a 
> separate binding doc.

There are less common with the prior h/w... I had been thinking about
make new binding doc. Since your suggestion, I'll make one.

> 
> > +
> > +Optional properties:
> >  - clocks	    : list of clock specifiers, corresponding to
> >  		      entries in clock-names property;
> >  - clock-names	    : Should contain "rng" entries;
> > @@ -19,3 +23,8 @@ rng: rng@1020f000 {
> >  	clocks = <&infracfg CLK_INFRA_TRNG>;
> >  	clock-names = "rng";
> >  };
> > +
> > +/* secure RNG */
> > +hwrng: hwrng {
> > +	compatible = "mediatek,mtk-sec-rng";
> 
> How does one access this? Seems like this should be part of a node for 
> firmware? What about other functions?

Yes, We move all hw register & clock control access to the ATF by smc.

> 
> > +};
> > -- 
> > 1.7.9.5
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
