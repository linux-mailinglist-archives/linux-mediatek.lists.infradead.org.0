Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED2A3268D
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Jun 2019 04:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U405P9fC1hGCbtsYZ67zGoAWhgrhd6SCW/b42/1KBTQ=; b=IcnU1/4621TkKY
	omN/wl/Bmc+i2lxsIUeWl1GXzkUvQhE90nHrkIZgtBz5dGcuvlDozQBmVjjau03mU+qBkeGwYEktT
	zx0SRfthns/u5NYAPrmrPlXqKUa+OJEuP0Yt+goD5vqPbhHqzMxLx8CLcltTckbi1ul/ZZUcNDZrw
	Qcy0czBNPXqDy4ETfape6aWUW3hUo6ZKWNj6XXbSRUBxujshQMWdTsz7qKEhKypjnAOX11dbiQ8nw
	8xYA/rm+5ITJZrhxJw2F3KZFlDCqOMgcc5YFwOvAWsK5PLxFjgSlI0jGyytuR0H5YPvQEofOvB/lB
	2s7vmFJuBuYBSKKyyN5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXcZs-0003w0-P7; Mon, 03 Jun 2019 02:20:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXcZp-0003v5-JQ; Mon, 03 Jun 2019 02:19:58 +0000
X-UUID: d6960624f3a0419b97aafd8416025c63-20190602
X-UUID: d6960624f3a0419b97aafd8416025c63-20190602
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2055381105; Sun, 02 Jun 2019 18:19:47 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 19:19:44 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS33N2.mediatek.inc (172.27.4.76) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 10:19:36 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 3 Jun 2019 10:19:34 +0800
Message-ID: <1559528374.32185.4.camel@mtksdaap41>
Subject: Re: [v4 3/7] drm/mediatek: add dsi reg commit disable control
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Mon, 3 Jun 2019 10:19:34 +0800
In-Reply-To: <20190601092615.67917-4-jitao.shi@mediatek.com>
References: <20190601092615.67917-1-jitao.shi@mediatek.com>
 <20190601092615.67917-4-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_191957_648685_820639EE 
X-CRM114-Status: GOOD (  13.25  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>, Thierry
 Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki
 Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Andy
 Yan <andy.yan@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Sean
 Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Jitao:

On Sat, 2019-06-01 at 17:26 +0800, Jitao Shi wrote:
> New DSI IP has shadow register and working reg. The register
> values are writen to shadow register. And then trigger with
> commit reg, the register values will be moved working register.
> 
> This fucntion is defualt on. But this driver doesn't use this
> function. So add the disable control.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index a48db056df6c..eea47294079e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -131,6 +131,10 @@
>  #define VM_CMD_EN			BIT(0)
>  #define TS_VFP_EN			BIT(5)
>  
> +#define DSI_SHADOW_DEBUG	0x190U
> +#define FORCE_COMMIT			BIT(0)
> +#define BYPASS_SHADOW			BIT(1)
> +
>  #define CONFIG				(0xff << 0)
>  #define SHORT_PACKET			0
>  #define LONG_PACKET			2
> @@ -157,6 +161,7 @@ struct phy;
>  
>  struct mtk_dsi_driver_data {
>  	const u32 reg_cmdq_off;
> +	bool has_shadow_ctl;
>  };
>  
>  struct mtk_dsi {
> @@ -594,6 +599,11 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
>  	}
>  
>  	mtk_dsi_enable(dsi);
> +
> +	if (dsi->driver_data->has_shadow_ctl)
> +		writel(FORCE_COMMIT | BYPASS_SHADOW,
> +		       dsi->regs + DSI_SHADOW_DEBUG);
> +
>  	mtk_dsi_reset_engine(dsi);
>  	mtk_dsi_phy_timconfig(dsi);
>  



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
