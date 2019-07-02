Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E62EC5D7AC
	for <lists+linux-mediatek@lfdr.de>; Tue,  2 Jul 2019 22:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cm40ZLuQro5MI8raTwmdflOgZp3FJzC/b+ZVe/Rs3Jc=; b=YS8ZX6o7m81ZRN
	CFuHDs4RgaZXze9IJp9uUVYXMs21OFNeqESYsL3Wiz+eSF7dnHsF+F6jE2yokUm7aTjbt5R7WaB/c
	PXOHO0zcU+FPNpl2SbBfP7g2V9bMAVe6POeny3E915cV7brmDGDoXsvevItuByT/FweIM203Ecr69
	LwtPKZJaWeVPS+K9kOZw0QHYpU0/H6r/kjTNeZ+IY9mb3CqeUV1VHQrQXMqiVBlkwwwvLtMwOTrdq
	Ga7aPanVzON5JpBc/uBzBXmAjJicVdtBnPjfZfwLwV55OXxZhV/vsLaZ9hEmSjxX5ppcR3ynzl1Lp
	t7slMtlHEUXs5/N+3ZNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiPpN-0007K6-IK; Tue, 02 Jul 2019 20:56:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiPpI-0007Iv-Bd; Tue, 02 Jul 2019 20:56:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id s3so7164wms.2;
 Tue, 02 Jul 2019 13:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7apIY6kDGFnuoJ9ubIfX+qcJQe/s6+Dz11ttp8LxM4s=;
 b=d9xvjIlGMlQPy8M9kynWnJKkrXwoJxEkz338kjUpBah29lD2tns9sCyvdUuGlOOiV2
 HA1TJfTCDYnGWe1njE/2VwSeQDQd99rHMWzdStrv/sTYMMUXgEhuy27wiajTqAJhHqIe
 1LGwi5qfaCIfA+qZwrY9F3ln0FjVdCT4/jUzxfM8efNH73KuqPAxIsFgRP9bpPlsDzci
 C9Llo4AfOBCe1x+CPOMoSBJ8KNHRMdmY7PffSiJnEZGFupto/1efsCUOWoZc5ZPwStxF
 xBE8+4SMbiPG8DSJ9yB8BFYAchS+jrLEVpKbyYHDUt6IHDFvsix7IlQz/DqNinl1HPJK
 Zzkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7apIY6kDGFnuoJ9ubIfX+qcJQe/s6+Dz11ttp8LxM4s=;
 b=IGJfv1e+1lPRwOGytwS6uGxSFL9G3Yd+ErmeTK3xsrT0zafxgWxeNd5uOAyW53gT4c
 tf086c5yHB4+SjpCtTYuDaQxN31EnIBYrlAxwn4tHQymLKkWXIudbbObTRzoOuOnJ18V
 qpWgaB1T5Rt0kF1q02uxFu+HxggONQ1d3j7Ljv9vCJ97rdLaeNi0bd2XIX9D1luHrdEM
 wDEOdFl1bI67yOvh5YW5QcC8gBbpFjB1yAGcY9Tgz6A1C54DhCGaadau7oi2GdAysi6r
 fR6+9mCzVp0tRBEgGESTm/0asoYJrZgC7Whk4d8qZRhpqtU3yqQZR4S/j2w9ZcjX/XYn
 qX/g==
X-Gm-Message-State: APjAAAUxZJwF6KPIMrxarfivVoB24jEzaIjSZ5Fmn6bD+VcI+8Fj+Y3d
 jvTpxglhrpRKtNK6rC/lwW+hRPRZr7s4Cz535xg=
X-Google-Smtp-Source: APXvYqzkQ2pl6k17yCfQLTYXSGvxNe+W/nXewr5/FwNT86ujpJn50HOvb8f6DrLB5AFhlFr0aYNAoFhRctxvV3eHJhs=
X-Received: by 2002:a1c:67c3:: with SMTP id b186mr4329031wmc.34.1562100990683; 
 Tue, 02 Jul 2019 13:56:30 -0700 (PDT)
