Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5D915A6C7
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Feb 2020 11:44:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B05OQ9U+dSZNwLkAI6NnXHc/1U1c0zk0OsdgW7W6bzI=; b=dFfBhHDVmTRM8f
	e2KytHy1TjwPgIKZ4+bniVwXvD7dg/VaeCvJf4nA18/WHRzuhZrcVJShLN6EqGSQ4d/BVZ7pdx45w
	y65vGx7FeVWtOGRKNYmmS4IisFByLOGEPruFArZqINW0jbGlyOiGx8UZZqF03k3B5GjoScDq9jyOD
	u9d/vGKos/5eo3f/wvRKDhfHBkBS+oRANiK6QyLOD/lu6bUdt9L4MaKtbOnYcfOSD7VuH7bVDabZM
	S52jLTcdjIkWyI+k0bYYpmgMON0vqFYUTlUkhxKslaBSIexVVRrQAuTCd1Q84hmx5JT38a7iexg/F
	hLiRoqWliLcD6z0ikTgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pVR-0006lq-GA; Wed, 12 Feb 2020 10:44:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pV5-0006aX-MN; Wed, 12 Feb 2020 10:44:13 +0000
X-UUID: a353fb98fdf248fb88031e50d632b2a0-20200212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=mI3fYDry0lo0Gw3fcA1ji/+ZqG9237qwLkz8bgtOGaY=; 
 b=VnEm6VIurTUW9qz4DXkvd1aAv5Xr7sWbSbO/Ao7TuAVlDMOYr9IEqk+8dI5I1SOM5e888HJ/WuAVobpUkodj5jc6l9MUMHqsFRr8ZaEG3ydsapywctSKK+ZPCDFtfqUjqGJhSN6fUO4/QIg6vjVXRtjnjbMCkBNnpd45l3+r1n8=;
X-UUID: a353fb98fdf248fb88031e50d632b2a0-20200212
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1228809371; Wed, 12 Feb 2020 02:44:07 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 02:44:05 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 18:43:13 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Feb 2020 18:43:04 +0800
Message-ID: <1581504244.26347.0.camel@mtksdaap41>
Subject: Re: [PATCH 2/2] drm/mediatek: move gce event property to mutex
 device node
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Wed, 12 Feb 2020 18:44:04 +0800
In-Reply-To: <20200212095501.12124-2-bibby.hsieh@mediatek.com>
References: <20200212095501.12124-1-bibby.hsieh@mediatek.com>
 <20200212095501.12124-2-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_024411_767655_6AD2BAE9 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: drinkcat@chromium.org, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tfiga@chromium.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Bibby:

On Wed, 2020-02-12 at 17:55 +0800, Bibby Hsieh wrote:
> According mtk hardware design, stream_done0 and stream_done1 are
> generated by mutex, so we move gce event property to mutex device mode.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 3c53ea22208c..8a31e5b983db 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -819,7 +819,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  			drm_crtc_index(&mtk_crtc->base));
>  		mtk_crtc->cmdq_client = NULL;
>  	}
> -	ret = of_property_read_u32_index(dev->of_node, "mediatek,gce-events",
> +	ret = of_property_read_u32_index(priv->mutex_node, "mediatek,gce-events",
>  					 drm_crtc_index(&mtk_crtc->base),
>  					 &mtk_crtc->cmdq_event);
>  	if (ret)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
