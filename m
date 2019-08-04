Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1F980AF1
	for <lists+linux-mediatek@lfdr.de>; Sun,  4 Aug 2019 14:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfLW3VZmWPvAIq1EvlXjXH2fb8dQwV2VccGyzxfedd4=; b=Ci9JmlvUaSeFEK
	jH476pugGO0ZM5igYZZs1d025EbArNRv5GxnTHfx6hKuqv2TowXiSrz/4enE63/I4B9nFDhyEOJM/
	qKihriM6jLzNuTHeboRGnYteA64EKwRg3zuX4o+W2h279NNhSOllubirRK0Y7FbNyGzRWmriUReGN
	Pzka73sx4PYxaJ1Dp1FRGF/AHVEQX5IdPajD6SJGzvBEABHo50GVSwKGuSNNXo2O/WBQAmP82mtL1
	wg3+duqfNIPkn67sx+fKsKxwHn/ijWb7WeEG0wP8cuaxBDaKSnXFyxVHiWWi3RLHL1jPNdgp/5i6E
	7F/FX1ikDRG/YP6YlHbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huFhs-0007nz-6v; Sun, 04 Aug 2019 12:33:48 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huFhn-0007nY-WE; Sun, 04 Aug 2019 12:33:45 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A9ECCE33;
 Sun,  4 Aug 2019 14:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1564922021;
 bh=PhqeiB7G3w6sI0xPAs7PBHcbxP5z51tFumhESNa/CwQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g7/0URE8CRICx4fmoeSC4Vw2tgOU0/Fj37AhdY22bJdHCSwLkz2NyRr8IHM3atpXw
 w0dmm9i6TvRgd0up9YdLL7UKcRjrWZZm0XmJXhFS9UIjcwYRRPH3PLEuu2dHwrEiE6
 GImxb2mz4ux5Czk9msLbMiAGrVINBHF79wMuZzCE=
