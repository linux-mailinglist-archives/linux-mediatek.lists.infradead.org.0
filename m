Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431EE77596
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Jul 2019 03:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWFxrr/QPmlPQyMsu/IL483MVpbDi5SPNjjb4vumvZY=; b=p67sG/SNBPmEAF
	ZMna9JepPk8GjHBQrrN8/jGknSswOcHm6ZqJIUZHHM4TI0AAdsbBGQiooQ5UlGTdsNbJahVjWnu49
	NM9dIZF8kCcce106PHF0ugOZLR+9HoLfUtFmYTuVXwgVBF37o0xdnzPiacngwWgXipimPEBy6fSj2
	/TE2aNhNKkfvdile3sCWLjA9/d7JBhEyEQ4QbQ628X7Ernj1TLpZeuHrhNc6bqcO+uNG0ghRS3+rR
	d5GeCrbnzWt1JVMnXJVx2+TNh3wwwhLDHV+vRB9lJapEakgsMbnCURs6whUL2ncrDGn64M6A2TR2T
	NssXMG3duQuYh+1lsjWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrBRW-00032z-8f; Sat, 27 Jul 2019 01:24:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrBR4-0002sf-FZ; Sat, 27 Jul 2019 01:23:49 +0000
X-UUID: a57b4cb0e36a4fafb7365a208f4c6ce5-20190726
X-UUID: a57b4cb0e36a4fafb7365a208f4c6ce5-20190726
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2017277971; Fri, 26 Jul 2019 17:23:40 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 18:23:39 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 27 Jul 2019 09:23:34 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 27 Jul 2019 09:23:33 +0800
Message-ID: <1564190613.24702.11.camel@mhfsdcap03>
Subject: Re: [PATCH v3 1/2] dt-bindings: i3c: Document MediaTek I3C master
 bindings
From: Qii Wang <qii.wang@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Sat, 27 Jul 2019 09:23:33 +0800
In-Reply-To: <20190724202119.GA26566@bogus>
References: <1562677762-24067-1-git-send-email-qii.wang@mediatek.com>
 <1562677762-24067-2-git-send-email-qii.wang@mediatek.com>
 <20190724202119.GA26566@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3115CDD7324A6A0F4379AC19364C2F37546642D4CAA4C5EC9B050BD991421A8C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_182346_527655_100942CD 
X-CRM114-Status: GOOD (  17.50  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, bbrezillon@kernel.org, leilk.liu@mediatek.com,
 linux-kernel@vger.kernel.org, liguo.zhang@mediatek.com,
 linux-mediatek@lists.infradead.org, xinping.qian@mediatek.com,
 matthias.bgg@gmail.com, linux-i3c@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-07-24 at 14:21 -0600, Rob Herring wrote:
> On Tue, Jul 09, 2019 at 09:09:21PM +0800, Qii Wang wrote:
> > Document MediaTek I3C master DT bindings.
> > 
> > Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> > ---
> >  .../devicetree/bindings/i3c/mtk,i3c-master.txt     |   48 ++++++++++++++++++++
> >  1 file changed, 48 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt b/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> > new file mode 100644
> > index 0000000..d32eda6
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> > @@ -0,0 +1,48 @@
> > +Bindings for MediaTek I3C master block
> > +=====================================
> > +
> > +Required properties:
> > +--------------------
> > +- compatible: shall be "mediatek,i3c-master"
> 
> Needs to be SoC specific.
> 

We hope that the SOCs will use the same driver and try to avoid big
changes. If there are inevitable changes in the future, then we will
modify the compatible to be SoC specific. cdns,i3c-master.txt is not SoC
specific either.

> > +- reg: physical base address of the controller and apdma base, length of
> > +  memory mapped region.
> > +- reg-names: shall be "main" for master controller and "dma" for apdma.
> > +- interrupts: the interrupt line connected to this I3C master.
> > +- clocks: shall reference the i3c and apdma clocks.
> > +- clock-names: shall include "main" and "dma".
> > +
> > +Mandatory properties defined by the generic binding (see
> > +Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> > +
> > +- #address-cells: shall be set to 3
> > +- #size-cells: shall be set to 0
> > +
> > +Optional properties defined by the generic binding (see
> > +Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> > +
> > +- i2c-scl-hz
> > +- i3c-scl-hz
> > +
> > +I3C device connected on the bus follow the generic description (see
> > +Documentation/devicetree/bindings/i3c/i3c.txt for more details).
> > +
> > +Example:
> > +
> > +	i3c0: i3c@1100d000 {
> > +		compatible = "mediatek,i3c-master";
> > +		reg = <0x1100d000 0x1000>,
> > +		      <0x11000300 0x80>;
> > +		reg-names = "main", "dma";
> > +		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_LOW>;
> > +		clocks = <&infracfg CLK_INFRA_I3C0>,
> > +			 <&infracfg CLK_INFRA_AP_DMA>;
> > +		clock-names = "main", "dma";
> > +		#address-cells = <3>;
> > +		#size-cells = <0>;
> > +		i2c-scl-hz = <100000>;
> > +
> > +		nunchuk: nunchuk@52 {
> > +			compatible = "nintendo,nunchuk";
> > +			reg = <0x52 0x0 0x10>;
> > +		};
> > +	};
> > -- 
> > 1.7.9.5
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
