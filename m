Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A6DBEDDC
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Sep 2019 10:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ow42DgpWIJP9NxztnxVxk48HbCeDsXiQnCPvDMdqKVk=; b=gN/VXIZUnxEiIe
	vqREuaRGDS+Nieg3eYHaGJo1oRBtgEgSA2ESbKcaxXQdqZRKF4IcSN1xKqjIqKnC62QuZldGVyv87
	mqjoCChCYvZWfg0Mo2ydV/9j+EgajFIVNWZwzU39lrlgOv8A6LcsIk4rd6jyUO82m/o6UZpjvD/eA
	yr5xyiiIM2wKS1SJhEZH2S78GTGab5y2cdSSApR7tPelnXdD9bn98odP2sTObs4gG4RmBDM8KZ3HJ
	HtkFKIQc+bW9rVaZ+t26i3rbv/W2d99EhJHgLSzbrZJEwfOnxJ6f6X+dMMP4k6G2Cw0LHfHJhY//3
	BwrV1bF82t7O80g7t62w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPVn-0003Gd-54; Thu, 26 Sep 2019 08:52:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPTk-0002os-6X
 for linux-mediatek@lists.infradead.org; Thu, 26 Sep 2019 08:50:28 +0000
X-UUID: e08120ab5f2544c88bf72bc0447c8042-20190926
X-UUID: e08120ab5f2544c88bf72bc0447c8042-20190926
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1095208500; Thu, 26 Sep 2019 00:50:14 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 01:50:13 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 16:50:12 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 26 Sep 2019 16:50:06 +0800
Message-ID: <1569487807.9612.0.camel@mtksdaap41>
Subject: Re: [PATCH v7 2/9] drm/mediatek: fixes CMDQ reg address of mt8173
 is different with mt2701
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Thu, 26 Sep 2019 16:50:07 +0800
In-Reply-To: <20190919065806.111016-3-jitao.shi@mediatek.com>
References: <20190919065806.111016-1-jitao.shi@mediatek.com>
 <20190919065806.111016-3-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_015025_057953_E4D15F93 
X-CRM114-Status: GOOD (  14.49  )
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

On Thu, 2019-09-19 at 14:57 +0800, Jitao Shi wrote:
> Config the different CMDQ reg address in driver data.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 27 ++++++++++++++++++++++-----
>  1 file changed, 22 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 52b49daeed9f..7e24d03cdccc 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -123,7 +123,6 @@
>  #define VM_CMD_EN			BIT(0)
>  #define TS_VFP_EN			BIT(5)
>  
> -#define DSI_CMDQ0		0x180
>  #define CONFIG				(0xff << 0)
>  #define SHORT_PACKET			0
>  #define LONG_PACKET			2
> @@ -148,6 +147,10 @@
>  
>  struct phy;
>  
> +struct mtk_dsi_driver_data {
> +	const u32 reg_cmdq_off;
> +};
> +
>  struct mtk_dsi {
>  	struct mtk_ddp_comp ddp_comp;
>  	struct device *dev;
> @@ -174,6 +177,7 @@ struct mtk_dsi {
>  	bool enabled;
>  	u32 irq_data;
>  	wait_queue_head_t irq_wait_queue;
> +	const struct mtk_dsi_driver_data *driver_data;
>  };
>  
>  static inline struct mtk_dsi *encoder_to_dsi(struct drm_encoder *e)
> @@ -936,6 +940,7 @@ static void mtk_dsi_cmdq(struct mtk_dsi *dsi, const struct mipi_dsi_msg *msg)
>  	const char *tx_buf = msg->tx_buf;
>  	u8 config, cmdq_size, cmdq_off, type = msg->type;
>  	u32 reg_val, cmdq_mask, i;
> +	u32 reg_cmdq_off = dsi->driver_data->reg_cmdq_off;
>  
>  	if (MTK_DSI_HOST_IS_READ(type))
>  		config = BTA;
> @@ -955,9 +960,9 @@ static void mtk_dsi_cmdq(struct mtk_dsi *dsi, const struct mipi_dsi_msg *msg)
>  	}
>  
>  	for (i = 0; i < msg->tx_len; i++)
> -		writeb(tx_buf[i], dsi->regs + DSI_CMDQ0 + cmdq_off + i);
> +		writeb(tx_buf[i], dsi->regs + reg_cmdq_off + cmdq_off + i);
>  
> -	mtk_dsi_mask(dsi, DSI_CMDQ0, cmdq_mask, reg_val);
> +	mtk_dsi_mask(dsi, reg_cmdq_off, cmdq_mask, reg_val);
>  	mtk_dsi_mask(dsi, DSI_CMDQ_SIZE, CMDQ_SIZE, cmdq_size);
>  }
>  
> @@ -1101,6 +1106,8 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_unregister_host;
>  
> +	dsi->driver_data = of_device_get_match_data(dev);
> +
>  	dsi->engine_clk = devm_clk_get(dev, "engine");
>  	if (IS_ERR(dsi->engine_clk)) {
>  		ret = PTR_ERR(dsi->engine_clk);
> @@ -1194,9 +1201,19 @@ static int mtk_dsi_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static const struct mtk_dsi_driver_data mt8173_dsi_driver_data = {
> +	.reg_cmdq_off = 0x200,
> +};
> +
> +static const struct mtk_dsi_driver_data mt2701_dsi_driver_data = {
> +	.reg_cmdq_off = 0x180,
> +};
> +
>  static const struct of_device_id mtk_dsi_of_match[] = {
> -	{ .compatible = "mediatek,mt2701-dsi" },
> -	{ .compatible = "mediatek,mt8173-dsi" },
> +	{ .compatible = "mediatek,mt2701-dsi",
> +	  .data = &mt2701_dsi_driver_data },
> +	{ .compatible = "mediatek,mt8173-dsi",
> +	  .data = &mt8173_dsi_driver_data },
>  	{ },
>  };
>  



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
