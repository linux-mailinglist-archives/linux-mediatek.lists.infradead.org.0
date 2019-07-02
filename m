Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F33E5D7A7
	for <lists+linux-mediatek@lfdr.de>; Tue,  2 Jul 2019 22:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hfN62Ig9IW5f8u9GksuPhR8hsaGcSQ8/g1giiDkY4g=; b=tFuoMuZ8QWp77+
	gfkc+Na8HQcMXKqxCBPPTwt8upvwX0IWQ+ij3GFk7s1K5RX3MOOYRvoSnyJSIUNaCV+/gLWh/LMUN
	hoz81+WdWU0j3PbU4bv8hR47D6Pxsw9BATsT6IoS4ogv4alvTsXG5cIQ1wOk8EUQuFTaPOSvnQ2Cg
	OW0pjDWXGY+27JNyQmruWM4IlQiaAgILAraaG1pPPgEafnfA+yKEIFszciaxQrG3UZYOChw6zcpbE
	SxKRjO38YLPXbLg+lkyEKaQI/cLLK37y/jHqOoejV72q0YHa29aD9PV6MKJDtoP8jSVHCAzygvkR1
	xp7Sv0gHY/F0pXaJHSEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiPnf-0005zq-8T; Tue, 02 Jul 2019 20:54:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiPnV-0005yb-T6; Tue, 02 Jul 2019 20:54:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id e3so219691wrs.11;
 Tue, 02 Jul 2019 13:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QThr26AToxrJCKM3k8avZvDMVqyrJ91dTaGLyhqbH20=;
 b=CRhO9oD6SqNzMbupKcIulh5ZXIanNddF06TqDSNgfQPMYhR/s7zdDquxRJd8ci7C9p
 ONyfD3Hu4BkgQVuHrwMohUMc4ZIJ51FSRKkpcw7fI29fFhM3UsLBBtx3v+4OrpjNN42O
 iG47HRJK+YV8/5bD/0r2cyBmEwZF2CAwAWqwBDOXEtoV25x6wRQ3FcYj/azqIbT5oa9j
 6OJEDNKxtRhSkjyOv2Nj/a4FwZr/mNd3fT7vclIghrZACUmxwqKjT8whrAZ26Ao01r9s
 XMlxTal8M8MXuQVU9QBeMjsHTI3wulZ695PnLc7iKaJZqun03bmx6azn+3R9TzccNsUl
 vKcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QThr26AToxrJCKM3k8avZvDMVqyrJ91dTaGLyhqbH20=;
 b=nDLdQ68jiAAgHQR53KSt4P0EKK9IlRutStIlTs75ZZXmBUzCkUc8Me+hG+xsAxT9v5
 voITr6v5Yktd8305ByZFmBPE8m74v6XEV4aQ6/owT2Fi/WHzXECMAYxaLwgZhcs0cUnh
 EMmTUc9QpOwrHX9gAgOeHtQLVh85+OXPkwu7Ht8glNKdpfUqZ97lMzfbgAPoLHu2cfZ8
 rsqTrB/i88uckHhzTee4A9Gzr7z1bzvXVycm8XrJv+KL2V1LgC9lKOGsebS6QTOT9MBH
 85AMubKAWUTHc59TPYgW9h46PBGXP7s/3lNGT5Ge/V5072/C21x8r59Ksdlal9Xu/K3T
 1oLg==
X-Gm-Message-State: APjAAAUXqTFvXW+h4p9MjUBDxhXHBKk1EKZhAeQxb3RzGOauL6Fdd1xy
 4BxQCh6sip9djJ1DxWFzkMtvftdVV1XZHclIhLo=
X-Google-Smtp-Source: APXvYqya7jRjYrg2uPzpdGQeuQD5peq7b4+1sRG0DKgsrgmsdEWE+dBrpEeEgdlCiPx2pmUH5UtfGEnqygokrflWjn8=
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr11132568wrw.323.1562100878826; 
 Tue, 02 Jul 2019 13:54:38 -0700 (PDT)
MIME-Version: 1.0
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
 <5e355b8bec8fb3907566a741db8cc3e356246a32.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <5e355b8bec8fb3907566a741db8cc3e356246a32.1561735433.git.andrzej.p@collabora.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 2 Jul 2019 16:54:25 -0400
Message-ID: <CADnq5_MrVoScVFgj3TP2Z+Ky8_32k=Cou5jebuMT5gE1+GZ0cA@mail.gmail.com>
Subject: Re: [PATCH v3 21/22] drm/amdgpu: Provide ddc symlink in connector
 sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_135442_173549_6BCB206E 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Sam Ravnborg <sam@ravnborg.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Sean Paul <sean@poorly.run>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Huang Rui <ray.huang@amd.com>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 12:31 PM Andrzej Pietrasiewicz
