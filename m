Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2A1BEDE1
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Sep 2019 10:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZULUBNTgbnzaaWG/Fi5YhQRBrXqajPiNic2SLOFhB/4=; b=kxsJ+e7ztVnC2I
	u+DVluhoJE0Y2alEZ9FtgtgwSDNqTx9TWUUMzBmLrxALppEcFuWJB6IhWfKh9Xiq6MtvpS5BsYrzx
	Y5dkrImujKiUp1MF+qPsK6SoVL7p+r3oDoA2gXVBTUf8jEBmh9QV+FA+ZWhua/gESodz+W1nH7Hx/
	OAIYll6Kg11KfKJahlCpaEP0Pw51fcfXz5vrNKg2oetTgWYkM5CFev94GG8KldKTQxM6N5wVopzo4
	g/uq7wv9m3HEa70/wfe60T0jiBeAOl7E0/luEHACKcBX2BPVn3xSbtOInulXsowhU7JHHubAoj0u9
	jVP3kejHgFvGwAd+xZAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPWK-0003S8-Hl; Thu, 26 Sep 2019 08:53:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPVM-0003BL-2v
 for linux-mediatek@lists.infradead.org; Thu, 26 Sep 2019 08:52:05 +0000
X-UUID: 0c411c2713bd42d08b17de58d9f4cc60-20190926
X-UUID: 0c411c2713bd42d08b17de58d9f4cc60-20190926
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 235391180; Thu, 26 Sep 2019 00:52:01 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 01:52:00 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 16:51:59 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 26 Sep 2019 16:51:59 +0800
Message-ID: <1569487920.9612.3.camel@mtksdaap41>
Subject: Re: [PATCH v7 9/9] drm/mediatek: add dphy reset after setting lanes
 number
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Thu, 26 Sep 2019 16:52:00 +0800
In-Reply-To: <20190919065806.111016-10-jitao.shi@mediatek.com>
References: <20190919065806.111016-1-jitao.shi@mediatek.com>
 <20190919065806.111016-10-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_015204_398291_856E4C50 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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
Cc: bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, stonea168@163.com, cawa.cheng@mediatek.com,
 dri-devel@lists.freedesktop.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Jitao:

On Thu, 2019-09-19 at 14:58 +0800, Jitao Shi wrote:
> Add dphy reset after setting lanes number to avoid dphy fifo effor.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index b02373b04848..8c2620ea18d0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -37,6 +37,7 @@
>  #define DSI_CON_CTRL		0x10
>  #define DSI_RESET			BIT(0)
>  #define DSI_EN				BIT(1)
> +#define DPHY_RESET			BIT(2)
>  
>  #define DSI_MODE_CTRL		0x14
>  #define MODE				(3)
> @@ -280,6 +281,12 @@ static void mtk_dsi_reset_engine(struct mtk_dsi *dsi)
>  	mtk_dsi_mask(dsi, DSI_CON_CTRL, DSI_RESET, 0);
>  }
>  
> +static void mtk_dsi_reset_dphy(struct mtk_dsi *dsi)
> +{
> +	mtk_dsi_mask(dsi, DSI_CON_CTRL, DPHY_RESET, DPHY_RESET);
> +	mtk_dsi_mask(dsi, DSI_CON_CTRL, DPHY_RESET, 0);
> +}
> +
>  static void mtk_dsi_clk_ulp_mode_enter(struct mtk_dsi *dsi)
>  {
>  	mtk_dsi_mask(dsi, DSI_PHY_LCCON, LC_HS_TX_EN, 0);
> @@ -650,6 +657,8 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
>  	mtk_dsi_phy_timconfig(dsi);
>  
>  	mtk_dsi_rxtx_control(dsi);
> +	usleep_range(30, 100);
> +	mtk_dsi_reset_dphy(dsi);
>  	mtk_dsi_ps_control_vact(dsi);
>  	mtk_dsi_set_vm_cmd(dsi);
>  	mtk_dsi_config_vdo_timing(dsi);



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
