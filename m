Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2FAB1313
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 18:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdVBm1q+0Z2u4SIa8Gx1/iLJWqqwAkAWO+d6eFoyC1w=; b=QoCzJvGTMnsdNY
	npC2RE4pdtw/sChSyEab54/XrjHoZ8eOLz/3UXhC8iHaX9uziHWQyUCNMZchAP7s0zDicosPtXwm2
	1Fe5D1EmpECs7mzR8hbrLvGQ1yHXO8SKW7vfg+r/AhmcqrdgDbYXqZXrtyWlCTEUmJvcn/3htWrGb
	eetyXXO6960zJk4mYyo+ngsA8SaUgas8wHcQWIXQ18q4naneRzm25jkiQUVVY1BM4oTxdChcs5HfM
	GnB4q+B1cW5PIGsAEw2uZfZw+rhfv/KiNPqDedvWW8xQ1A+s1S0Fc9mtSIouNl8uDaxRXMgC35pEo
	q+euy4LQ3dwOM60fFndg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8SKV-0001CF-To; Thu, 12 Sep 2019 16:52:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8SKT-0001Bw-L8
 for linux-mediatek@lists.infradead.org; Thu, 12 Sep 2019 16:52:22 +0000
X-UUID: b89840facee04553b01bbcadb191e8c9-20190912
X-UUID: b89840facee04553b01bbcadb191e8c9-20190912
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2122573507; Thu, 12 Sep 2019 08:52:20 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 09:52:17 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Sep 2019 00:52:16 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 13 Sep 2019 00:52:16 +0800
Message-ID: <1568307137.22948.5.camel@mtksdaap41>
Subject: Re: [PATCH 1/2] ASoC: dt-bingdings: mediatek: mt8183: add a
 property "medaitek, toprgu"
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Date: Fri, 13 Sep 2019 00:52:17 +0800
In-Reply-To: <1568282096-13821-2-git-send-email-jiaxin.yu@mediatek.com>
References: <1568282096-13821-1-git-send-email-jiaxin.yu@mediatek.com>
 <1568282096-13821-2-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_095221_712329_A61700E1 
X-CRM114-Status: GOOD (  12.41  )
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com, robh+dt@kernel.org,
 perex@perex.cz, tzungbi@google.com, broonie@kernel.org,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-09-12 at 17:54 +0800, Jiaxin Yu wrote:
> This patch adds a property "mediatek,toprgu" in example so that we could
> use reset controller(usually we call it toprgu or watchdog) to reset audio
> domain regs.
> 
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt b/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt
> index 396ba38619f6..45ca182a4ecc 100644
> --- a/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt
> +++ b/Documentation/devicetree/bindings/sound/mt8183-afe-pcm.txt
> @@ -4,6 +4,7 @@ Required properties:
>  - compatible = "mediatek,mt68183-audio";
>  - reg: register location and size
>  - interrupts: should contain AFE interrupt
> +- mediatek,toprgu: A phandle to the TOPRGU which for reset controller unit
>  - power-domains: should define the power domain
>  - clocks: Must contain an entry for each entry in clock-names
>  - clock-names: should have these clock names:
> @@ -20,6 +21,7 @@ Example:
>  		compatible = "mediatek,mt8183-audio";
>  		reg = <0 0x11220000 0 0x1000>;
>  		interrupts = <GIC_SPI 161 IRQ_TYPE_LEVEL_LOW>;
> +		mediatek,toprgu = <&watchdog>;

As mentioned in the other patch, since this is reset controller,
you should use Documentation/devicetree/bindings/reset/reset.txt
instead.

Joe.C



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
