Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5852C1AE03D
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Apr 2020 16:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+jvL4C2QudVIkuW2AbRuZ6n5myIOMJpMbqptYDAnFg8=; b=tAXGNwrznPwXob
	DMC0zLzhD6Ffpmjew7e5N5O+lmMZng1ydz3jD/Rvi6Zy365wUIrQmT/JDCthTGkAMKmTBQjDuTG4m
	P1yF8ge3mmxfyie03DqTXpfTE71l9jiIAdj8cHbykPqwIzxRh2XsSXC1+Q3338tLym6h9IunXQF4K
	HsQAu3slxvm7kstit7E9ijxCqIBkOderqDeWBO6zph2gcXntyoEx7t1562j4Gs8ok7OoE8ch7h+q0
	L1moVf1BjVN7t8pczsb3K7v26AOqN2a9wRbJaimUsLZegtvE32pkOgblbt5MUxYeOovMuiIVBm1b/
	DqZLXl6Tp3uSfZe0rw9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSMt-00059t-OD; Fri, 17 Apr 2020 14:53:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSMg-00050I-Vy; Fri, 17 Apr 2020 14:53:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 2BC642A2ABC
Subject: Re: [PATCH v2 3/7] drm/mediatek: mtk_dsi: Rename bridge to next_bridge
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200416155720.2360443-1-enric.balletbo@collabora.com>
 <20200416155720.2360443-4-enric.balletbo@collabora.com>
 <20200416172435.GM4796@pendragon.ideasonboard.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <c1319dc1-5fdf-7e7d-1410-a23ed1d87d67@collabora.com>
Date: Fri, 17 Apr 2020 16:53:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200416172435.GM4796@pendragon.ideasonboard.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_075311_160036_386C7283 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On 16/4/20 19:24, Laurent Pinchart wrote:
> Hi Enric,
> 
> Thank you for the patch.
> 
> On Thu, Apr 16, 2020 at 05:57:15PM +0200, Enric Balletbo i Serra wrote:
>> This is really a cosmetic change just to make a bit more readable the
>> code after convert the driver to drm_bridge. The bridge variable name
>> will be used by the encoder drm_bridge, and the chained bridge will be
>> named next_bridge.
>>
>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>> ---
>>
>> Changes in v2: None
>>
>>  drivers/gpu/drm/mediatek/mtk_dsi.c | 9 +++++----
>>  1 file changed, 5 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
>> index cfa45d6abd74..44ee884cc31c 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
>> @@ -182,7 +182,7 @@ struct mtk_dsi {
>>  	struct drm_encoder encoder;
>>  	struct drm_connector conn;
>>  	struct drm_panel *panel;
>> -	struct drm_bridge *bridge;
>> +	struct drm_bridge *next_bridge;
>>  	struct phy *phy;
>>  
>>  	void __iomem *regs;
>> @@ -903,8 +903,9 @@ static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi)
>>  	dsi->encoder.possible_crtcs = 1;
>>  
>>  	/* If there's a bridge, attach to it and let it create the connector */
> 
> Maybe s/bridge/next bridge/ here ? I expect this comment to go away
> though, as there will always be a next bridge when the driver switches
> to the DRM panel bridge helper.
> 

I'll rename it to next bridge for coherency, however, as you point this message
is removed later.

> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
>> -	if (dsi->bridge) {
>> -		ret = drm_bridge_attach(&dsi->encoder, dsi->bridge, NULL, 0);
>> +	if (dsi->next_bridge) {
>> +		ret = drm_bridge_attach(&dsi->encoder, dsi->next_bridge, NULL,
>> +					0);
>>  		if (ret) {
>>  			DRM_ERROR("Failed to attach bridge to drm\n");
>>  			goto err_encoder_cleanup;
>> @@ -1185,7 +1186,7 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>>  	}
>>  
>>  	ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
>> -					  &dsi->panel, &dsi->bridge);
>> +					  &dsi->panel, &dsi->next_bridge);
>>  	if (ret)
>>  		goto err_unregister_host;
>>  
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
