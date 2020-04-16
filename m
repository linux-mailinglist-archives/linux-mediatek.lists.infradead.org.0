Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CF81AD1ED
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Apr 2020 23:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMomkMXPDY58GWj/ckcM/fohL7OuzkEctYKrnjj/M6k=; b=a8z853lRLraEAm
	lZuespEh6hpi5MYM4SYvX87JbPpK+X0Gi1X4nLazEJp7LUj3qgVbLMPXkIjFJMlIbQ/Q5Wt/L6TNV
	PvsYRnZBJthYvtQ+JgyIffh4chWiUwLD92EFL9dy6okRGp4wiZKcXpr0CeuPCfcvXTtO00Y1bHc02
	Od16OD4kpxqkl/1Bbviq2p30owIppsNNXBPu8QYnTsseVgW9grNlf0ViAJi5mAB28kwuo8FjIyTW+
	rBwOfYaVP8HFWTgbJEFoWBMYQNqBx5DWaXq3OO5kLCYWH2f2TGctXYLwL2O1smIheMnq1sszMsyxt
	Zwwm9iPXaTsH5xJfsc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPC8h-00070x-Cz; Thu, 16 Apr 2020 21:33:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPC8X-0006tP-W4; Thu, 16 Apr 2020 21:33:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 768E62A1269
Subject: Re: [PATCH v2 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200416155720.2360443-1-enric.balletbo@collabora.com>
 <20200416155720.2360443-8-enric.balletbo@collabora.com>
 <20200416173525.GQ4796@pendragon.ideasonboard.com>
 <20200416173615.GR4796@pendragon.ideasonboard.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <cb5db1ad-c0c6-44aa-8a26-0c7731b973fd@collabora.com>
Date: Thu, 16 Apr 2020 23:33:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200416173615.GR4796@pendragon.ideasonboard.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_143330_159785_AD286016 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Laurent,

On 16/4/20 19:36, Laurent Pinchart wrote:
> Hi Enric,
> 
> On Thu, Apr 16, 2020 at 08:35:26PM +0300, Laurent Pinchart wrote:
>> On Thu, Apr 16, 2020 at 05:57:19PM +0200, Enric Balletbo i Serra wrote:
>>> Use the drm_bridge_connector helper to create a connector for pipelines
>>> that use drm_bridge. This allows splitting connector operations across
>>> multiple bridges when necessary, instead of having the last bridge in
>>> the chain creating the connector and handling all connector operations
>>> internally.
>>
>> That's the right direction, but this should be done in the mtk display
>> controller driver core, not in here. I'm OK with the code being here as
>> an interim measure if needed to move forward, but that should then be
>> temporary only.

It'd be nice if we can do this as an interim measure for now, so at least we
have the embedded display working. IIUC to move that to the display controller
driver core I should also convert/rework the mtk_dpi and mtk_hdmi drivers. This
is used for the external display on my device but to fully support this I'll
also need to rework the bridge chain logic to handle the multi-sink/multi-source
use case. This is something I plan to work on but I suspect won't be easy and
will trigger lots of discussions, and, of course, some time.

So, if is fine I won't move this for now.

Thanks,
 Enric


> 
> I forgot to mention that the drm_encoder should also move out of the
> bridge driver to the display controller driver.
> 
>>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>>> ---
>>>
>>> Changes in v2: None
>>>
>>>  drivers/gpu/drm/mediatek/mtk_dsi.c | 14 +++++++++++++-
>>>  1 file changed, 13 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
>>> index 44718fa3d1ca..2f8876c32864 100644
>>> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
>>> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
>>> @@ -17,6 +17,7 @@
>>>  
>>>  #include <drm/drm_atomic_helper.h>
>>>  #include <drm/drm_bridge.h>
>>> +#include <drm/drm_bridge_connector.h>
>>>  #include <drm/drm_mipi_dsi.h>
>>>  #include <drm/drm_of.h>
>>>  #include <drm/drm_panel.h>
>>> @@ -184,6 +185,7 @@ struct mtk_dsi {
>>>  	struct drm_bridge bridge;
>>>  	struct drm_bridge *panel_bridge;
>>>  	struct drm_bridge *next_bridge;
>>> +	struct drm_connector *connector;
>>>  	struct phy *phy;
>>>  
>>>  	void __iomem *regs;
>>> @@ -983,10 +985,19 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
>>>  	 */
>>>  	dsi->encoder.possible_crtcs = 1;
>>>  
>>> -	ret = drm_bridge_attach(&dsi->encoder, &dsi->bridge, NULL, 0);
>>> +	ret = drm_bridge_attach(&dsi->encoder, &dsi->bridge, NULL,
>>> +				DRM_BRIDGE_ATTACH_NO_CONNECTOR);
>>>  	if (ret)
>>>  		goto err_cleanup_encoder;
>>>  
>>> +	dsi->connector = drm_bridge_connector_init(drm, &dsi->encoder);
>>> +	if (IS_ERR(dsi->connector)) {
>>> +		DRM_ERROR("Unable to create bridge connector\n");
>>> +		ret = PTR_ERR(dsi->connector);
>>> +		goto err_cleanup_encoder;
>>> +	}
>>> +	drm_connector_attach_encoder(dsi->connector, &dsi->encoder);
>>> +
>>>  	return 0;
>>>  
>>>  err_cleanup_encoder:
>>> @@ -1144,6 +1155,7 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>>>  
>>>  	dsi->bridge.funcs = &mtk_dsi_bridge_funcs;
>>>  	dsi->bridge.of_node = dev->of_node;
>>> +	dsi->bridge.type = DRM_MODE_CONNECTOR_DSI;
>>
>> I think this line belongs to the patch that adds drm_bridge support to
>> this driver.
>>
>>>  
>>>  	drm_bridge_add(&dsi->bridge);
>>>  
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
