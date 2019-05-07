Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0791651F
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 May 2019 15:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3Y+IwFfF04sMnKc6Z+86RYB1taZ+NuPTSX8hsIykBg=; b=dQopPsIHWc9L5R
	FAbaFLRE2bGPBkFVaWhJ+x95hHvpgc1w9bsHy6vyEsWskE6bQdsusDOUIK7jkpA3oZyWrcHQPX1wB
	xMFsK/3wVP0o24aAk5Syb9jDaMwodNrxpWYNMmbO5Vzp3c3fE4n8/NJtj3cyhyeGG6pZPxr0tE07Z
	W0adyp10XQFXJXSOYcG/vj6lmitWSwd+bWyZ8PqoGwd9n3wXvGUw+sYUgoOT8ngg1pyJNCKoYgkt7
	qXlAnWA0rq2ukBwEUUMe65XD9oldlwLbPgp4JUGLY3JnPduIhk2lrLkk1SeEHwCuUgP/Ayf9dxCqJ
	wz3c9UnVimWvCPBWJArA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0X1-0003Zl-17; Tue, 07 May 2019 13:53:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0WT-0002s0-D8; Tue, 07 May 2019 13:52:50 +0000
X-UUID: 77d3e3e491b24779b1a7513bffe9917d-20190507
X-UUID: 77d3e3e491b24779b1a7513bffe9917d-20190507
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1932755384; Tue, 07 May 2019 05:52:34 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 06:52:33 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 21:52:30 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 7 May 2019 21:52:30 +0800
Message-ID: <1557237150.11458.45.camel@mtksdccf07>
Subject: Re: [RFC PATCH V1 3/6] dt-bindings: mt8183: Added FD dt-bindings
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Tue, 7 May 2019 21:52:30 +0800
In-Reply-To: <20190501224647.GA12044@bogus>
References: <20190423104505.38778-1-Jerry-Ch.chen@mediatek.com>
 <20190423104505.38778-4-Jerry-Ch.chen@mediatek.com>
 <20190501224647.GA12044@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 208F602F23B4135D007ECC86C99CD3A7F4CB67645D09D8B5C4AFEE51EBC031A52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065245_915788_D9EAE426 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 suleiman@chromium.org, jerry-ch.chen@mediatek.com, jungo.lin@mediatek.com,
 hans.verkuil@cisco.com, frederic.chen@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 holmes.chiou@mediatek.com, shik@chromium.org, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 christie.yu@mediatek.com, zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Rob,

Thank you for your comments.

On Wed, 2019-05-01 at 17:46 -0500, Rob Herring wrote:
> On Tue, Apr 23, 2019 at 06:45:02PM +0800, Jerry-ch Chen wrote:
> > From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > 
> > This patch adds DT binding documentation for the Face Detection (FD)
> > unit of the camera system on Mediatek's SoCs.
> > 
> > Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > ---
> >  .../bindings/media/mediatek,mt8183-fd.txt     | 34 +++++++++++++++++++
> >  1 file changed, 34 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt b/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> > new file mode 100644
> > index 000000000000..97c12fd93e7e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> > @@ -0,0 +1,34 @@
> > +* Mediatek Face Detection Unit (FD)
> > +
> > +Face Detection (FD) unit is a typical memory-to-memory HW device.
> > +It provides hardware accelerated face detection function, and it
> > +is able to detect different poses of faces. FD will writre result
> > +of detected face into memory as output.
> > +
> > +Required properties:
> > +- compatible: "mediatek,mt8183-fd"
> > +- reg: Physical base address and length of the function block register space
> > +- interrupts: interrupt number to the cpu.
> > +- iommus: should point to the respective IOMMU block with master port as
> > +  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> > +  for details.
> 
> How many entries? Looks like 3 from the example.
> 

Yes, we have 3 entries.  I would like to update this part as
following:

iommus: should point to the 3 entries:  M4U_PORT_CAM_FDVT_RP,
M4U_PORT_CAM_FDVT_WR and M4U_PORT_CAM_FDVT_RB.  (Please see
Documentation/devicetree/bindings/iommu/mediatek,iommu.txt for details.)

> > +- mediatek,larb: must contain the local arbiters in the current Socs, see
> > +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> > +  for details.
> > +- clocks : must contain the FDVT clock
> > +- clock-names: must contain FD_CLK_IMG_FD
> > +
> > +Example:
> > +	fd:fd@1502b000 {
>            ^ space needed
> 

We will fix it in next version of the patch.

> > +		compatible = "mediatek,mt8183-fd";
> > +		mediatek,larb = <&larb5>;
> > +		mediatek,scp = <&scp>;
> > +		iommus = <&iommu M4U_PORT_CAM_FDVT_RP>,
> > +			 <&iommu M4U_PORT_CAM_FDVT_WR>,
> > +			 <&iommu M4U_PORT_CAM_FDVT_RB>;
> > +		reg = <0 0x1502b000 0 0x1000>;
> > +		interrupts = <GIC_SPI 269 IRQ_TYPE_LEVEL_LOW>;
> > +		clocks = <&imgsys CLK_IMG_FDVT>;
> > +		clock-names = "FD_CLK_IMG_FD";
> > +	};
> > +
> > -- 
> > 2.18.0
> > 

Sincerely,

Jerry




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
