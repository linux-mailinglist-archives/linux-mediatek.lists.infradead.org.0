Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59018D27E
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 13:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/tdGKUsumNUMHWznSb3dAxAfUH+UZFkzTd7zLW/pGY=; b=gP3zAOQRzEjLDO
	JYlqZuIc29OVf3BH9wjDttzm5J0XBB5VwA7Hw594bap/f7Lw7FO0ua6fjTIv1SNY06SkHuO0Kh37e
	bX+0bNjaAJQJ3EHLCAwuqrbs9StPXzBGCdOSDDleLtexGdaV13042HdVmwL8Js5BggfE90z4f0Lup
	D8/swCxqNX+iumv7rggtl13vUiVIQwustKPGIzei7u4Vs9zfYnIqSG37Lf87d4yDnGGnYtHSX66e/
	4kRbidXjfhOM4naJLZ5QjYbth7/3aAMlPaSxIe4EySyturGFpVZNEQhexZePqQeet4z2hg/BetPrz
	yraMlQacEhK9Lpx8Kiuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrkx-0007Lr-LT; Wed, 14 Aug 2019 11:47:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrkt-0007L6-6g
 for linux-mediatek@lists.infradead.org; Wed, 14 Aug 2019 11:47:52 +0000
X-UUID: 02d1b17b00f4437e91d8d289d5b8e991-20190814
X-UUID: 02d1b17b00f4437e91d8d289d5b8e991-20190814
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1904283551; Wed, 14 Aug 2019 03:47:46 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 04:47:45 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 19:47:44 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 14 Aug 2019 19:47:44 +0800
Message-ID: <1565783263.7006.3.camel@mtkswgap22>
Subject: Re: [PATCH v2 10/10] arm: dts: mediatek: add mt7629 pwm support
From: Ryder Lee <ryder.lee@mediatek.com>
To: Sam Shih <sam.shih@mediatek.com>
Date: Wed, 14 Aug 2019 19:47:43 +0800
In-Reply-To: <1565779497-23621-3-git-send-email-sam.shih@mediatek.com>
References: <621e49c01b943edb6ddac9182f34719eb0727f01.1548313019.git.ryder.lee@mediatek.com>
 <1565779497-23621-3-git-send-email-sam.shih@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_044751_248874_3276D668 
X-CRM114-Status: GOOD (  14.15  )
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
> This adds pwm support for MT7629.
> 
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> ---
>  arch/arm/boot/dts/mt7629.dtsi | 14 ++++++++++++++
>  drivers/pwm/pwm-mediatek.c    |  7 +++++++
>  2 files changed, 21 insertions(+)

Split dts and driver into different patches.
 
> diff --git a/arch/arm/boot/dts/mt7629.dtsi b/arch/arm/boot/dts/mt7629.dtsi
> index 9608bc2ccb3f..352df8d61788 100644
> --- a/arch/arm/boot/dts/mt7629.dtsi
> +++ b/arch/arm/boot/dts/mt7629.dtsi
> @@ -241,6 +241,18 @@
>  			status = "disabled";
>  		};
>  
> +		pwm: pwm@11006000 {
> +			compatible = "mediatek,mt7629-pwm";
> +			reg = <0 0x11006000 0 0x1000>;
> +			interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&topckgen CLK_TOP_PWM_SEL>,
> +				 <&pericfg CLK_PERI_PWM_PD>,
> +				 <&pericfg CLK_PERI_PWM1_PD>;
> +			clock-names = "top", "main", "pwm1";
> +			num-pwms = <1>;
> +			status = "disabled";
> +		};
> +
>  		i2c: i2c@11007000 {
>  			compatible = "mediatek,mt7629-i2c",
>  				     "mediatek,mt2712-i2c";
> diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
> index 922a7543a2b1..d2352ca7792e 100644
> --- a/drivers/pwm/pwm-mediatek.c
> +++ b/drivers/pwm/pwm-mediatek.c
> @@ -327,11 +327,18 @@ static const struct pwm_mediatek_of_data mt7628_pwm_data = {
>  	.has_clks = false,
>  };
>  
> +static const struct pwm_mediatek_of_data mt7629_pwm_data = {
> +	.fallback_npwms = 1,
> +	.pwm45_fixup = false,
> +	.has_clks = true,
> +};
> +
>  static const struct of_device_id pwm_mediatek_of_match[] = {
>  	{ .compatible = "mediatek,mt2712-pwm", .data = &mt2712_pwm_data },
>  	{ .compatible = "mediatek,mt7622-pwm", .data = &mt7622_pwm_data },
>  	{ .compatible = "mediatek,mt7623-pwm", .data = &mt7623_pwm_data },
>  	{ .compatible = "mediatek,mt7628-pwm", .data = &mt7628_pwm_data },
> +	{ .compatible = "mediatek,mt7629-pwm", .data = &mt7629_pwm_data },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, pwm_mediatek_of_match);

It's odd. You fallback to use mt7622 compatible here: 
[PATCH v2 7/10] dt-bindings: pwm: update bindings for MT7629 SoC.


Ryder


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
