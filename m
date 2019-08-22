Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD23099428
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 14:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGLDUb9Hc+Gwz5pevxYdl0TAUirmAfjQYgqC5KVGEJ8=; b=SmglGyO7VfWQzD
	RCrPsK1PuWnZMnjsCwRBrQh5trsIArIEqAQdUtiZU7NmYjehta4QEt9Zq2GeX1CDkvRle7671AZRz
	yPpDKwQ/QOYWYLAYSCBsUB55q0vkzC3e0ggXIkmgmg0XeL6XdF/QLobX+x6zQSEiSn+mr3rgUEb5k
	mIpqQA4BKVHZv6mofDI15NoRGFcC34lGiKzylBdveSNue/mPjthWIyHgGWNPyjB4hAQORv3//BetQ
	ClEaxWJSlvFEyJx+t1CohOjfE9F9FNjsuXEFNhxh6fq7GZmefnK3a8UaK86nJbB365QXYbtlQK3R5
	xry7lANGWyKit4QBBNpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mVn-000199-7y; Thu, 22 Aug 2019 12:48:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mVU-0000zS-2X; Thu, 22 Aug 2019 12:48:01 +0000
X-UUID: 3a7dd60af8cb48ba980ccac490edc107-20190822
X-UUID: 3a7dd60af8cb48ba980ccac490edc107-20190822
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 591519225; Thu, 22 Aug 2019 04:47:50 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 05:47:48 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 20:47:35 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 20:47:35 +0800
Message-ID: <1566478060.5044.0.camel@mtksdccf07>
Subject: Re: [RFC,v4,1/4] media: dt-bindings: mt8183: Added camera ISP Pass 1
From: Jungo Lin <jungo.lin@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 22 Aug 2019 20:47:40 +0800
In-Reply-To: <20190821194752.GA15270@bogus>
References: <jungo.lin@mediatek.com>
 <20190807124803.29884-1-jungo.lin@mediatek.com>
 <20190807124803.29884-2-jungo.lin@mediatek.com>
 <20190821194752.GA15270@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_054800_125122_AF0F55F8 
X-CRM114-Status: GOOD (  19.14  )
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart@ideasonboard.com, Rynn.Wu@mediatek.com, suleiman@chromium.org,
 Jerry-ch.Chen@mediatek.com, frederic.chen@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 hverkuil-cisco@xs4all.nl, shik@chromium.org, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 zwisler@chromium.org, ddavenport@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Rob:

On Wed, 2019-08-21 at 14:47 -0500, Rob Herring wrote:
> On Wed, Aug 07, 2019 at 08:48:00PM +0800, Jungo Lin wrote:
> > This patch adds DT binding document for the Pass 1 (P1) unit
> > in Mediatek's camera ISP system. The Pass 1 unit grabs the sensor
> > data out from the sensor interface, applies ISP image effects
> > from tuning data and outputs the image data or statistics data to DRAM.
> > 
> > Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> > ---
> >  .../bindings/media/mediatek,camisp.txt        | 73 +++++++++++++++++++
> >  1 file changed, 73 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/mediatek,camisp.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/media/mediatek,camisp.txt b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
> > new file mode 100644
> > index 000000000000..fa2713acceca
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
> > @@ -0,0 +1,73 @@
> > +* Mediatek Image Signal Processor Pass 1 (ISP P1)
> > +
> > +The Pass 1 unit of Mediatek's camera ISP system grabs the sensor data out
> > +from the sensor interface, applies ISP effects from tuning data and outputs
> > +the image data and statistics data to DRAM. Furthermore, Pass 1 unit has
> > +the ability to output two different resolutions frames at the same time to
> > +increase the performance of the camera application.
> > +
> > +Required properties:
> > +- compatible: Must be "mediatek,mt8183-camisp" for MT8183.
> > +- reg: Physical base address of the camera function block register and
> > +  length of memory mapped region. Must contain an entry for each entry
> > +  in reg-names.
> > +- reg-names: Must include the following entries:
> > +  "cam_sys": Camera base function block
> > +  "cam_uni": Camera UNI function block
> > +  "cam_a": Camera ISP P1 hardware unit A
> > +  "cam_b": Camera ISP P1 hardware unit B
> > +  "cam_c": Camera ISP P1 hardware unit C
> > +- interrupts: Must contain an entry for each entry in interrupt-names.
> > +- interrupt-names : Must include the following entries:
> > +  "cam_uni": Camera UNI interrupt
> > +  "cam_a": Camera unit A interrupt
> > +  "cam_b": Camera unit B interrupt
> > +  "cam_c": Camera unit C interrupt
> > +- iommus: Shall point to the respective IOMMU block with master port
> > +  as argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> > +  for details.
> > +- clocks: A list of phandle and clock specifier pairs as listed
> > +  in clock-names property, see
> > +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> > +- clock-names: Must be "camsys_cam_cgpdn" and "camsys_camtg_cgpdn".
> > +- mediatek,larb: Must contain the local arbiters in the current SoCs, see
> > +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> > +  for details.
> > +- power-domains: a phandle to the power domain, see
> > +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> > +- mediatek,scp : The node of system control processor (SCP), see
> > +  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
> > +
> > +Example:
> > +SoC specific DT entry:
> > +
> > +		camisp: camisp@1a000000 {
> > +			compatible = "mediatek,mt8183-camisp", "syscon";
> 
> syscon doesn't seem appropriate nor is it documented.
> 

Thanks for your comment.
I will remove "syscon" in next patch.

Best regards,

Jungo

> > +			reg = <0 0x1a000000 0 0x1000>,
> > +					<0 0x1a003000 0 0x1000>,
> > +					<0 0x1a004000 0 0x2000>,
> > +					<0 0x1a006000 0 0x2000>,
> > +					<0 0x1a008000 0 0x2000>;
> > +			reg-names = "cam_sys",
> > +					"cam_uni",
> > +					"cam_a",
> > +					"cam_b",
> > +					"cam_c";
> > +			interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
> > +					<GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
> > +					<GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>,
> > +					<GIC_SPI 256 IRQ_TYPE_LEVEL_LOW>;
> > +			interrupt-names = "cam_uni",
> > +					"cam_a",
> > +					"cam_b",
> > +					"cam_c";
> > +			iommus = <&iommu M4U_PORT_CAM_IMGO>;
> > +			clocks = <&camsys CLK_CAM_CAM>,
> > +					<&camsys CLK_CAM_CAMTG>;
> > +			clock-names = "camsys_cam_cgpdn",
> > +					"camsys_camtg_cgpdn";
> > +			mediatek,larb = <&larb3>,
> > +					<&larb6>;
> > +			power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
> > +			mediatek,scp = <&scp>;
> > +		};
> > -- 
> > 2.18.0
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
