Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 617B72EA8A
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 May 2019 04:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmq8vj5bbQFr45C9Ya6AaupXMK3e8Ht2QH6Wlx4CcE4=; b=jS2WvscKdX/QL0
	Fi/KVTrn8S0SbASbUkU5PQhqrbrt8WMZvhuLpLmaucqpFE/lsiEMFqiLa3EJWlUmGIQRkZsudA2gk
	KlR6WpBzIf3OGqOSkRE9WbqMrXH0MPpr1P5UtC3s8saXfQzPPi/aZaZ6ODHJFE2dXC34I1wViB6sY
	eV3d/LGWNyk/wLCu9ymUnGhTTP5SD5PnPloD7x+MCdjR6w52Bokinz2n/G7oBbM81gfFyAyLMusgN
	QValWfyKTe3i5KOhDYG5Mpiwcrz+Rj25WDO/KLTpx+LveBzE4sLMjGJ3Cnsag/K0EObrm7MT9XlCe
	/w9ax/sRJtoTH9KjOCKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWAZc-0002nz-Fk; Thu, 30 May 2019 02:13:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWAZY-0002nG-Nt; Thu, 30 May 2019 02:13:42 +0000
X-UUID: e09de3d67ee745329a9985b736bf53a6-20190529
X-UUID: e09de3d67ee745329a9985b736bf53a6-20190529
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1419160102; Wed, 29 May 2019 18:13:38 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 19:13:36 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 10:13:35 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 30 May 2019 10:13:35 +0800
Message-ID: <1559182415.6868.0.camel@mtksdaap41>
Subject: Re: [PATCH v2 1/4] drm: mediatek: fix unbind functions
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 30 May 2019 10:13:35 +0800
In-Reply-To: <20190529102555.251579-2-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
 <20190529102555.251579-2-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_191340_792412_C1F5AF20 
X-CRM114-Status: GOOD (  13.43  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Hsin-Yi:

On Wed, 2019-05-29 at 18:25 +0800, Hsin-Yi Wang wrote:
> detatch panel in mtk_dsi_destroy_conn_enc(), since .bind will try to
> attach it again.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Fixes: 2e54c14e310f ("drm/mediatek: Add DSI sub driver")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> change log v1->v2:
> * mipi_dsi_host_unregister() should be fixed in another patch on the list.
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index b00eb2d2e086..1ae3be99e0ff 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -844,6 +844,8 @@ static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi)
>  	/* Skip connector cleanup if creation was delegated to the bridge */
>  	if (dsi->conn.dev)
>  		drm_connector_cleanup(&dsi->conn);
> +	if (dsi->panel)
> +		drm_panel_detach(dsi->panel);
>  }
>  
>  static void mtk_dsi_ddp_start(struct mtk_ddp_comp *comp)



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
