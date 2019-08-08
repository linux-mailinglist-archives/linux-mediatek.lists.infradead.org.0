Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 548EE86789
	for <lists+linux-mediatek@lfdr.de>; Thu,  8 Aug 2019 18:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAkbp+S+WISfCi9KsyfGb3eB16EDzWQrGxad6X4dpu0=; b=Nb3XAuzfxUKHCa
	ra5AlbfWtLXXFVTkvMpkig9ZD7PS/nTaJU3CbPNHAleGsT7jjg6rxUApkdbD070JDduDDx4RMoNnz
	k70DglOGnYK+M9IROyswVaLttDNwdZW/8KnGs96R1IUn9MQ3WdxpXJePCvMJVVw1SpbZqyvskBH14
	QbskyZY9k/n7uv5CG0CPtl32g3MFhVw2tBPB0pG9eWJDsX3b8A3489dSP/rH87p79wPYqNdWLqChu
	yoXXl6ozn2Gf7laDNNvupKhyKLUeGYezpd4tJOukxIGV0HlpXa0Yn7F4Zs4gc2bTOI/2QDOLjrwTt
	yk3v5+NLTwlo3xOzoSZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlj5-0006wq-CI; Thu, 08 Aug 2019 16:57:19 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlit-0006nZ-Al; Thu, 08 Aug 2019 16:57:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 09:57:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="179895442"
Received: from okartau-mobl.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.252.35.161])
 by orsmga006.jf.intel.com with ESMTP; 08 Aug 2019 09:57:00 -0700
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id 0E0F721F8E; Thu,  8 Aug 2019 19:54:16 +0300 (EEST)
Date: Thu, 8 Aug 2019 19:54:16 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: dongchun.zhu@mediatek.com
Subject: Re: [V1, 1/2] media: dt-bindings: media: i2c: Add bindings for ov8856
Message-ID: <20190808165416.GA1845@kekkonen.localdomain>
References: <20190808092215.5608-1-dongchun.zhu@mediatek.com>
 <20190808092215.5608-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808092215.5608-2-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_095707_388076_200C6334 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 Ben Kao <ben.kao@intel.com>, tfiga@chromium.org, louis.kuo@mediatek.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Dongchun,

(Cc'ing Ben, too.)

On Thu, Aug 08, 2019 at 05:22:14PM +0800, dongchun.zhu@mediatek.com wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> Add device tree binding documentation for the ov8856 camera sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../devicetree/bindings/media/i2c/ov8856.txt       | 41 ++++++++++++++++++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.txt b/Documentation/devicetree/bindings/media/i2c/ov8856.txt
> new file mode 100644
> index 0000000..96b10e0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.txt
> @@ -0,0 +1,41 @@
> +* Omnivision OV8856 MIPI CSI-2 sensor
> +
> +Required Properties:
> +- compatible: shall be "ovti,ov8856"
> +- clocks: reference to the xvclk input clock
> +- clock-names: shall be "xvclk"

Could you add "clock-frequency" property here, please, and specify the
upper and lower limits?

> +- avdd-supply: Analog voltage supply, 2.8 volts
> +- dovdd-supply: Digital I/O voltage supply, 1.8 volts
> +- dvdd-supply: Digital core voltage supply, 1.2 volts
> +- reset-gpios: Low active reset gpio
> +
> +The device node shall contain one 'port' child node with an
> +'endpoint' subnode for its digital output video port,
> +in accordance with the video interface bindings defined in
> +Documentation/devicetree/bindings/media/video-interfaces.txt.
> +The endpoint optional property 'data-lanes' shall be "<0 1 3 4>".

If you don't support lane reordering, then monotonically incrementing lane
numbers from 1 onwards are recommended.

Please also make the property mandatory.

> +
> +Example:
> +&i2c7 {
> +	ov8856: camera-sensor@10 {
> +		compatible = "ovti,ov8856";
> +		reg = <0x10>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&clk_24m_cam>;
> +
> +		clocks = <&cru SCLK_TESTCLKOUT1>;
> +		clock-names = "xvclk";
> +
> +		avdd-supply = <&mt6358_vcama2_reg>;
> +		dvdd-supply = <&mt6358_vcamd_reg>;
> +		dovdd-supply = <&mt6358_vcamio_reg>;
> +		reset-gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
> +
> +		port {
> +			wcam_out: endpoint {
> +				remote-endpoint = <&mipi_in_wcam>;
> +				data-lanes = <0 1 3 4>;
> +			};
> +		};
> +	};
> +};
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 783569e..7746c6b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11889,6 +11889,7 @@ L:	linux-media@vger.kernel.org
>  T:	git git://linuxtv.org/media_tree.git
>  S:	Maintained
>  F:	drivers/media/i2c/ov8856.c
> +F:	Documentation/devicetree/bindings/media/i2c/ov8856.txt
>  
>  OMNIVISION OV9650 SENSOR DRIVER
>  M:	Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
