Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 339BFA7832
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Sep 2019 03:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SoKn1sw1nUG9j3G/Dx6oqWivr+5l1QzDVQ5bBwmyJo=; b=MAN3/zt0sBFcd4
	mCgX7g7kOdW59ojE1KEYn0oX72AqnwLUJNv8UODns4ybPAlyoIBVeSPcze7dy0A3ob/D7toQ4oc9c
	x+E2xzq+jQTGxIR0dhQMwdcLIgzRBXU8Lb+ebXLi83ANqdbb4NTfbDK3RMg9dbKTrlZOk7MoGwBEw
	Pt4emob5+Zetoj96v0Q+vrp5tMGRfgSEjXqtRDB1M+sMNbKaWNnTPuPXsvUnlf2EnfxusA2hExQKv
	vabIggRuvSH2lthj7wmD+IsDSaATGyUDJKdLVpz0e+MFmuf6lyKLYwCoOHPSnx2FwL9tRKdOmu0gN
	68Lp5whyVvgM9yROPUXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5KN3-0007np-B1; Wed, 04 Sep 2019 01:46:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5KM5-0006Se-50; Wed, 04 Sep 2019 01:45:07 +0000
X-UUID: ec154645c9134dd9a31cc7a61c59985d-20190903
X-UUID: ec154645c9134dd9a31cc7a61c59985d-20190903
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1079254216; Tue, 03 Sep 2019 17:45:03 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 18:45:02 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 09:44:59 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Sep 2019 09:44:59 +0800
Message-ID: <1567561500.6949.2.camel@mtksdaap41>
Subject: Re: [PATCH v5, 04/32] dt-bindings: mediatek: add dither description
 for mt8183 display
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 4 Sep 2019 09:45:00 +0800
In-Reply-To: <1567090254-15566-5-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-5-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8B98B277B5E3A6E32C1A165EF9AB839D4AC8A19E96BD6DAAB17592F58A0729AF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_184505_747962_240B2838 
X-CRM114-Status: GOOD (  12.75  )
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

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Update device tree binding documention for the display subsystem for
> Mediatek MT8183 SOCs

Applied to mediatek-drm-next-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> Reviewed-by: Rob Herring <robh at kernel.org>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> index cf5fb08..afd3c90 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> @@ -33,6 +33,7 @@ Required properties (all function blocks):
>  	"mediatek,<chip>-disp-wdma"  		- write DMA
>  	"mediatek,<chip>-disp-ccorr"            - color correction
>  	"mediatek,<chip>-disp-color" 		- color processor
> +	"mediatek,<chip>-disp-dither"           - dither
>  	"mediatek,<chip>-disp-aal"   		- adaptive ambient light controller
>  	"mediatek,<chip>-disp-gamma" 		- gamma correction
>  	"mediatek,<chip>-disp-merge" 		- merge streams from two RDMA sources



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
