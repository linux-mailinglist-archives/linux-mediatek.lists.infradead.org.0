Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D940651E2
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 08:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Ou6fv+uyiVBPAPxTk7yZkUg0fRmKe3MpP2l5G2LHjY=; b=dBdZglbfZ8qqBA
	bd/0emMxUhIDmuXb6tQFDSCfTm3Z6DtCKzLAWsHRdPTtAB1kzczcTbKGDTZoykgMOi+2CAqdAnMuz
	9JabcyQXlxZqsTGQqxl5OPTec+Fy501LcWQOhj4NDKvQO5Ff1yeLCAi4uPHEmfHk+pfD6XxOgQppy
	tKARDwy0dAS4diQGqbFL9uBzMTXBEisLUN65Q2tm7HcPYby85FJJc2DJVW6TUUvxy4wGVideOSa1r
	Fay4l8Tc4lTaqTPqj03gTHROixtqsFfopnJh1lFq5SMcu2YW1aKjzvQD5S8GvVeAfMOHP/vgXtZ2l
	EBS420XHxlyVh+rEr8jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlSi4-0007ND-Hv; Thu, 11 Jul 2019 06:37:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlSi0-0007Mg-QJ
 for linux-mediatek@lists.infradead.org; Thu, 11 Jul 2019 06:37:38 +0000
X-UUID: fce151d3d860489698230aafadac4820-20190710
X-UUID: fce151d3d860489698230aafadac4820-20190710
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 582755557; Wed, 10 Jul 2019 22:37:17 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 23:37:16 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n2.mediatek.inc
 (172.21.101.141) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 11 Jul 2019 14:37:14 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 11 Jul 2019 14:37:13 +0800
Message-ID: <1562827033.22938.0.camel@mhfsdcap03>
Subject: Re: [PATCH v2, 1/3] dt-bindings: soc: Add MT8183 emi dt-bindings
From: Xi Chen <xixi.chen@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 11 Jul 2019 14:37:13 +0800
In-Reply-To: <668e6ccb-709b-a93a-7113-a22362048972@gmail.com>
References: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
 <1558670066-22484-2-git-send-email-xixi.chen@mediatek.com>
 <668e6ccb-709b-a93a-7113-a22362048972@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_233736_861159_5FE24C78 
X-CRM114-Status: GOOD (  13.75  )
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
Cc: mark.rutland@arm.com, ck.hu@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


On Tue, 2019-06-18 at 23:32 +0200, Matthias Brugger wrote:
> 
> On 24/05/2019 05:54, Xi Chen wrote:
> > Add emi dt-bindings of MT8183 in binding document.
> > 
> > Signed-off-by: Xi Chen <xixi.chen@mediatek.com>
> > ---
> >  .../bindings/memory-controllers/mediatek,emi.txt      | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt
> > new file mode 100644
> > index 0000000..a19e3b3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt
> > @@ -0,0 +1,19 @@
> > +EMI (External Memory Interface)
> > +
> > +Required properties:
> > +- compatible : must be one of :
> > +	"mediatek,mt8183-emi"
> > +- reg : the register and size of the EMI block.
> 
> Please name the registers explicitly.
	the "reg" is emi reg base.
> 
> > +- interrupts : includes MPU, CGM, ELM.
> > +
> > +Example:
> > +	emi@10219000 {
> > +	compatible = "mediatek,mt8183-emi";
> 
> Please do the indention right.
	Yes, I do the indention right.
> 
> > +	reg = <0 0x10219000 0 0x1000>, /* CEN EMI */
> > +		  <0 0x10226000 0 0x1000>, /* EMI MPU */
> > +		  <0 0x1022d000 0 0x1000>, /* CHA EMI */
> > +		  <0 0x10235000 0 0x1000>; /* CHB EMI */
> 
> This looks quite spread out over the IO space. Is this really one HW block or
> did you add various blocks into one driver?
	Yes, you are right. I removed the unused reg addr and interrupts.
> 
> > +	interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_LOW>, /* MPU */
> > +			 <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>, /* CGM */
> > +			 <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>; /* ELM */
> > +};
> > 





_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
