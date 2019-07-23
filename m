Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C851714B2
	for <lists+linux-mediatek@lfdr.de>; Tue, 23 Jul 2019 11:10:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obY5j/Flpzyz8q0Yc4CI4KTIUQrV9uZuHZORHA3M3to=; b=Fjv1tOyepE/0Ud
	nMTyHh5Q2Bj14ZC8wdBF99ug3123JwAAJ5za8EAKZXr+VDpyQQtbz9/Q7jyyck7nEJ1tMuTaebdxJ
	qk2h0YZQpLTjYEnBON/cTVylhg/sr/C4BnnhUCn/Oep5T/iF6QC1LPJzgurRcUQZT2vRG60jFd+nz
	t34h0EOc68bTLZf1rIXtyE2DZ5rMwGC9w62hQ1mVs0cLgp1h5WUAgAXm8zAm1tVe74g0yaSnq2y+o
	v2Czews3lt93b3Km0tGOLDNcUcCvGRYUjdfPn7cOLym3cre/JOR7qLAXzXQA0tNrWR5OFjukzbikg
	ED+WSQyJpJvGK+6HZhJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqo4-000678-9T; Tue, 23 Jul 2019 09:10:00 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqnG-0005Xr-E4; Tue, 23 Jul 2019 09:09:12 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id C8327200B4;
 Tue, 23 Jul 2019 11:09:05 +0200 (CEST)
Date: Tue, 23 Jul 2019 11:09:04 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v4 17/23] drm/ast: Provide ddc symlink in connector sysfs
 directory
Message-ID: <20190723090904.GC787@ravnborg.org>
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <d3651bd2fd8ba69b8380304bca4c629a8c1da4e9.1562843413.git.andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3651bd2fd8ba69b8380304bca4c629a8c1da4e9.1562843413.git.andrzej.p@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=QX4gbG5DAAAA:8
 a=akpas9ZDeQi6sww-pK0A:9 a=CjuIK1q_8ugA:10 a=AbAUZ8qAyYyZVLSsDulk:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_020911_027449_E8C97EDE 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Sean Paul <sean@poorly.run>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Dave Airlie <airlied@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Jyri Sarha <jsarha@ti.com>, Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Vincent Abriou <vincent.abriou@st.com>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Enrico Weigelt <info@metux.net>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Andrzej.

On Thu, Jul 11, 2019 at 01:26:44PM +0200, Andrzej Pietrasiewicz wrote:
> Use the ddc pointer provided by the generic connector.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/gpu/drm/ast/ast_mode.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ast_mode.c
> index ffccbef962a4..1ca9bc4aa3bb 100644
> --- a/drivers/gpu/drm/ast/ast_mode.c
> +++ b/drivers/gpu/drm/ast/ast_mode.c
> @@ -890,6 +890,11 @@ static int ast_connector_init(struct drm_device *dev)
>  		return -ENOMEM;
>  
>  	connector = &ast_connector->base;
> +	ast_connector->i2c = ast_i2c_create(dev);
> +	if (!ast_connector->i2c)
> +		DRM_ERROR("failed to add ddc bus for connector\n");
> +
> +	connector->ddc = &ast_connector->i2c->adapter;
>  	drm_connector_init(dev, connector, &ast_connector_funcs, DRM_MODE_CONNECTOR_VGA);
>  
>  	drm_connector_helper_add(connector, &ast_connector_helper_funcs);
Again, assigning before drm_connector_init().
I did not audit the remaining patches - you got the idea.

	Sam

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