<andrzej.p@collabora.com> wrote:
>
> Use the ddc pointer provided by the generic connector.
>
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    | 70 ++++++++++++++-----
>  1 file changed, 51 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
> index 73b2ede773d3..5f8a7e3818b9 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
> @@ -1573,11 +1573,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         goto failed;
>                 amdgpu_connector->con_priv = amdgpu_dig_connector;
>                 if (i2c_bus->valid) {
> -                       amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                       if (amdgpu_connector->ddc_bus)
> +                       struct amdgpu_connector *acn = amdgpu_connector;
> +
> +                       acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> +                       if (acn->ddc_bus) {

This hunk seems pointless unless I'm missing something.  Can you drop
this hunk?  Same comment on each instance of this below.  This also
only covers the legacy modesetting code which is not used by default
on most chips.  The DC code in amd/display/ is probably more relevant.

Alex

>                                 has_aux = true;
> -                       else
> +                               connector->ddc = &acn->ddc_bus->adapter;
> +                       } else {
>                                 DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       }
>                 }
>                 switch (connector_type) {
>                 case DRM_MODE_CONNECTOR_VGA:
> @@ -1662,9 +1666,13 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_vga_funcs, connector_type);
>                         drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                               if (!amdgpu_connector->ddc_bus)
> +                               struct amdgpu_connector *acn = amdgpu_connector;
> +
> +                               acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> +                               if (!acn->ddc_bus)
>                                         DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       connector->ddc = &acn->ddc_bus->adapter;
>                         }
>                         amdgpu_connector->dac_load_detect = true;
>                         drm_object_attach_property(&amdgpu_connector->base.base,
> @@ -1682,9 +1690,13 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_vga_funcs, connector_type);
>                         drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                               if (!amdgpu_connector->ddc_bus)
> +                               struct amdgpu_connector *acn = amdgpu_connector;
> +
> +                               acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> +                               if (!acn->ddc_bus)
>                                         DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       connector->ddc = &acn->ddc_bus->adapter;
>                         }
>                         amdgpu_connector->dac_load_detect = true;
>                         drm_object_attach_property(&amdgpu_connector->base.base,
> @@ -1707,9 +1719,13 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dvi_funcs, connector_type);
>                         drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                               if (!amdgpu_connector->ddc_bus)
> +                               struct amdgpu_connector *acn = amdgpu_connector;
> +
> +                               acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> +                               if (!acn->ddc_bus)
>                                         DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       connector->ddc = &acn->ddc_bus->adapter;
>                         }
>                         subpixel_order = SubPixelHorizontalRGB;
>                         drm_object_attach_property(&amdgpu_connector->base.base,
> @@ -1757,9 +1773,13 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dvi_funcs, connector_type);
>                         drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                               if (!amdgpu_connector->ddc_bus)
> +                               struct amdgpu_connector *acn = amdgpu_connector;
> +
> +                               acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> +                               if (!acn->ddc_bus)
>                                         DRM_ERROR("HDMI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       connector->ddc = &acn->ddc_bus->adapter;
>                         }
>                         drm_object_attach_property(&amdgpu_connector->base.base,
>                                                       adev->mode_info.coherent_mode_property,
> @@ -1799,11 +1819,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dp_funcs, connector_type);
>                         drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                               if (amdgpu_connector->ddc_bus)
> +                               struct amdgpu_connector *acn = amdgpu_connector;
> +
> +                               acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> +                               if (acn->ddc_bus) {
>                                         has_aux = true;
> -                               else
> +                                       connector->ddc = &acn->ddc_bus->adapter;
> +                               } else {
>                                         DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               }
>                         }
>                         subpixel_order = SubPixelHorizontalRGB;
>                         drm_object_attach_property(&amdgpu_connector->base.base,
> @@ -1841,11 +1865,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_edp_funcs, connector_type);
>                         drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                               if (amdgpu_connector->ddc_bus)
> +                               struct amdgpu_connector *acn = amdgpu_connector;
> +
> +                               acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> +                               if (acn->ddc_bus) {
>                                         has_aux = true;
> -                               else
> +                                       connector->ddc = &acn->ddc_bus->adapter;
> +                               } else {
>                                         DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               }
>                         }
>                         drm_object_attach_property(&amdgpu_connector->base.base,
>                                                       dev->mode_config.scaling_mode_property,
> @@ -1862,9 +1890,13 @@ amdgpu_connector_add(struct amdgpu_device *adev,
>                         drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_lvds_funcs, connector_type);
>                         drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_lvds_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> -                               if (!amdgpu_connector->ddc_bus)
> +                               struct amdgpu_connector *acn = amdgpu_connector;
> +
> +                               acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
> +                               if (!acn->ddc_bus)
>                                         DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       connector->ddc = &acn->ddc_bus->adapter;
>                         }
>                         drm_object_attach_property(&amdgpu_connector->base.base,
>                                                       dev->mode_config.scaling_mode_property,
> --
> 2.17.1
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
