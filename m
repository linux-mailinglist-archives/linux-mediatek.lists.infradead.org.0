Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEB84652E
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 18:56:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6ADW62M/D7fE0Kc9um4CQwod9cLtUDFDth5hnadD7o=; b=c31O7a2ebJ4AHC
	2INSkGbkyqqxxyXUymF+jcp6lwOAEBVkOQiQNzZ0uInFWEpkpwvV8DpcbE3/AmMTXZPtKYOyyKOmX
	jZ7fy4RtcRcf0xi5JBn2f5aqVaRzBpNZr6oOj0ESzLWI8AhRe8468gUXDxVyt4mdp4Kk2dmr1trBq
	+nUdSp7qNJuKoBFJ3t7VXRPoGZtz3neyCgs2ypXafisUohkKjX+plopzPz1LkQYfY17fw2cTWsabv
	zlZVtWty6lX0bHJW+ebujBoZ0QQbl7TM5gvvBXmMCzH9h4MV5a5EYB019olJZOLqk5kVXjgSA0yJj
	Q9k/Wu4/nl5oRr3rqSHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpVN-0003Lw-0A; Fri, 14 Jun 2019 16:56:45 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpUl-0002iy-4r; Fri, 14 Jun 2019 16:56:10 +0000
Received: by mail-qt1-f194.google.com with SMTP id j19so3213313qtr.12;
 Fri, 14 Jun 2019 09:56:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BW1xnYGWg+aoTF/Yaq1jahB+G0s53KZIsKdfCRLCS5M=;
 b=diYd6e1v0+JA5jhAq/fkJbvafkectZCPWz99rQq+zv6JH3y3ULe5Fh6Dh7loVk5AKu
 PuAdGtcwF6OKGoCI+gEAEM4OBlfCpAWXsPJQ5OIJd7Hn4klSRGLWOpoWmEBqSD82gZes
 PMPlVJMwkHQ4WgV+4qj4oZCLMLB/5ziqSOD8t3b/mAmQry7Z4qGoFTZDTfsycSbVpRNK
 Z1MSVVWbv8ogoRfeKvzgBrgrKurlmeufvZ0155fU7eJR5J+hGN7JJuGyUhvZz2Uwmy8r
 A51dov1B1lj3f82zt1tHJ7kTlAqibDzOTkM0q8CIOf0H/g2bwra9XfKdnk92pPmQ01S/
 GwHQ==
X-Gm-Message-State: APjAAAWcSMNaB9f7OB0Y4sbu4WaFFyRRsZtxh+JQswZi+4l/46mMugHb
 UX6b1E902EeKGk5coPJrKw==
X-Google-Smtp-Source: APXvYqwKw7gEikdDCeeVBg/sr7wzmaN+sPvOXjG11rUJ9NjiqHre30+rVmiZbgs/Z8FdHdOZJiRV0g==
X-Received: by 2002:ac8:70d1:: with SMTP id g17mr37959971qtp.124.1560531365401; 
 Fri, 14 Jun 2019 09:56:05 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id e63sm1697857qkd.57.2019.06.14.09.56.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:56:04 -0700 (PDT)
Date: Fri, 14 Jun 2019 10:56:03 -0600
From: Rob Herring <robh@kernel.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH 3/3] media: dt-bindings: media: i2c: Add bindings for
 ov02a10
Message-ID: <20190614165603.GA30462@bogus>
References: <20190523102204.24112-1-dongchun.zhu@mediatek.com>
 <20190523102204.24112-4-dongchun.zhu@mediatek.com>
 <20190531161658.2y2amfngbhfbllj7@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531161658.2y2amfngbhfbllj7@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_095607_191788_BFB6810C 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 srv_heupstream@mediatek.com, menghui.lin@mediatek.com,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 07:16:58PM +0300, Sakari Ailus wrote:
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
> > +
> > +Example:
> > +&i2c4 {
> > +	sensor_sub: sensor_sub {
> 
> camera-sensor@3d {
> 
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

Also, drop the unit-address as there is no 'reg' property. Building your 
dts file will 'W=1' will tell you this.

> > +		   ov02a10_core: endpoint {
> > +		       remote-endpoint = <&ov02a10_0>;
> > +			   data-lanes = <1>;
> > +		   };
> 
> Tabs for indentation, please.
> 
> > +		};
> > +	};
> > +};
> 
> -- 
> Kind regards,
> 
> Sakari Ailus

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
