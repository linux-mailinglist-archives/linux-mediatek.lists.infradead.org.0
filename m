Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D2E11C510
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Dec 2019 05:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZL7Kyn9jKXS9Zs+f2CVpSY4sxh95QfQY8yDNP8okk4Y=; b=GWLWvnRbVLjEo1
	HquXewDb90TYwT542Z7bzr1dWHOo/YDwKBTSzz9wDqdae3v1bzwnsYtVJNTf5inMwF+nocdVXvaZk
	KeDOnALLo1+98hYGxa4PBw7+zsFZ+8pJUJnnpsi7rZ/QctYx2rNtrg+oTRGD7uNAIAx25pR3/cbwL
	GNDTw19kokvz/npDCqhvYBErQZZ3+gbwY27xbzaK8CrckY3tRvlJ+0Ccwx4qP9dcHBobdOnmki11G
	NQocls5x1pz+CnJxaQiA0HZcio0KC5yzwN2ce8K2e9X4W0U/Nm/e6IgLPRWnmooek82N5tHrqXkP4
	zdrsDklUJdG/9JRiISiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifGVX-0006W9-FK; Thu, 12 Dec 2019 04:55:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifGVF-0005hq-Fq; Thu, 12 Dec 2019 04:55:07 +0000
X-UUID: 0b697cb6484a41009d871eb5f31b1d8f-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=UCWp1N8gZKoS15JnTttPmlV5vpeES4YM/X1M4WTmQ4I=; 
 b=dSp84jht4+RIY6YFbcAXEPj3fmwXw/DmsQWtq8OG3w/u5JPEONyx03D6Nm3fHNBBNRl/OnjpOxodcRfyDZsPh1qg/I3nBUImOj4gp12T6BW/n1KqvKWcDt9fa+IxLAzVoYjLEcmh5Ci8sEKR1O0BY/UyEsGVxzmpcnHTuyBEAQU=;
X-UUID: 0b697cb6484a41009d871eb5f31b1d8f-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 555389568; Wed, 11 Dec 2019 20:55:03 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 20:46:09 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 12:44:45 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 12:44:55 +0800
Message-ID: <1576125900.29693.0.camel@mtksdaap41>
Subject: Re: [PATCH 1/2] Return from mtk_ovl_layer_config after
 mtk_ovl_layer_off
From: CK Hu <ck.hu@mediatek.com>
To: Mark Yacoub <markyacoub@google.com>
Date: Thu, 12 Dec 2019 12:45:00 +0800
In-Reply-To: <20191211154901.176256-1-markyacoub@google.com>
References: <20191211154901.176256-1-markyacoub@google.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_205505_545841_E21FC988 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniele Castagna <dcastagna@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Mark:

On Wed, 2019-12-11 at 10:49 -0500, Mark Yacoub wrote:
> drm/mediatek: return if plane pending state is disabled.
> 
> If the plane pending state is disabled, call mtk_ovl_layer_off then
> return.
> This guarantees that that the state is valid for all operations when the
> pending state is enabled.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Suggested-by: Sean Paul <seanpaul@chromium.org>
> To: CK Hu <ck.hu@mediatek.com>
> To: dri-devel@lists.freedesktop.org
> Cc: Daniele Castagna <dcastagna@chromium.org>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> Signed-off-by: Mark Yacoub <markyacoub@google.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 4a55bb6e2213..526b595eeff9 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -260,8 +260,10 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  	unsigned int src_size = (pending->height << 16) | pending->width;
>  	unsigned int con;
>  
> -	if (!pending->enable)
> +	if (!pending->enable) {
>  		mtk_ovl_layer_off(comp, idx);
> +		return;
> +	}
>  
>  	con = ovl_fmt_convert(ovl, fmt);
>  	if (idx != 0)
> @@ -283,8 +285,7 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  	writel_relaxed(offset, comp->regs + DISP_REG_OVL_OFFSET(idx));
>  	writel_relaxed(addr, comp->regs + DISP_REG_OVL_ADDR(ovl, idx));
>  
> -	if (pending->enable)
> -		mtk_ovl_layer_on(comp, idx);
> +	mtk_ovl_layer_on(comp, idx);
>  }
>  
>  static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
