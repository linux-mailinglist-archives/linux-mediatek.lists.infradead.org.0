Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3CF8D288
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 13:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuXptpWjO+TXQDi6SgOw9yRYYa36vIBOGh84GmsxQWM=; b=eXPlxqF6U4TG2K
	gGrOErhznd0G77eYp7je05zvuuglEQvL6I771V4asD5pVRyFIrzRK1C2QXI47dJEHqR/2rsci0bYS
	8fUI5aI91weniGWPEv+lNBUaWJhID74gAQ93++kPmjTlZ1dQWVLNoiDLTESYQE+/5POiLKglqEXDz
	6pGydeTw/ol/k8o7TsvX/6sdT3DJFNob7QpK6vd/QuYEjmhuilQgushUrhC3JU1eYKxk66WBTN70e
	27+YajJPu78WoE8F5ruScUncmH/cujbUVaN2JQJmg1JfvC3Z0rm5pgk/tSqJnkudIBq30Hbi4+AbR
	kn4HG33wXmFZ0dLCOzHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrpT-0000Hc-CL; Wed, 14 Aug 2019 11:52:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrpQ-0000Gl-3R
 for linux-mediatek@lists.infradead.org; Wed, 14 Aug 2019 11:52:33 +0000
X-UUID: 09b6866681494b289d5c450f73247915-20190814
X-UUID: 09b6866681494b289d5c450f73247915-20190814
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 752119233; Wed, 14 Aug 2019 03:52:26 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 04:52:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 19:52:24 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 14 Aug 2019 19:52:23 +0800
Message-ID: <1565783543.7006.8.camel@mtkswgap22>
Subject: Re: [PATCH v2 9/10] dt-bindings: pwm: update bindings for MT7628 SoC
From: Ryder Lee <ryder.lee@mediatek.com>
To: Sam Shih <sam.shih@mediatek.com>
Date: Wed, 14 Aug 2019 19:52:23 +0800
In-Reply-To: <1565779497-23621-2-git-send-email-sam.shih@mediatek.com>
References: <621e49c01b943edb6ddac9182f34719eb0727f01.1548313019.git.ryder.lee@mediatek.com>
 <1565779497-23621-2-git-send-email-sam.shih@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_045232_154164_B424B459 
X-CRM114-Status: GOOD (  14.36  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-08-14 at 18:43 +0800, Sam Shih wrote:
> From: sam shih <sam.shih@mediatek.com>
> 
> This updates bindings for MT7628 pwm controller.
> 
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> ---
>  .../devicetree/bindings/pwm/pwm-mediatek.txt       | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> index c7bd5633d1eb..9d2d893a07ff 100644
> --- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> +++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> @@ -21,6 +21,8 @@ Required properties:
>   - pinctrl-0: One property must exist for each entry in pinctrl-names.
>     See pinctrl/pinctrl-bindings.txt for details of the property values.
>   - num-pwms: the number of PWM channels.
> + - clock-frequency: fix clock frequency, this is an optional property, only use in MT7628 SoC
> +                    for period calculation. This SoC has no complex clock tree.

Optional properties:

- clock-frequency: ...

>  Example:
>  	pwm0: pwm@11006000 {
> @@ -40,3 +42,13 @@ Example:
>  		pinctrl-0 = <&pwm0_pins>;
>  		num-pwms = <5>;
>  	};

Add a blank here

> +MT7628 Example:
> +	pwm: pwm@5000 {
> +		compatible = "mediatek,mt7628-pwm";
> +		reg = <0x5000 0x1000>;
> +		#pwm-cells = <2>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwm0_pins>, <&pwm1_pins>;
> +		num-pwms = <4>;
> +		clock-frequency = <100000>;
> +	};



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
