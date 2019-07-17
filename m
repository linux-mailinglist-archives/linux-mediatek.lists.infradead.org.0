Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9B56B4FB
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jul 2019 05:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjkYhgMuWV3BXFjWzr4XeHcULR3zn3MtsGa3I5r5YDw=; b=SWkEWygwDkQt7T
	XaQhgrOyPkhwVY8Xwiy/Sk7arwjoPWPvJexL3U1G8nYZq2xQ5RTO3BkTiS/nnMRPTQlWTzp2prUZs
	CiLkpwgZH3/9vy1V3h8kZAv91YQEddHcaWbSl6hyEJfTlVQMWsyz2AbMGfS7fLaq6SvyBkBQhU7IH
	YXZ/DwUmt9l3DNBVORtlxay2MtWp6Ltm7/KYoEGiEIq8/549kindC1c58bGnTWjoBda1Lv07ATSo9
	xwPX+U6kTA9+7YaIkTOUFSyf54sGeezuQSe1wWwJcmokouFs8XXs1dm456MejwDrNWbwPYMJzIvM0
	fgP+zhidvKryakUJwiGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnaXo-0008HF-UX; Wed, 17 Jul 2019 03:23:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnaXS-00086N-Fu; Wed, 17 Jul 2019 03:23:32 +0000
X-UUID: b99e4391db044176a124b1479b271865-20190716
X-UUID: b99e4391db044176a124b1479b271865-20190716
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 562888130; Tue, 16 Jul 2019 19:23:03 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 16 Jul 2019 20:23:02 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 11:22:59 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 11:22:58 +0800
Message-ID: <1563333778.29169.5.camel@mtksdaap41>
Subject: Re: [PATCH v4, 01/33] dt-bindings: mediatek: add binding for mt8183
 display
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 17 Jul 2019 11:22:58 +0800
In-Reply-To: <1562625253-29254-2-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-2-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B08C90B4972A6A74DF94ECDCEBA3A927F8F9ECC3D464E9044F2A116F6D54F9162000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_202330_534888_CF97DE2E 
X-CRM114-Status: GOOD (  16.01  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Tue, 2019-07-09 at 06:33 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Update device tree binding documention for the display subsystem for
> Mediatek MT8183 SOCs
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,display.txt  | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt
> new file mode 100644
> index 0000000..951d2a8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt
> @@ -0,0 +1,21 @@
> +Mediatek Display Device
> +============================
> +
> +The Mediatek Display Device provides power control to the system.
> +
> +Required Properties:
> +
> +- compatible: Should be one of:
> +	- "mediatek,mt8183-display"

I think this is "mediatek,mt8183-mmsys". In [1], Matthias has agreed
that we could keep work on his patch, so you should apply his patch and
remove this patch. In [2], I've found that MT8183 scpsys has some
problem with Matthias' patch, so please also fix this problem.

[1] https://patchwork.kernel.org/patch/10686327/
[2] https://patchwork.kernel.org/patch/11005731/

Regards,
CK

> +
> +The Display Device power name are defined in
> +include\dt-bindings\power\mt*-power.h
> +
> +
> +Example:
> +
> +display_components: dispsys@14000000 {
> +	compatible = "mediatek,mt8183-display";
> +	reg = <0 0x14000000 0 0x1000>;
> +	power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> +};
> \ No newline at end of file



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
