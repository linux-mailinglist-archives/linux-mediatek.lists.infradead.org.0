Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AE7988A5
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 02:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVSJx/KjO6OGdDegDQwpxlP2f4foRMnrfOiEL0tHBvc=; b=ZfGJuc2hVXTWC4
	i1lipo5SwHytziwciCpV4GtAyTfR1wbYZyzLuKqhyI6ZYGJ3y3v1JFdFU5pnMqJs/rj2lXGln+iod
	AHrgY5/jpxvebOb7Sy06s04n83N/e0E2JkSySRjEfQz3yD7dmwOa0QKiO7qaPIaV5/xOHKLGmqSAB
	PWhJ2Z6RxBJD34XieFciXcTwKwaVOJlVGaA08zDhi9oAiNLR/1Sj4q0z2UNX1fEewjtP/zBVc6Mxc
	YsMGWiUS9PVfD9c5tuiP6wwCvFQaa8gD+vGueyNEM+nmknL8OIDvjPQaGwvq9dQ9V9hERLKgZRJmz
	XCkewxGgD2+n6K+oGjMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bF8-0002ir-BV; Thu, 22 Aug 2019 00:46:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bF1-0002hI-9u
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 00:46:18 +0000
X-UUID: 128579f5887a4fa9a4647d46b41b9bcc-20190821
X-UUID: 128579f5887a4fa9a4647d46b41b9bcc-20190821
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <mars.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 94583835; Wed, 21 Aug 2019 16:46:03 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 17:46:01 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 08:46:00 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 08:46:00 +0800
Message-ID: <1566434764.14794.2.camel@mtkswgap22>
Subject: Re: [PATCH v2 11/11] arm64: dts: add dts nodes for MT6779
From: Mars Cheng <mars.cheng@mediatek.com>
To: Marc Zyngier <maz@kernel.org>
Date: Thu, 22 Aug 2019 08:46:04 +0800
In-Reply-To: <c533371d-efcd-59dc-0172-3f5775221302@kernel.org>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-12-git-send-email-mars.cheng@mediatek.com>
 <adec38bf-735b-9131-2b9d-1e427d47f88d@kernel.org>
 <1566214950.17081.3.camel@mtkswgap22>
 <c533371d-efcd-59dc-0172-3f5775221302@kernel.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174615_352840_94D11B06 
X-CRM114-Status: GOOD (  15.11  )
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
Cc: Rob Herring <robh@kernel.org>, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 mtk01761 <wendell.lin@mediatek.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Marc

> >>> +	soc {
> >>> +		#address-cells = <2>;
> >>> +		#size-cells = <2>;
> >>> +		compatible = "simple-bus";
> >>> +		ranges;
> >>> +
> >>> +		gic: interrupt-controller@0c000000 {
> >>> +			compatible = "arm,gic-v3";
> >>> +			#interrupt-cells = <3>;
> >>
> >> You also haven't described the CPU PMUs. Depending on how they are wired
> >> (SPIs or PPIs), you may have to change the interrupt-cells property to
> >> include a cell for the PPI partitioning.
> >>
> > 
> > pmu nodes would be:
> > 
> >         pmu {
> >                 compatible = "arm,armv8-pmuv3";
> >                 interrupt-parent = <&gic>;
> >                 interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
> >         };
> > 
> >         dsu-pmu-0 {
> >                 compatible = "arm,dsu-pmu";
> >                 interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> >                 cpus = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>,
> >                         <&cpu4>, <&cpu5>, <&cpu6>, <&cpu7>;
> >         };
> > 
> > so I think interrupt-cells could be <3>, will add pmu nodes in v3.
> 
> No, that's wrong, at least for the CPU pmu node.
> 
> First, you need two of them (one for the A55s, one for the A75s).
> Then you need to partition the corresponding PPI so that they can be
> described as separate affinity sets.
> Finally, this implies that #interrupt-cells goes up to 4, and all the
> interrupts directly routed to the GIC must be updated.
> 
> You should have something like this:
> 
> 	&gic {
> 		ppi-partitions {
> 			cluster0: interrupt-partition-0 {
> 				affinity = <&cpu0 &cpu1 &cpu2
>                                             &cpu3 &cpu4 &cpu5>;
> 			};
> 
> 			cluster1: interrupt-partition-1 {
> 				affinity = <&cpu6 &cpu7>;
> 			};
> 	};
> 
> 	pmu_a55 {
> 		compatible = "arm,cortex-a55-pmu", "arm,armv8-pmuv3";
> 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &cluster0>;
> 	};
> 
> 	pmu_a75 {
> 		compatible = "arm,cortex-a75-pmu", "arm,armv8-pmuv3";
> 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &cluster1>;
> 	};
> 
> Please see the rk3399 usage of the binding, as it is the canonical example.
> 
> > 

Got the idea. Will check rk3399 and fix our part. Thanks for reviewing.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
