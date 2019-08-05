Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE9181DD2
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 15:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1X3mRIpuCBQlNEm3vHST0FI+mhZJVBVKsIiqtiHyjyg=; b=fOSyKnX2jlcMiM
	rUnXJ+ga+4V83naZ9t+AU9dEHmUcg3lCScsxebqN+PQT4BA+ewp12lmps9CMX+NNTF9g6eJSu/9Eu
	ZnSkVjy5btc8tdH1EIyZC3A7iCWsiyjrSIcD6nPX2T8UV/FJyc1tRzIzgwSrOrxRUknWZWE1vN3Sb
	6g+tPJIu3Q3M81yIJp9Vdkx7VTdQibd3C1yAV+df4FKmtTb9orZSIesBLT4ysBkrjojb97hufYTiZ
	6tVyI5LqPtD3u4fHCK6MFovcl/802wmOnVaSc3hWFzAh2PUzz1ulApf3ynER1qm3/j75Kb/W41F6Y
	D87WYPeyDIUPNOUEKcmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudLZ-0004Ke-N2; Mon, 05 Aug 2019 13:48:21 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudLL-0004B5-TP; Mon, 05 Aug 2019 13:48:10 +0000
X-Originating-IP: 82.246.155.60
Received: from localhost (hy283-1-82-246-155-60.fbx.proxad.net [82.246.155.60])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id B7E7F1BF20B;
 Mon,  5 Aug 2019 13:47:55 +0000 (UTC)
Date: Mon, 5 Aug 2019 15:47:53 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v3 02/10] dt-bindings: add missing mt6397 rtc
Message-ID: <20190805134753.GF3600@piout.net>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-3-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729174154.4335-3-frank-w@public-files.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064808_108092_D9252FB8 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 29/07/2019 19:41:46+0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> add missing devicetree-binding document for mt6397 rtc
> in later patch driver is extended with mt6323 chip
> 
> changes since v2: splitted rtc-mt6397.txt from first patch

This line should be after the --- marker.
> 
> Suggested-By: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Your SoB should appear last.

> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> ---
>  .../devicetree/bindings/rtc/rtc-mt6397.txt    | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
> 
> diff --git a/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt b/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
> new file mode 100644
> index 000000000000..ebd1cf80dcc8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
> @@ -0,0 +1,29 @@
> +Device-Tree bindings for MediaTek PMIC based RTC
> +
> +MediaTek PMIC based RTC is an independent function of MediaTek PMIC that works
> +as a type of multi-function device (MFD). The RTC can be configured and set up
> +with PMIC wrapper bus which is a common resource shared with the other
> +functions found on the same PMIC.
> +
> +For MediaTek PMIC MFD bindings, see:
> +Documentation/devicetree/bindings/mfd/mt6397.txt
> +
> +For MediaTek PMIC wrapper bus bindings, see:
> +Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
> +
> +Required properties:
> +- compatible: Should be one of follows
> +       "mediatek,mt6323-rtc": for MT6323 PMIC
> +       "mediatek,mt6397-rtc": for MT6397 PMIC
> +
> +Example:
> +
> +       pmic {
> +               compatible = "mediatek,mt6323";
> +
> +               ...
> +
> +               rtc {
> +                       compatible = "mediatek,mt6323-rtc";
> +               };
> +       };
> --
> 2.17.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