Date: Sun, 4 Aug 2019 15:33:40 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v6 00/24] Associate ddc adapters with connectors
Message-ID: <20190804123340.GD4984@pendragon.ideasonboard.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1564161140.git.andrzej.p@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_053344_330225_3EED879C 
X-CRM114-Status: GOOD (  23.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Jyri Sarha <jsarha@ti.com>, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Andrzej,

On Fri, Jul 26, 2019 at 07:22:54PM +0200, Andrzej Pietrasiewicz wrote:
> It is difficult for a user to know which of the i2c adapters is for which
> drm connector. This series addresses this problem.
> 
> The idea is to have a symbolic link in connector's sysfs directory, e.g.:
> 
> ls -l /sys/class/drm/card0-HDMI-A-1/ddc
> lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
> 	-> ../../../../soc/13880000.i2c/i2c-2
> 
> The user then knows that their card0-HDMI-A-1 uses i2c-2 and can e.g. run
> ddcutil:
> 
> ddcutil -b 2 getvcp 0x10
> VCP code 0x10 (Brightness): current value =    90, max value =   100
> 
> The first patch in the series adds struct i2c_adapter pointer to struct
> drm_connector. If the field is used by a particular driver, then an
> appropriate symbolic link is created by the generic code, which is also added
> by this patch.
> 
> Patch 2 adds a new variant of drm_connector_init(), see the changelog
> below.
> 
> Patches 3..24 are examples of how to convert a driver to this new scheme.
> 
> v1..v2:
> 
> - used fixed name "ddc" for the symbolic link in order to make it easy for
> userspace to find the i2c adapter
> 
> v2..v3:
> 
> - converted as many drivers as possible.
> 
> v3..v4:
> 
> - added Reviewed-by for patch 01/23
> - moved "ddc" field assignment to before drm_connector_init() is called
> in msm, vc4, sti, mgag200, ast, amdgpu, radeon
> - simplified the code in amdgpu and radeon at the expense of some lines
> exceeding 80 characters as per Alex Deucher's suggestion
> - added i915
> 
> v4..v5:
> 
> - changed "include <linux/i2c.h>" to "struct i2c_adapter;"
> in drm_connector.h, consequently, added "include <linux/i2c.h>"
> in drm_sysfs.c.
> - added "drm_connector_init_with_ddc()" variant to ensure that the ddc
> field of drm_connector is preserved accross its invocation
> - accordingly changed invocations of drm_connector_init() in the
> touched drivers to use the new variant
> 
> v5..v6:
> 
> - improved subject line of patch 1
> - added kernel-doc for drm_connector_init_with_ddc()
> - improved kernel-doc for the ddc field of struct drm_connector
> - added Reviewed-by in patches 17 and 18
> - added Acked-by in patch 2
> - made the ownership of ddc i2c_adapter explicit in all patches,
> this made the affected patches much simpler
> 
> @Benjamin
> @Shawn
> 
> There were your Acked-by or Reviewed-by for some patches in v4, but now
> that the patches use the newly added function I'm not sure I can still
> include those tags without you actually confirming. Can I? Or can you
> please re-review? 
> 
> TODO: nouveau, gma500, omapdrm, panel-simple - if applicable.

omapdrm is moving to a new helper that creates connectors for a set of
bridges, so I'll handle it there. It may require adding a ddc field to
drm_bridge.

> Other drivers are either already converted or don't mention neither
> "ddc" nor "i2c_adapter".
> 
> Andrzej Pietrasiewicz (24):
>   drm: Add ddc link in sysfs created by drm_connector
>   drm: Add drm_connector_init() variant with ddc
>   drm/exynos: Provide ddc symlink in connector's sysfs
>   drm: rockchip: Provide ddc symlink in rk3066_hdmi sysfs directory
>   drm: rockchip: Provide ddc symlink in inno_hdmi sysfs directory
>   drm/msm/hdmi: Provide ddc symlink in hdmi connector sysfs directory
>   drm/sun4i: hdmi: Provide ddc symlink in sun4i hdmi connector sysfs
>     directory
>   drm/mediatek: Provide ddc symlink in hdmi connector sysfs directory
>   drm/tegra: Provide ddc symlink in output connector sysfs directory
>   drm/imx: imx-ldb: Provide ddc symlink in connector's sysfs
>   drm/imx: imx-tve: Provide ddc symlink in connector's sysfs
>   drm/vc4: Provide ddc symlink in connector sysfs directory
>   drm: zte: Provide ddc symlink in hdmi connector sysfs directory
>   drm: zte: Provide ddc symlink in vga connector sysfs directory
>   drm/tilcdc: Provide ddc symlink in connector sysfs directory
>   drm: sti: Provide ddc symlink in hdmi connector sysfs directory
>   drm/mgag200: Provide ddc symlink in connector sysfs directory
>   drm/ast: Provide ddc symlink in connector sysfs directory
>   drm/bridge: dumb-vga-dac: Provide ddc symlink in connector sysfs
>     directory
>   drm/bridge: dw-hdmi: Provide ddc symlink in connector sysfs directory
>   drm/bridge: ti-tfp410: Provide ddc symlink in connector sysfs
>     directory
>   drm/amdgpu: Provide ddc symlink in connector sysfs directory
>   drm/radeon: Provide ddc symlink in connector sysfs directory
>   drm/i915: Provide ddc symlink in hdmi connector sysfs directory
> 
>  .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    |  96 ++++++++----
>  drivers/gpu/drm/ast/ast_mode.c                |  13 +-
>  drivers/gpu/drm/bridge/dumb-vga-dac.c         |   6 +-
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |   6 +-
>  drivers/gpu/drm/bridge/ti-tfp410.c            |   6 +-
>  drivers/gpu/drm/drm_connector.c               |  35 +++++
>  drivers/gpu/drm/drm_sysfs.c                   |   8 +
>  drivers/gpu/drm/exynos/exynos_hdmi.c          |   6 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  12 +-
>  drivers/gpu/drm/imx/imx-ldb.c                 |   7 +-
>  drivers/gpu/drm/imx/imx-tve.c                 |   6 +-
>  drivers/gpu/drm/mediatek/mtk_hdmi.c           |   7 +-
>  drivers/gpu/drm/mgag200/mgag200_mode.c        |  13 +-
>  drivers/gpu/drm/msm/hdmi/hdmi_connector.c     |   6 +-
>  drivers/gpu/drm/radeon/radeon_connectors.c    | 142 +++++++++++++-----
>  drivers/gpu/drm/rockchip/inno_hdmi.c          |   6 +-
>  drivers/gpu/drm/rockchip/rk3066_hdmi.c        |   7 +-
>  drivers/gpu/drm/sti/sti_hdmi.c                |   6 +-
>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c        |   7 +-
>  drivers/gpu/drm/tegra/hdmi.c                  |   7 +-
>  drivers/gpu/drm/tegra/sor.c                   |   7 +-
>  drivers/gpu/drm/tilcdc/tilcdc_tfp410.c        |   6 +-
>  drivers/gpu/drm/vc4/vc4_hdmi.c                |  12 +-
>  drivers/gpu/drm/zte/zx_hdmi.c                 |   6 +-
>  drivers/gpu/drm/zte/zx_vga.c                  |   6 +-
>  include/drm/drm_connector.h                   |  18 +++
>  26 files changed, 336 insertions(+), 121 deletions(-)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
