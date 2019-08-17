Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C61490C95
	for <lists+linux-mediatek@lfdr.de>; Sat, 17 Aug 2019 05:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6szcQ1pkOOkSUGepF6KS/i8mQfXaaw6LYAZuKqGhYc=; b=MR49wZI512aWf/
	hel6WlLJDxVBQlLbHddsSffvx59/oIR9EtvbJ2iJxW8D8eumFWrT8+UvzqFpsLb70FKwkPs95Hyx1
	zBFymyQ9FuMgon0ZvPa5acUrOfEHEGWio7nlnDjjNVzbK6YD77tXBHfx/dr81seaSWPbzNBmfWEXY
	r8o2nn6yvWVpOsvLJXL2LuQQB1d6Idi/SMT0sVxRKh6F/Khy0hBzSWCdrQvEiX0yLbD7ImmkTghIG
	wgROQH0uFPqs4Km9jMYW619uwwofIDcoC+itG4QxM5RZzFhEaghFYGeERvOnD1hVwY6dP3PO87xyN
	KF0DrM/JTl3SPayutE4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hypn9-00017X-Tp; Sat, 17 Aug 2019 03:54:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hypmv-0000xe-Mh; Sat, 17 Aug 2019 03:53:59 +0000
X-UUID: de9772cb176143c3979fea3652317224-20190816
X-UUID: de9772cb176143c3979fea3652317224-20190816
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 556722222; Fri, 16 Aug 2019 19:53:54 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 16 Aug 2019 20:53:31 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 17 Aug 2019 11:53:08 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 17 Aug 2019 11:53:07 +0800
Message-ID: <1566013985.21623.9.camel@mhfsdcap03>
Subject: Re: [RFC,V2,1/2] media: dt-bindings: media: i2c: Add bindings for
 OV02A10
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <sakari.ailus@iki.fi>
Date: Sat, 17 Aug 2019 11:53:05 +0800
In-Reply-To: <ef65288c523f405396991bd6d757bba0@mtkmbs02n1.mediatek.inc>
References: <20190704084651.3105-1-dongchun.zhu@mediatek.com>
 <20190704084651.3105-2-dongchun.zhu@mediatek.com>
 <20190723074153.GA4606@paasikivi.fi.intel.com>
 <ef65288c523f405396991bd6d757bba0@mtkmbs02n1.mediatek.inc>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4774094677F93A251C0A435CD09B88B2EBA9C5713E4CDF9174222B5ED8EA93A72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_205357_747963_3C4782E3 
X-CRM114-Status: GOOD (  16.44  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
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

On Tue, 2019-07-23 at 10:41 +0300, Sakari Ailus wrote:
> 
> Hi Dongchun,
> 
> On Thu, Jul 04, 2019 at 04:46:50PM +0800, dongchun.zhu@mediatek.com wrote:
> > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> >
> > Add device tree binding documentation for the OV02A10 camera sensor.
> >
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../devicetree/bindings/media/i2c/ov02a10.txt      | 43 ++++++++++++++++++++++
> >  MAINTAINERS                                        |  7 ++++
> >  2 files changed, 50 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > new file mode 100644
> > index 0000000..d40aa87
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
> > +'endpoint' subnode for its digital output video port, in accordance
> > +with the video interface bindings defined in
> > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > +The endpoint optional property 'data-lanes' shall be "<1>".
> 
> How many lanes does the module (or the sensor) have?
> 

From sensor datasheet, OV02A10 supports 1-lane MIPI interface.

> > +
> > +Example:
> > +&i2c4 {
> > +ov02a10: camera-sensor@3d {
> > +compatible = "ovti,ov02a10";
> > +reg = <0x3d>;
> > +pinctrl-names = "default";
> > +pinctrl-0 = <&camera_pins_cam1_mclk_on>;
> > +
> > +clocks = <&topckgen CLK_TOP_MUX_CAMTG2>,
> > +<&topckgen CLK_TOP_UNIVP_192M_D8>;
> > +clock-names = "xvclk", "freq_mux";
> > +
> > +avdd-supply = <&mt6358_vcama1_reg>;
> > +dvdd-supply = <&mt6358_vcn18_reg>;
> > +dovdd-supply = <&mt6358_vcamio_reg>;
> > +pwdn-gpios = <&pio 107 1>;
> > +reset-gpios = <&pio 109 1>;
> > +
> > +port {
> > +   ov02a10_core: endpoint {
> > +       remote-endpoint = <&ov02a10_0>;
> 
> Indentation is still wrong. :-(
> 

Fixed in next release.

> > +   data-lanes = <1>;
> > +};
> > +};
> > +};
> > +};
> > diff --git a/MAINTAINERS b/MAINTAINERS index 5cfbea4..62b81ff 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -11571,6 +11571,13 @@ T:git git://linuxtv.org/media_tree.git
> >  S:Maintained
> >  F:drivers/media/i2c/ov13858.c
> >
> > +OMNIVISION OV02A10 SENSOR DRIVER
> > +M:Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +L:linux-media@vger.kernel.org
> > +T:git git://linuxtv.org/media_tree.git
> > +S:Maintained
> > +F:Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > +
> >  OMNIVISION OV2680 SENSOR DRIVER
> >  M:Rui Miguel Silva <rmfrfs@gmail.com>
> >  L:linux-media@vger.kernel.org
> 
> --
> Kind regards,
> 
> Sakari Ailus
> sakari.ailus@linux.intel.com
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
> *********************MEDIATEK Confidential/Internal Use*********************



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
