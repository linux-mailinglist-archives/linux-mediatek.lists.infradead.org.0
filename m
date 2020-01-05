Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0365D1307BD
	for <lists+linux-mediatek@lfdr.de>; Sun,  5 Jan 2020 12:32:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/Qeo8/CcGAxlHFZW8zxsQKnobfvpJu9ZX5vWrVkDGc=; b=fNHQ4l+iIH6kUN
	WvH+dUaljs0nIH0uuI3IqVwB/0/r4Toac4G0Y9KHFbkqJ/1QAObcLLfZffBq4uRS0w2OThU4Wzb6J
	bD45h5FCHPoHeK46wqwUx9cL9wGMNz7BNnRPDMB2p8YmhQ9Zfp+Nod5LkhrJWgy9we0Vuc4zyx9v+
	u4i+MgOFN58hbR/YvoM12w5qPwPG0UYfKx6TwxyPhoeKShXW7hv1JjH/YDkV/dvADd4H+J+YgMtMo
	KUknHzHoGkcpL15K5hQToxQkyd/otgqbTmX8N0sPmfgHioDVv4SGUqh/hcv1RZX5quTVCv8fl0Md+
	u3cI0JIb+m24ncmp5Ofg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io49B-000311-Rw; Sun, 05 Jan 2020 11:32:41 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io498-00030d-Jq
 for linux-mediatek@lists.infradead.org; Sun, 05 Jan 2020 11:32:40 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id B53EC20052;
 Sun,  5 Jan 2020 12:32:36 +0100 (CET)
Date: Sun, 5 Jan 2020 12:32:35 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v7 8/8] drm/panel: support for auo,b101uan08.3 wuxga dsi
 video mode panel
Message-ID: <20200105113235.GC16043@ravnborg.org>
References: <20191012030720.27127-1-jitao.shi@mediatek.com>
 <20191012030720.27127-9-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191012030720.27127-9-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=mpaa-ttXAAAA:8
 a=7gkXJVJtAAAA:8 a=FdkQ6FN8FfoDwbS2zlMA:9 a=CjuIK1q_8ugA:10
 a=6heAxKwa5pAsJatQ0mat:22 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_033239_016838_6D6DF176 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Jitao.

Looks good.

On Sat, Oct 12, 2019 at 11:07:20AM +0800, Jitao Shi wrote:
> Auo,auo,b101uan08.3's connector is same as boe,tv101wum-nl6.
> The most codes can be reuse.
> So auo,b101uan08.3 and boe,tv101wum-nl6 use one driver file.
> Add the different parts in driver data.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> index 7b47619675f5..e2496a334ab6 100644
> --- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> +++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> @@ -382,6 +382,53 @@ static const struct panel_init_cmd auo_kd101n80_45na_init_cmd[] = {
>  	{},
>  };
>  
> +static const struct panel_init_cmd auo_b101uan08_3_init_cmd[] = {
> +	_INIT_DELAY_CMD(24),
> +	_INIT_DCS_CMD(0xB0, 0x01),
> +	_INIT_DCS_CMD(0xC0, 0x48),
> +	_INIT_DCS_CMD(0xC1, 0x48),
> +	_INIT_DCS_CMD(0xC2, 0x47),
> +	_INIT_DCS_CMD(0xC3, 0x47),
> +	_INIT_DCS_CMD(0xC4, 0x46),
> +	_INIT_DCS_CMD(0xC5, 0x46),
> +	_INIT_DCS_CMD(0xC6, 0x45),
> +	_INIT_DCS_CMD(0xC7, 0x45),
> +	_INIT_DCS_CMD(0xC8, 0x64),
> +	_INIT_DCS_CMD(0xC9, 0x64),
> +	_INIT_DCS_CMD(0xCA, 0x4F),
> +	_INIT_DCS_CMD(0xCB, 0x4F),
> +	_INIT_DCS_CMD(0xCC, 0x40),
> +	_INIT_DCS_CMD(0xCD, 0x40),
> +	_INIT_DCS_CMD(0xCE, 0x66),
> +	_INIT_DCS_CMD(0xCF, 0x66),
> +	_INIT_DCS_CMD(0xD0, 0x4F),
> +	_INIT_DCS_CMD(0xD1, 0x4F),
> +	_INIT_DCS_CMD(0xD2, 0x41),
> +	_INIT_DCS_CMD(0xD3, 0x41),
> +	_INIT_DCS_CMD(0xD4, 0x48),
> +	_INIT_DCS_CMD(0xD5, 0x48),
> +	_INIT_DCS_CMD(0xD6, 0x47),
> +	_INIT_DCS_CMD(0xD7, 0x47),
> +	_INIT_DCS_CMD(0xD8, 0x46),
> +	_INIT_DCS_CMD(0xD9, 0x46),
> +	_INIT_DCS_CMD(0xDA, 0x45),
> +	_INIT_DCS_CMD(0xDB, 0x45),
> +	_INIT_DCS_CMD(0xDC, 0x64),
> +	_INIT_DCS_CMD(0xDD, 0x64),
> +	_INIT_DCS_CMD(0xDE, 0x4F),
> +	_INIT_DCS_CMD(0xDF, 0x4F),
> +	_INIT_DCS_CMD(0xE0, 0x40),
> +	_INIT_DCS_CMD(0xE1, 0x40),
> +	_INIT_DCS_CMD(0xE2, 0x66),
> +	_INIT_DCS_CMD(0xE3, 0x66),
> +	_INIT_DCS_CMD(0xE4, 0x4F),
> +	_INIT_DCS_CMD(0xE5, 0x4F),
> +	_INIT_DCS_CMD(0xE6, 0x41),
> +	_INIT_DCS_CMD(0xE7, 0x41),
> +	_INIT_DELAY_CMD(150),
> +	{},
> +};
> +
>  static inline struct boe_panel *to_boe_panel(struct drm_panel *panel)
>  {
>  	return container_of(panel, struct boe_panel, base);
> @@ -652,6 +699,34 @@ static const struct panel_desc boe_tv101wum_n53_desc = {
>  	.init_cmds = boe_init_cmd,
>  };
>  
> +static const struct drm_display_mode auo_b101uan08_3_default_mode = {
> +	.clock = 159667,
> +	.hdisplay = 1200,
> +	.hsync_start = 1200 + 60,
> +	.hsync_end = 1200 + 60 + 4,
> +	.htotal = 1200 + 60 + 4 + 80,
> +	.vdisplay = 1920,
> +	.vsync_start = 1920 + 34,
> +	.vsync_end = 1920 + 34 + 2,
> +	.vtotal = 1920 + 34 + 2 + 24,
> +	.vrefresh = 60,
> +	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +};
> +
> +static const struct panel_desc auo_b101uan08_3_desc = {
> +	.modes = &auo_b101uan08_3_default_mode,
> +	.bpc = 8,
> +	.size = {
> +		.width_mm = 135,
> +		.height_mm = 216,
> +	},
> +	.lanes = 4,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
> +		      MIPI_DSI_MODE_LPM,
> +	.init_cmds = auo_b101uan08_3_init_cmd,
> +};
> +
>  static int boe_panel_get_modes(struct drm_panel *panel)
>  {
>  	struct boe_panel *boe = to_boe_panel(panel);
> @@ -782,6 +857,9 @@ static const struct of_device_id boe_of_match[] = {
>  	{ .compatible = "boe,tv101wum-n53",
>  	  .data = &boe_tv101wum_n53_desc
>  	},
> +	{ .compatible = "auo,b101uan08.3",
> +	  .data = &auo_b101uan08_3_desc
> +	},
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, boe_of_match);
> -- 
> 2.21.0

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
