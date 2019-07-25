Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE6743DF
	for <lists+linux-mediatek@lfdr.de>; Thu, 25 Jul 2019 05:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30qMfKZ+OPtldYAyMQND4SWQrwDNkQSMSTA+b+j3Aqs=; b=tWMamAMhaHl/ar
	xdU4YW2WvBbbZ5jXRvmqvG1g1rEOIizvsbp0n5egAqZs8xrgxzcYB9fUSTn7btKmBXLV0bWKNMZLC
	KNin9X+ktUMdo+nXaVAXiC2Kyhw/9Exc4jRwOqTMoDgDFCbph1DMAr+IygLOA+aExt26JrhJq5bZJ
	bIz69PD9WirEuRxogAPZf5C3P9PSvhzxgMwq7s5txG5l4rncJRciW6nyoTEepDBUgOeaANm0qqMtP
	daZTVM8i2olcZ2YJynZpcqNDbli/igSGLFEPXQBDLabNnx2CmGkJfNjH+GH1x5RExrgX4tlywwFic
	haNK51t3h5bqbQWgJ11w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqUJ9-0003pR-R7; Thu, 25 Jul 2019 03:20:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqUJ6-0003oC-3d; Thu, 25 Jul 2019 03:20:41 +0000
X-UUID: de8e2c0d068a42c18292777dd1df6c09-20190724
X-UUID: de8e2c0d068a42c18292777dd1df6c09-20190724
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1002913618; Wed, 24 Jul 2019 19:20:24 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 20:20:22 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 25 Jul 2019 11:20:19 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 25 Jul 2019 11:20:19 +0800
Message-ID: <1564024819.2621.4.camel@mtksdaap41>
Subject: Re: [PATCH v4, 05/33] dt-bindings: mediatek: add RDMA1 description
 for mt8183 display
From: CK Hu <ck.hu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 25 Jul 2019 11:20:19 +0800
In-Reply-To: <20190724201635.GA18345@bogus>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-6-git-send-email-yongqiang.niu@mediatek.com>
 <20190724201635.GA18345@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7D8A1CCF38AD247D3F162A72E891F36A49E6C52CAB3DEA3F413B16EB119711E62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_202040_159237_0182EAE4 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 yongqiang.niu@mediatek.com, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Rob:

On Wed, 2019-07-24 at 14:16 -0600, Rob Herring wrote:
> On Tue, Jul 09, 2019 at 06:33:45AM +0800, yongqiang.niu@mediatek.com wrote:
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > 
> > This patch add RDMA1 description for mt8183 display
> > 
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> > index afd3c90..bb9274a 100644
> > --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> > @@ -30,6 +30,7 @@ Required properties (all function blocks):
> >  	"mediatek,<chip>-disp-ovl"   		- overlay (4 layers, blending, csc)
> >  	"mediatek,<chip>-disp-ovl-2l"           - overlay (2 layers, blending, csc)
> >  	"mediatek,<chip>-disp-rdma"  		- read DMA / line buffer
> > +	"mediatek,<chip>-disp-rdma1"            - function is same with RDMA, fifo size is different
> 
> This can't be determined by which chip it is? IOW, a chip may have both 
> rdma and rdma1?

In MT8183, there are two different rdma. The difference is the fifo size
in each one. I've a question: is it better to have two compatible string
for each one, or just one compatible string for both but with a property
to set fifo size?

Regards,
CK

> 
> >  	"mediatek,<chip>-disp-wdma"  		- write DMA
> >  	"mediatek,<chip>-disp-ccorr"            - color correction
> >  	"mediatek,<chip>-disp-color" 		- color processor
> > -- 
> > 1.8.1.1.dirty
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
