Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7023019F8BB
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 Apr 2020 17:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRuK+cR1N3ZmKEorgjE+uORdIktSbpYpdC7XOpizrtk=; b=DtLiELmhU27nPG
	x0r+V3/HqccoV/kRiTk0GkTR/TZaMnDWWAJJiRdBL6G7qR4l3ia73ItjvsXh86r5lzMK98JtNrNal
	hSxCnf+dIKGcPzMu7GfWZ1Oy8fdU9Aadiy5FQ1vre753GXrGjccz7c+40llw+Wbk4MVtJvgTInA1X
	1W7YKeFvUevpoDMkKqTSfEhGD48/HduSsrN6x5C0xgGzRuj6TP8MTrhqMuffjwOXv2LKE2onyk0zU
	kGe//6zJrvOI9LuUEngHTOiwy135NLFf6Cw34pegQO2j/ahBThrycVc2fW9G7HtFLAmFYffFYsN52
	ha11RufRtAr7IfbUfh6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLTYu-0000ll-09; Mon, 06 Apr 2020 15:21:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLTYq-0000l0-22
 for linux-mediatek@lists.infradead.org; Mon, 06 Apr 2020 15:21:17 +0000
X-UUID: b97dc3466141441983ed56f9f4b79353-20200406
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=3OlaYNErFyD2hbxvIYzxZi/mkt9Qf+6ntyxJBhEC7Wc=; 
 b=NVeeb3/RBYm4h9h/6QZFyBRj3c+pxRXrDL0IrWgZx2RXO4hHj33pwaQ6+cQv1ZbtNQ2e3b8sdDIQ9W+z5Xy4aHKCNsMdoV+NvstDFcIx8qOCjVwVfBvuofIeHBQiXZukKFlpBAUUrq3czCDxhfNy7WAVXa7F2/TU1xnh0QrRehA=;
X-UUID: b97dc3466141441983ed56f9f4b79353-20200406
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 251148896; Mon, 06 Apr 2020 07:21:09 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 08:20:59 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 23:20:58 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 6 Apr 2020 23:20:58 +0800
Message-ID: <1586186461.9762.3.camel@mtksdaap41>
Subject: Re: [PATCH v3 1/2] add dt-binding document for MediaTek Keypad
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Fengping yu <fengping.yu@mediatek.com>
Date: Mon, 6 Apr 2020 23:21:01 +0800
In-Reply-To: <20200405020114.14787-2-fengping.yu@mediatek.com>
References: <20200405020114.14787-1-fengping.yu@mediatek.com>
 <20200405020114.14787-2-fengping.yu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_082116_111370_B522557C 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Fengping,

I think this is V4, you sent v3 in
http://lists.infradead.org/pipermail/linux-mediatek/2020-January/026390.html



On Sun, 2020-04-05 at 10:01 +0800, Fengping yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>

This is a regression, please restore commit message (including first
line).

Many of my comments in previous version are not addressed.
Please either change according to comment, or discuss why you think you
shouldn't.

Joe.C



> 
> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> ---
>  .../devicetree/bindings/input/mtk-kpd.txt     | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
> 
> diff --git a/Documentation/devicetree/bindings/input/mtk-kpd.txt b/Documentation/devicetree/bindings/input/mtk-kpd.txt
> new file mode 100644
> index 000000000000..8b154a5e2f7d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/mtk-kpd.txt
> @@ -0,0 +1,61 @@
> +* Mediatek's Keypad Controller device tree binding
> +
> +Mediatek's Keypad controller is used to interface a SoC with a matrix-type
> +keypad device. The keypad controller supports multiple row and column lines.
> +A key can be placed at each intersection of a unique row and a unique column.
> +The keypad controller can sense a key-press and key-release and report the
> +event using a interrupt to the cpu.
> +
> +Required properties:
> +- compatible should contain:
> +	* "mediatek,kp" for common keypad
> +	* "mediatek,mt6779-keypad" for specific keypad chip
> +
> +- reg: The base address of the Keypad register bank.
> +
> +- interrupts: A single interrupt specifier.
> +
> +- mediatek,debounce-us: Debounce interval in microseconds, maximum value
> +  is 256000 microseconds.
> +
> +- keypad,num-rows: Number of row lines connected to the keypad controller, it is
> +	not equal to PCB rows number, instead you should add required value for each IC.
> +
> +- keypad,num-columns: Number of column lines connected to the keypad controller,
> +	it is not equal to PCB columns number, instead you should add required value
> +	for each IC.
> +
> +- linux,keymap: The keymap for keys as described in the binding document
> +  devicetree/bindings/input/matrix-keymap.txt.
> +
> +- pinctrl: Should specify pin control groups used for this controller.
> +  See ../pinctrl/pinctrl-bindings.txt for details.
> +
> +- clocks: Must contain one entry, for the module clock.
> +  See ../clocks/clock-bindings.txt for details.
> +
> +- clock-names: Names of the clocks listed in clocks property in the same order.
> +
> +Optional Properties:
> +- wakeup-source: use any event on keypad as wakeup event.
> +
> +Example:
> +
> +	keypad: kp@10010000 {
> +		compatible = "mediatek,kp";
> +		reg = <0 0x10010000 0 0x1000>;
> +		wakeup-source;
> +		interrupts = <GIC_SPI 75 IRQ_TYPE_EDGE_FALLING>;
> +		clocks = <&clk26m>;
> +		clock-names = "kpd";
> +	};
> +
> +	&keypad {
> +		mediatek,debounce-us = <32000>;
> +		keypad,num-rows = <8>;
> +		keypad,num-columns = <9>;
> +		linux,keymap = < MATRIX_KEY(0x00, 0x00, KEY_VOLUMEDOWN) >;
> +		status = "okay";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&kpd_gpios_def_cfg>;
> +	};

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
