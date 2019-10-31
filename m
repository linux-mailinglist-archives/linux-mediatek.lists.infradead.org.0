Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB55EA94B
	for <lists+linux-mediatek@lfdr.de>; Thu, 31 Oct 2019 03:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTzz92vZStxDWkB2TF75X7DLZTTyBvBwQ/khiFkZUNY=; b=qQ1Y+GFYeirWw0
	cdaYdZ1FzjwdqbPaRKMZChnxVlbrcFH6EAIcfedaep/zoB6Mx84RQ2fD8dMAl5UL6v8o8sZHGtm0L
	FKHxFtHgkFAGFhojhJ6dlmkGMuLMt2J594YDgWWeVNRpXp2ZqFCl8TX5D/jeW1aOc8w4f2kPPBI7S
	zl/f1/a+rmEi8AaghToNjZrWvp58NlyNa5BmmA2RCWYHikDvpJ7Gv+BcIwO6+puYwcjT+3uewVg/a
	pC0It5+JZB+7fgq05FbQ0D2GYWXCyP6/nlHxZDDydFpQsGLSx15I1ujixJar/bYO6QkRTSqFZxfDO
	NZUkpl6ouhm2PKw+K9EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ0Os-0001VI-K0; Thu, 31 Oct 2019 02:41:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ0Op-0001UW-WA; Thu, 31 Oct 2019 02:41:25 +0000
X-UUID: 8ac0743666b8453db2446e27b8df2b0b-20191030
X-UUID: 8ac0743666b8453db2446e27b8df2b0b-20191030
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1932025489; Wed, 30 Oct 2019 18:40:52 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 30 Oct 2019 19:41:13 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 31 Oct 2019 10:41:13 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 31 Oct 2019 10:41:12 +0800
Message-ID: <1572489673.25108.2.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: Add RGB[A] variants to published plane
 formats
From: CK Hu <ck.hu@mediatek.com>
To: Sean Paul <sean@poorly.run>
Date: Thu, 31 Oct 2019 10:41:13 +0800
In-Reply-To: <20191023195129.165775-1-sean@poorly.run>
References: <20191023195129.165775-1-sean@poorly.run>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_194124_044450_347DB770 
X-CRM114-Status: GOOD (  12.34  )
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Daniele Castagna <dcastagna@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Miguel Casas <mcasas@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Sean:

On Wed, 2019-10-23 at 15:51 -0400, Sean Paul wrote:
> From: Sean Paul <seanpaul@chromium.org>
> 
> These formats are handled in the rdma code, but for some reason they're
> not published as supported formats for the planes. So add them to the
> list.

Applied to mediatek-drm-fixes-5.4 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.4

Regards,
CK

> 
> Cc: Nicolas Boichat <drinkcat@chromium.org>
> Cc: Daniele Castagna <dcastagna@chromium.org>
> Cc: Miguel Casas <mcasas@chromium.org>
> Tested-by: Miguel Casas <mcasas@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index 584a9ecadce6..49d59470cc11 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -20,6 +20,12 @@
>  static const u32 formats[] = {
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_BGRX8888,
> +	DRM_FORMAT_BGRA8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_RGB888,
> +	DRM_FORMAT_BGR888,
>  	DRM_FORMAT_RGB565,
>  	DRM_FORMAT_UYVY,
>  	DRM_FORMAT_YUYV,



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