MIME-Version: 1.0
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
 <dd1312ee84adef0161ebeaaf3c0448b1a1371919.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <dd1312ee84adef0161ebeaaf3c0448b1a1371919.1561735433.git.andrzej.p@collabora.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 2 Jul 2019 16:56:19 -0400
Message-ID: <CADnq5_NVVUkuiQrCtsbFLzGFGAdwAD7Rbx5SJFXGQvEB9kv6rA@mail.gmail.com>
Subject: Re: [PATCH v3 22/22] drm/radeon: Provide ddc symlink in connector
 sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_135632_409491_395E1119 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
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
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Vincent Abriou <vincent.abriou@st.com>,
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
>  drivers/gpu/drm/radeon/radeon_connectors.c | 82 +++++++++++++++++-----
>  1 file changed, 63 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/radeon/radeon_connectors.c b/drivers/gpu/drm/radeon/radeon_connectors.c
> index c60d1a44d22a..a876e51d275a 100644
> --- a/drivers/gpu/drm/radeon/radeon_connectors.c
> +++ b/drivers/gpu/drm/radeon/radeon_connectors.c
> @@ -1946,11 +1946,15 @@ radeon_add_atom_connector(struct drm_device *dev,
>                 radeon_dig_connector->igp_lane_info = igp_lane_info;
>                 radeon_connector->con_priv = radeon_dig_connector;
>                 if (i2c_bus->valid) {
> -                       radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                       if (radeon_connector->ddc_bus)
> +                       struct radeon_connector *rcn = radeon_connector;
> +
> +                       rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> +                       if (rcn->ddc_bus) {

Same comment as the amdgpu patch.  I think you can drop this hunk.  In
fact, you do in some of the other code paths below.  Same comment on
the other paths below.

Alex

>                                 has_aux = true;
> -                       else
> +                               connector->ddc = &rcn->ddc_bus->adapter;
> +                       } else {
>                                 DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       }
>                 }
>                 switch (connector_type) {
>                 case DRM_MODE_CONNECTOR_VGA:
> @@ -2045,9 +2049,13 @@ radeon_add_atom_connector(struct drm_device *dev,
>                         drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
>                         drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                               if (!radeon_connector->ddc_bus)
> +                               struct radeon_connector *rcn = radeon_connector;
> +
> +                               rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> +                               if (!rcn->ddc_bus)
>                                         DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       connector->ddc = &rcn->ddc_bus->adapter;
>                         }
>                         radeon_connector->dac_load_detect = true;
>                         drm_object_attach_property(&radeon_connector->base.base,
> @@ -2070,9 +2078,13 @@ radeon_add_atom_connector(struct drm_device *dev,
>                         drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
>                         drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                               if (!radeon_connector->ddc_bus)
> +                               struct radeon_connector *rcn = radeon_connector;
> +
> +                               rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> +                               if (!rcn->ddc_bus)
>                                         DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       connector->ddc = &rcn->ddc_bus->adapter;
>                         }
>                         radeon_connector->dac_load_detect = true;
>                         drm_object_attach_property(&radeon_connector->base.base,
> @@ -2101,9 +2113,13 @@ radeon_add_atom_connector(struct drm_device *dev,
>                         drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
>                         drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                               if (!radeon_connector->ddc_bus)
> +                               struct radeon_connector *rcn = radeon_connector;
> +
> +                               rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> +                               if (!rcn->ddc_bus)
>                                         DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       connector->ddc = &rcn->ddc_bus->adapter;
>                         }
>                         subpixel_order = SubPixelHorizontalRGB;
>                         drm_object_attach_property(&radeon_connector->base.base,
> @@ -2158,9 +2174,13 @@ radeon_add_atom_connector(struct drm_device *dev,
>                         drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
>                         drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                               if (!radeon_connector->ddc_bus)
> +                               struct radeon_connector *rcn = radeon_connector;
> +
> +                               rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> +                               if (!rcn->ddc_bus)
>                                         DRM_ERROR("HDMI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       connector->ddc = &rcn->ddc_bus->adapter;
>                         }
>                         drm_object_attach_property(&radeon_connector->base.base,
>                                                       rdev->mode_info.coherent_mode_property,
> @@ -2208,11 +2228,15 @@ radeon_add_atom_connector(struct drm_device *dev,
>                         drm_connector_init(dev, &radeon_connector->base, &radeon_dp_connector_funcs, connector_type);
>                         drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                               if (radeon_connector->ddc_bus)
> +                               struct radeon_connector *rcn = radeon_connector;
> +
> +                               rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> +                               if (rcn->ddc_bus) {
>                                         has_aux = true;
> -                               else
> +                                       connector->ddc = &rcn->ddc_bus->adapter;
> +                               } else {
>                                         DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               }
>                         }
>                         subpixel_order = SubPixelHorizontalRGB;
>                         drm_object_attach_property(&radeon_connector->base.base,
> @@ -2258,11 +2282,15 @@ radeon_add_atom_connector(struct drm_device *dev,
>                         drm_connector_init(dev, &radeon_connector->base, &radeon_edp_connector_funcs, connector_type);
>                         drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                               if (radeon_connector->ddc_bus)
> +                               struct radeon_connector *rcn = radeon_connector;
> +
> +                               rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> +                               if (rcn->ddc_bus) {
>                                         has_aux = true;
> -                               else
> +                                       connector->ddc = &rcn->ddc_bus->adapter;
> +                               } else {
>                                         DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               }
>                         }
>                         drm_object_attach_property(&radeon_connector->base.base,
>                                                       dev->mode_config.scaling_mode_property,
> @@ -2297,9 +2325,13 @@ radeon_add_atom_connector(struct drm_device *dev,
>                         drm_connector_init(dev, &radeon_connector->base, &radeon_lvds_connector_funcs, connector_type);
>                         drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
>                         if (i2c_bus->valid) {
> -                               radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> -                               if (!radeon_connector->ddc_bus)
> +                               struct radeon_connector *rcn = radeon_connector;
> +
> +                               rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
> +                               if (!rcn->ddc_bus)
>                                         DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                               else
> +                                       connector->ddc = &rcn->ddc_bus->adapter;
>                         }
>                         drm_object_attach_property(&radeon_connector->base.base,
>                                                       dev->mode_config.scaling_mode_property,
> @@ -2384,6 +2416,9 @@ radeon_add_legacy_connector(struct drm_device *dev,
>                         radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                         if (!radeon_connector->ddc_bus)
>                                 DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       else
> +                               connector->ddc =
> +                                       &radeon_connector->ddc_bus->adapter;
>                 }
>                 radeon_connector->dac_load_detect = true;
>                 drm_object_attach_property(&radeon_connector->base.base,
> @@ -2401,6 +2436,9 @@ radeon_add_legacy_connector(struct drm_device *dev,
>                         radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                         if (!radeon_connector->ddc_bus)
>                                 DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       else
> +                               connector->ddc =
> +                                       &radeon_connector->ddc_bus->adapter;
>                 }
>                 radeon_connector->dac_load_detect = true;
>                 drm_object_attach_property(&radeon_connector->base.base,
> @@ -2419,6 +2457,9 @@ radeon_add_legacy_connector(struct drm_device *dev,
>                         radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                         if (!radeon_connector->ddc_bus)
>                                 DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       else
> +                               connector->ddc =
> +                                       &radeon_connector->ddc_bus->adapter;
>                 }
>                 if (connector_type == DRM_MODE_CONNECTOR_DVII) {
>                         radeon_connector->dac_load_detect = true;
> @@ -2464,6 +2505,9 @@ radeon_add_legacy_connector(struct drm_device *dev,
>                         radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
>                         if (!radeon_connector->ddc_bus)
>                                 DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
> +                       else
> +                               connector->ddc =
> +                                       &radeon_connector->ddc_bus->adapter;
>                 }
>                 drm_object_attach_property(&radeon_connector->base.base,
>                                               dev->mode_config.scaling_mode_property,
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
