Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A7131219
	for <lists+linux-mediatek@lfdr.de>; Fri, 31 May 2019 18:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqgr/rws94fkDfy3GE65YQbct5uot0TCV3lgjzcblK4=; b=bB5pK+qlUPg17M
	XPYFkmT8F6zPuXbo7+fVID8E1Kwv6dOmOeGi8R4be/a9tBMwaS61efsx0Y0UuRZKqz0r2eQTwmIsK
	hRVpP1b4RDEyCCbT1MJkd7wZac05cuWcCv+CJ19CRrnFXc7Z0xryP9tWPcL3aKYg24hZSMRYAkfT4
	vJhKcDFzZFu9YiOprBhHgr7JR0qc8VnBI/rT+/FszAZcDiI+aGyhMi37wOaaTp4/k2mXkD9FlK/BK
	wdBr+y/vuE1sVRKlW/Ngb9f2vlpkowxX0X9vJK6o83FBPaWJFxO0AdhqHgKGc/NOd70q1FZOQTeF8
	MGpBKjKckf9mPjLir9Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkDU-0005qf-ID; Fri, 31 May 2019 16:17:16 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkDL-0005jQ-CM; Fri, 31 May 2019 16:17:09 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id ABA8A634C7B;
 Fri, 31 May 2019 19:16:58 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.89)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hWkDC-0000Lt-QG; Fri, 31 May 2019 19:16:58 +0300
Date: Fri, 31 May 2019 19:16:58 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: dongchun.zhu@mediatek.com
Subject: Re: [PATCH 3/3] media: dt-bindings: media: i2c: Add bindings for
 ov02a10
Message-ID: <20190531161658.2y2amfngbhfbllj7@valkosipuli.retiisi.org.uk>
References: <20190523102204.24112-1-dongchun.zhu@mediatek.com>
 <20190523102204.24112-4-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523102204.24112-4-dongchun.zhu@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_091707_631055_6AD7B60B 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, menghui.lin@mediatek.com,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, sj.huang@mediatek.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Dongchun,

Thanks for the patch.

On Thu, May 23, 2019 at 06:22:04PM +0800, dongchun.zhu@mediatek.com wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> Add device tree binding documentation for the OV02A10 CMOS image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../devicetree/bindings/media/i2c/ov02a10.txt      | 43 ++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> new file mode 100644
> index 0000000..fdc2904
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> @@ -0,0 +1,43 @@
> +* Omnivision OV02A10 MIPI CSI-2 sensor
> +
> +Required Properties:
> +- compatible: shall be "ovti,ov02a10"
> +- clocks: reference to the xvclk input clock
> +- clock-names: shall be "xvclk"
> +- avdd-supply: Analog voltage supply, 2.8 volts
> +- dovdd-supply: Digital I/O voltage supply, 1.8 volts
> +- dvdd-supply: Digital core voltage supply, 1.8 volts
> +- reset-gpios: Low active reset gpio
> +
> +The device node shall contain one 'port' child node with an
> +'endpoint' subnode for its digital output video port,
> +in accordance with the video interface bindings defined in
> +Documentation/devicetree/bindings/media/video-interfaces.txt.
> +The endpoint optional property 'data-lanes' shall be "<1>".

If the sensor only supports a single lane configuration (one lane), you can
omit that property altogether. Is that the only possible configuration for
the sensor?

Please also wrap the text at 80 characters, not 65 or so.

> +
> +Example:
> +&i2c4 {
> +	sensor_sub: sensor_sub {

camera-sensor@3d {

> +		compatible = "ovti,ov02a10";
> +		reg = <0x3d>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&camera_pins_cam1_mclk_on>;
> +
> +		clocks = <&topckgen CLK_TOP_MUX_CAMTG2>,
> +			<&topckgen CLK_TOP_UNIVP_192M_D8>;
> +		clock-names = "xvclk", "freq_mux";
> +
> +		avdd-supply = <&mt6358_vcama1_reg>;
> +		dvdd-supply = <&mt6358_vcn18_reg>;
> +		dovdd-supply = <&mt6358_vcamio_reg>;
> +		pwdn-gpios = <&pio 107 1>;
> +		reset-gpios = <&pio 109 1>;
> +
> +		port@0 {
> +		   ov02a10_core: endpoint {
> +		       remote-endpoint = <&ov02a10_0>;
> +			   data-lanes = <1>;
> +		   };

Tabs for indentation, please.

> +		};
> +	};
> +};

-- 
Kind regards,

Sakari Ailus

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
