Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3D943256
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Jun 2019 05:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSbXgNPvRlwQAV+CUo/JQx5i7NBChO7n83k9GjN7QYw=; b=OIqTu2/xjv/OyM
	JLUtai+f01hE5ZbnWnansN3JLhymlJJbXCECfz85I+JX3twxktpjUkS4YhK4aO3S22rq8k0XR5JHE
	0UL/NLTtWLeVPerlhmpcTL5EsBdPihpsPFbyOgaV/A0hF1aX3J82ZtQ7XXYqwLBbgoeLZP/PMkCc3
	+NUxXCVfiYfG6p/deeJArIOoK/qi/9dh1EjZ3N7dn+tgiv/MxOMUR+YIUzrFG3VFJBP5bZVBls9E+
	mK9c0igGA8/rDhXDOxtPkgYfUBAhknPN15z1PAYVBpZacrLNDLrOFbbM2mijyznDzF7uPIWG9Cmqc
	/BGFPeGTxQTt/3GvfM+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbGSN-0008MJ-Tn; Thu, 13 Jun 2019 03:31:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbGRz-00080S-9h; Thu, 13 Jun 2019 03:30:57 +0000
X-UUID: 736bc2961ae04d49b4f250ce546aadf4-20190612
X-UUID: 736bc2961ae04d49b4f250ce546aadf4-20190612
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 199553996; Wed, 12 Jun 2019 19:30:17 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 20:30:15 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 13 Jun 2019 11:30:12 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 13 Jun 2019 11:30:11 +0800
Message-ID: <1560396611.9392.77.camel@mhfsdcap03>
Subject: Re: [PATCH 3/3] media: dt-bindings: media: i2c: Add bindings for
 ov02a10
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Date: Thu, 13 Jun 2019 11:30:11 +0800
In-Reply-To: <20190531161658.2y2amfngbhfbllj7@valkosipuli.retiisi.org.uk>
References: <20190523102204.24112-1-dongchun.zhu@mediatek.com>
 <20190523102204.24112-4-dongchun.zhu@mediatek.com>
 <20190531161658.2y2amfngbhfbllj7@valkosipuli.retiisi.org.uk>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_203055_382846_36678F3A 
X-CRM114-Status: GOOD (  18.87  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, menghui.lin@mediatek.com, tfiga@google.com,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, sj.huang@mediatek.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Sakari,

On Fri, 2019-05-31 at 19:16 +0300, Sakari Ailus wrote:
> Hi Dongchun,
> 
> Thanks for the patch.
> 
> On Thu, May 23, 2019 at 06:22:04PM +0800, dongchun.zhu@mediatek.com wrote:
> > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > 
> > Add device tree binding documentation for the OV02A10 CMOS image sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../devicetree/bindings/media/i2c/ov02a10.txt      | 43 ++++++++++++++++++++++
> >  1 file changed, 43 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > new file mode 100644
> > index 0000000..fdc2904
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > @@ -0,0 +1,43 @@
> > +* Omnivision OV02A10 MIPI CSI-2 sensor
> > +
> > +Required Properties:
> > +- compatible: shall be "ovti,ov02a10"
> > +- clocks: reference to the xvclk input clock
> > +- clock-names: shall be "xvclk"
> > +- avdd-supply: Analog voltage supply, 2.8 volts
> > +- dovdd-supply: Digital I/O voltage supply, 1.8 volts
> > +- dvdd-supply: Digital core voltage supply, 1.8 volts
> > +- reset-gpios: Low active reset gpio
> > +
> > +The device node shall contain one 'port' child node with an
> > +'endpoint' subnode for its digital output video port,
> > +in accordance with the video interface bindings defined in
> > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > +The endpoint optional property 'data-lanes' shall be "<1>".
> 
> If the sensor only supports a single lane configuration (one lane), you can
> omit that property altogether. Is that the only possible configuration for
> the sensor?
> 
> Please also wrap the text at 80 characters, not 65 or so.
> 

Thanks for kind reminder. We would double confirm the lane nums that
sensor can support.
And the issue of text length one line would also be fixed in next
release.

> > +
> > +Example:
> > +&i2c4 {
> > +	sensor_sub: sensor_sub {
> 
> camera-sensor@3d {
> 

Fixed in next release.

> > +		compatible = "ovti,ov02a10";
> > +		reg = <0x3d>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&camera_pins_cam1_mclk_on>;
> > +
> > +		clocks = <&topckgen CLK_TOP_MUX_CAMTG2>,
> > +			<&topckgen CLK_TOP_UNIVP_192M_D8>;
> > +		clock-names = "xvclk", "freq_mux";
> > +
> > +		avdd-supply = <&mt6358_vcama1_reg>;
> > +		dvdd-supply = <&mt6358_vcn18_reg>;
> > +		dovdd-supply = <&mt6358_vcamio_reg>;
> > +		pwdn-gpios = <&pio 107 1>;
> > +		reset-gpios = <&pio 109 1>;
> > +
> > +		port@0 {
> > +		   ov02a10_core: endpoint {
> > +		       remote-endpoint = <&ov02a10_0>;
> > +			   data-lanes = <1>;
> > +		   };
> 
> Tabs for indentation, please.
> 

Fixed in next release.

> > +		};
> > +	};
> > +};
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
