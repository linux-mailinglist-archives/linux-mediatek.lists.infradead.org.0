Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FFE2C1C1
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 10:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7+n9zudbMUYOwKIkw8cXDs/UxY9lxIrke4F23OGQTk=; b=ROcnwQOqn2kY9Z
	VF2+fBrZoZhTOCu4vwU6TIxW8bg7F9f9fR/A9g0ixmuYH1NcdKF3kJmlhUbcPood1ur1q8H61lTTu
	lkWRZlSmA4lVPSmTDgulV/huA33zRWS56CdJhMqn84ii/BY+/P4Ms24dTsecAzrmg08XpU0SWtaEV
	iYSKnGppLvTU8krsK/+UNRmsydqlNxk2H3956lu48SvrEvxaKiKj2a9WOy2w3pPQ5S5buliHc61mh
	rOAYPOrNa258YwYZu+dcaAKDUPvNkk4brADYlT0eogtutjBZ98IXuVO1EmhWEAl4HBq34KE5hB/3D
	OBtqYFBOo42DlSNuUrOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXrM-0000TU-Ty; Tue, 28 May 2019 08:53:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXrK-0000SY-1t; Tue, 28 May 2019 08:53:27 +0000
X-UUID: 14826d00fd944b3290713bfde036e60d-20190528
X-UUID: 14826d00fd944b3290713bfde036e60d-20190528
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 344870307; Tue, 28 May 2019 00:53:21 -0800
Received: from mtkexhb01.mediatek.inc (172.21.101.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 01:53:20 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by mtkexhb01.mediatek.inc
 (172.21.101.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 28 May 2019 16:53:06 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 28 May 2019 16:53:06 +0800
Message-ID: <1559033586.5141.3.camel@mtksdaap41>
Subject: Re: [PATCH v3] gpu/drm: mediatek: call mtk_dsi_stop() after
 mtk_drm_crtc_atomic_disable()
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 28 May 2019 16:53:06 +0800
In-Reply-To: <20190528073908.633-1-hsinyi@chromium.org>
References: <20190528073908.633-1-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_015326_100146_EFA32741 
X-CRM114-Status: GOOD (  18.95  )
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias
 Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Hsin-Yi:

On Tue, 2019-05-28 at 15:39 +0800, Hsin-Yi Wang wrote:
> mtk_dsi_stop() should be called after mtk_drm_crtc_atomic_disable(), which needs
> ovl irq for drm_crtc_wait_one_vblank(), since after mtk_dsi_stop() is called,
> ovl irq will be disabled. If drm_crtc_wait_one_vblank() is called after last
> irq, it will timeout with this message: "vblank wait timed out on crtc 0". This
> happens sometimes when turning off the screen.
> 
> In drm_atomic_helper.c#disable_outputs(),
> the calling sequence when turning off the screen is:
> 
> 1. mtk_dsi_encoder_disable()
>      --> mtk_output_dsi_disable()
>        --> mtk_dsi_stop();  // sometimes make vblank timeout in atomic_disable
>        --> mtk_dsi_poweroff();
> 2. mtk_drm_crtc_atomic_disable()
>      --> drm_crtc_wait_one_vblank();
>      ...
>        --> mtk_dsi_ddp_stop()
>          --> mtk_dsi_poweroff();
> 
> mtk_dsi_poweroff() has reference count design, change to make mtk_dsi_stop()
> called in mtk_dsi_poweroff() when refcount is 0.
> 
> Fixes: 0707632b5bac ("drm/mediatek: update DSI sub driver flow for sending commands to panel")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> change log v2->v3:
> * remove unnecessary codes in unbind
> * based on discussion in v2, if we move mtk_dsi_start() to mtk_dsi_poweron(),
> in order to make mtk_dsi_start() and mtk_dsi_stop() symmetric, will results in
> no irq for panel with bridge. So we keep mtk_dsi_start() in original place.

I think we've already discussed in [1]. I need a reason to understand
this is hardware behavior or software bug. If this is a software bug, we
need to fix the bug and code could be symmetric.

[1]
http://lists.infradead.org/pipermail/linux-mediatek/2019-March/018423.html

Regards,
CK

> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index b00eb2d2e086..b7f829ecd3ad 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -630,6 +630,8 @@ static void mtk_dsi_poweroff(struct mtk_dsi *dsi)
>  	if (--dsi->refcount != 0)
>  		return;
>  
> +	mtk_dsi_stop(dsi);
> +
>  	if (!mtk_dsi_switch_to_cmd_mode(dsi, VM_DONE_INT_FLAG, 500)) {
>  		if (dsi->panel) {
>  			if (drm_panel_unprepare(dsi->panel)) {
> @@ -696,7 +698,6 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
>  		}
>  	}
>  
> -	mtk_dsi_stop(dsi);
>  	mtk_dsi_poweroff(dsi);
>  
>  	dsi->enabled = false;



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
