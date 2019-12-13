Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E7D11DEF2
	for <lists+linux-mediatek@lfdr.de>; Fri, 13 Dec 2019 08:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rf1TcanPu+US8mQKiejuuBsJMspY2t7HlQifF9VqUu4=; b=UNgIzWFpLzw/go
	grWOqlO2ZuwvO2MU3AC0BDBRCBBQRNrMNpsL4q6haPhsTNGZ08EXJbUruj3rcerOQi/iRDTKwIW8g
	DPPXBM+rnncTRRU9QXJKC8Dm0/PhxGZXiPvEDBDUSawTtX6HufO48NcFclFZ6ropEczU2MKQJzXxW
	PjlHjxyB0djhxwhAcEsnw0AESKI46SlVKfFOS3JwfHUBx7oEIT9mQX2t/nNUwJyRlbFoQQWYgUYfk
	DKD7kyEXINOoaEzLMO/oagQhc3QWUMCO7sRLRpThkvOnIKSORvXojLU/e16FytarnO70G7hy1Dvrk
	pDK5CJokioN9WTnFjvXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffoK-000233-5a; Fri, 13 Dec 2019 07:56:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffoA-0001ug-2b; Fri, 13 Dec 2019 07:56:19 +0000
X-UUID: 87ab83a0272042f9af9379c92b8b9f37-20191212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=BtXET+1NElrPbMJwRKiAbYUNzkYHcN515L3qrDyBFRk=; 
 b=cq5jNJlja/2j2iyT88NpKe2zBuz+s9htvrHW45m0a0jERY9i44urEUDGMMVSVwE2CGWmGEH7y/zB7N1QCz8VTu9AhEHJEXC9ToD/zCTALNuy+K3xd54uhD8pXmQix3/Neztxj8I0zQgCijLYFwcGUz0l8JRksYXLUVSfA1gQNd4=;
X-UUID: 87ab83a0272042f9af9379c92b8b9f37-20191212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 461127659; Thu, 12 Dec 2019 23:56:14 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 23:50:03 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 15:48:39 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 13 Dec 2019 15:48:46 +0800
Message-ID: <1576223336.9817.3.camel@mtksdaap41>
Subject: Re: [PATCH v2, 1/2] drm/mediatek: Fix gamma correction issue
From: CK Hu <ck.hu@mediatek.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
Date: Fri, 13 Dec 2019 15:48:56 +0800
In-Reply-To: <1576222132-31586-2-git-send-email-yongqiang.niu@mediatek.com>
References: <1576222132-31586-1-git-send-email-yongqiang.niu@mediatek.com>
 <1576222132-31586-2-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B2D976F46AAC6B6E1746EF1ECE6AC29281FF83D79D292527E390BA3DF3F8755E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_235618_121709_74F9320A 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The title is too rough. Any bug of gamma would be this title. I would
like the title show explicitly what it does.

On Fri, 2019-12-13 at 15:28 +0800, Yongqiang Niu wrote:
> if there is no gamma function in the crtc
> display path, don't add gamma property
> for crtc
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index ca4fc47..9a8e1d4 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -734,6 +734,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  	int pipe = priv->num_pipes;
>  	int ret;
>  	int i;
> +	uint gamma_lut_size = 0;
>  
>  	if (!path)
>  		return 0;
> @@ -785,6 +786,9 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  		}
>  
>  		mtk_crtc->ddp_comp[i] = comp;
> +
> +		if (comp->funcs->gamma_set)
> +			gamma_lut_size = MTK_LUT_SIZE;
>  	}
>  
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> @@ -805,8 +809,10 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  				NULL, pipe);
>  	if (ret < 0)
>  		return ret;
> -	drm_mode_crtc_set_gamma_size(&mtk_crtc->base, MTK_LUT_SIZE);
> -	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
> +
> +	if (gamma_lut_size)
> +		drm_mode_crtc_set_gamma_size(&mtk_crtc->base, gamma_lut_size);
> +	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, gamma_lut_size);

If there is no gamma, shall we enable color management?

Regards,
CK

>  	priv->num_pipes++;
>  	mutex_init(&mtk_crtc->hw_lock);
>  

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
