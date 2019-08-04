Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FF980AF7
	for <lists+linux-mediatek@lfdr.de>; Sun,  4 Aug 2019 14:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrfsQ8e0BqxPLyI9RPQv//cAOt9qpcALIkwanGFT6k0=; b=PGtXQgg8vucr41
	xBsA1f1dqEHUsVocfMz2iMQ5rWFeTJrs/91pdYSIdVUMDCWmiWa08J3mx3n3slAfkqGkQK3qUjdmY
	WIPEw8Jwu6Plfn08r6GO5sqt+LJfPt7z9Gte43C3aaeriiI6wgGX5kiEo47J8+gaRqpqbu2eo4SWN
	+5GF6Vxlir/ZxJaDZE1R2vlNgfb4WM+L6gnIaczgRJN/oYql765NU/WiG4FhhTrFwYWIPRNQE1xA0
	NRs+d+yMYtCYLJzlWYsid7gmJF3x27mKo1W+PfoK7JL9rA7xVU1j/vSfH0QaIY1LftaHM4S+EAYFp
	8pykbfcVA2Q0Nh7aNwGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huFl6-0000i7-Pa; Sun, 04 Aug 2019 12:37:08 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huFl2-0000hg-Gw; Sun, 04 Aug 2019 12:37:06 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id BB828E4F;
 Sun,  4 Aug 2019 14:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1564922221;
 bh=pZc0CwAk5shGyPOtZlWKUSZa8//3i6HOGu1mak0v/kU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WVBrRFVEK/N9+4b72oYw58NxlSEMqFmPvi8zcD5DA85W++Wyx8SnNgKCgxhrLkpKn
 1sWW8b0Wa0zPIhgg96IKC50C2hobkYz4KDBuUpQ/zMUzrsbc1047t/UZvaOErETT1n
 B669ZCBWKM8PbhYk+FnpWN+cqt8p/DPDT6MV1WEU=
Date: Sun, 4 Aug 2019 15:36:59 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH v6 00/24] Associate ddc adapters with connectors
Message-ID: <20190804123659.GE4984@pendragon.ideasonboard.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <20190730150123.GD12424@arch-x1c3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730150123.GD12424@arch-x1c3>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_053704_863486_6085F85C 
X-CRM114-Status: GOOD (  30.14  )
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
Cc: Maxime Ripard <mripard@kernel.org>, "Y.C. Chen" <yc_chen@aspeedtech.com>,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Sandy Huang <hjc@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-kernel@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shashank Sharma <shashank.sharma@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 linux-mediatek@lists.infradead.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>, linux-arm-kernel@lists.infradead.org,
 Sean Paul <sean@poorly.run>, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Huang Rui <ray.huang@amd.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 04:01:23PM +0100, Emil Velikov wrote:
> On 2019/07/26, Andrzej Pietrasiewicz wrote:
> > It is difficult for a user to know which of the i2c adapters is for which
> > drm connector. This series addresses this problem.
> > 
> > The idea is to have a symbolic link in connector's sysfs directory, e.g.:
> > 
> > ls -l /sys/class/drm/card0-HDMI-A-1/ddc
> > lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
> > 	-> ../../../../soc/13880000.i2c/i2c-2
> > 
> > The user then knows that their card0-HDMI-A-1 uses i2c-2 and can e.g. run
> > ddcutil:
> > 
> > ddcutil -b 2 getvcp 0x10
> > VCP code 0x10 (Brightness): current value =    90, max value =   100
> > 
> > The first patch in the series adds struct i2c_adapter pointer to struct
> > drm_connector. If the field is used by a particular driver, then an
> > appropriate symbolic link is created by the generic code, which is also added
> > by this patch.
> > 
> > Patch 2 adds a new variant of drm_connector_init(), see the changelog
> > below.
> > 
> > Patches 3..24 are examples of how to convert a driver to this new scheme.
> > 
> > v1..v2:
> > 
> > - used fixed name "ddc" for the symbolic link in order to make it easy for
> > userspace to find the i2c adapter
> > 
> > v2..v3:
> > 
> > - converted as many drivers as possible.
> > 
> > v3..v4:
> > 
> > - added Reviewed-by for patch 01/23
> > - moved "ddc" field assignment to before drm_connector_init() is called
> > in msm, vc4, sti, mgag200, ast, amdgpu, radeon
> > - simplified the code in amdgpu and radeon at the expense of some lines
> > exceeding 80 characters as per Alex Deucher's suggestion
> > - added i915
> > 
> > v4..v5:
> > 
> > - changed "include <linux/i2c.h>" to "struct i2c_adapter;"
> > in drm_connector.h, consequently, added "include <linux/i2c.h>"
> > in drm_sysfs.c.
> > - added "drm_connector_init_with_ddc()" variant to ensure that the ddc
> > field of drm_connector is preserved accross its invocation
> > - accordingly changed invocations of drm_connector_init() in the
> > touched drivers to use the new variant
> > 
> > v5..v6:
> > 
> > - improved subject line of patch 1
> > - added kernel-doc for drm_connector_init_with_ddc()
> > - improved kernel-doc for the ddc field of struct drm_connector
> > - added Reviewed-by in patches 17 and 18
> > - added Acked-by in patch 2
> > - made the ownership of ddc i2c_adapter explicit in all patches,
> > this made the affected patches much simpler
> > 
> > @Benjamin
> > @Shawn
> > 
> > There were your Acked-by or Reviewed-by for some patches in v4, but now
> > that the patches use the newly added function I'm not sure I can still
> > include those tags without you actually confirming. Can I? Or can you
> > please re-review? 
> > 
> > TODO: nouveau, gma500, omapdrm, panel-simple - if applicable.
> > Other drivers are either already converted or don't mention neither
> > "ddc" nor "i2c_adapter".
> > 
> Another way to check is to look for drm_get_edid. Sadly that also
> highlights aux. dp/mst instances, which expose the DDC in another way.
> 
> For example comparing the diff stat wrt the following command shows
> git grep -wc drm_get_edid -- drivers/gpu/drm/

There's also drm_do_get_edid, which points to the adv7511 bridge as a
good candidate.

> > 
> >  .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    |  96 ++++++++----
> drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c:1
> - as pointed out by Alex - mix of aux dp/mst and normal
> 
> >  drivers/gpu/drm/ast/ast_mode.c                |  13 +-
> 
> drivers/gpu/drm/bridge/analogix-anx78xx.c:1
> drivers/gpu/drm/bridge/analogix/analogix_dp_core.c:1
> - not applicable: aux dp/mst
> 
> 
> >  drivers/gpu/drm/bridge/dumb-vga-dac.c         |   6 +-
> 
> drivers/gpu/drm/bridge/sii902x.c:1
> - normal instance(?) that should be updated at some point.
> 
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |   6 +-
> 
> drivers/gpu/drm/bridge/tc358767.c:1
> - not applicable: aux dp/mst
> 
> >  drivers/gpu/drm/bridge/ti-tfp410.c            |   6 +-
> 
> drivers/gpu/drm/drm_dp_mst_topology.c:3
> - not applicable: aux dp/mst
> 
> >  drivers/gpu/drm/drm_connector.c               |  35 +++++
> >  drivers/gpu/drm/drm_sysfs.c                   |   8 +
> 
> drivers/gpu/drm/drm_edid.c:7
> drivers/gpu/drm/drm_probe_helper.c:1
> - unrelated
> 
> >  drivers/gpu/drm/exynos/exynos_hdmi.c          |   6 +-
> 
> drivers/gpu/drm/gma500/cdv_intel_dp.c:3
> drivers/gpu/drm/gma500/cdv_intel_hdmi.c:2
> drivers/gpu/drm/gma500/oaktrail_hdmi.c:1
> drivers/gpu/drm/gma500/oaktrail_lvds.c:2
> drivers/gpu/drm/gma500/psb_intel_modes.c:1
> drivers/gpu/drm/gma500/psb_intel_sdvo.c:2
> - should be updated at some point (as you pointed out).
> 
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  12 +-
> drivers/gpu/drm/i915/intel_connector.c:1
> drivers/gpu/drm/i915/intel_crt.c:2
> - not too sure here
> 
> drivers/gpu/drm/i915/intel_dp.c:2
> - not applicable: aux dp/mst
> 
> drivers/gpu/drm/i915/intel_lvds.c:1
> drivers/gpu/drm/i915/intel_sdvo.c:2
> - not too sure here
> 
> 
> >  drivers/gpu/drm/imx/imx-ldb.c                 |   7 +-
> >  drivers/gpu/drm/imx/imx-tve.c                 |   6 +-
> >  drivers/gpu/drm/mediatek/mtk_hdmi.c           |   7 +-
> >  drivers/gpu/drm/mgag200/mgag200_mode.c        |  13 +-
> >  drivers/gpu/drm/msm/hdmi/hdmi_connector.c     |   6 +-
> drivers/gpu/drm/msm/edp/edp_ctrl.c:1
> - not applicable: aux dp/mst
> 
> drivers/gpu/drm/nouveau/nouveau_connector.c:2
> - should be updated at some point (as you pointed out).
> 
> 
> drivers/gpu/drm/panel/panel-simple.c:1
> - no applicable: panel driver
> 
> 
> >  drivers/gpu/drm/radeon/radeon_connectors.c    | 142 +++++++++++++-----
> >  drivers/gpu/drm/rockchip/inno_hdmi.c          |   6 +-
> >  drivers/gpu/drm/rockchip/rk3066_hdmi.c        |   7 +-
> >  drivers/gpu/drm/sti/sti_hdmi.c                |   6 +-
> >  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c        |   7 +-
> >  drivers/gpu/drm/tegra/hdmi.c                  |   7 +-
> >  drivers/gpu/drm/tegra/sor.c                   |   7 +-
> 
> drivers/gpu/drm/tegra/output.c:1
> - already handled in hdmi/sor
> 
> >  drivers/gpu/drm/tilcdc/tilcdc_tfp410.c        |   6 +-
> >  drivers/gpu/drm/vc4/vc4_hdmi.c                |  12 +-
> >  drivers/gpu/drm/zte/zx_hdmi.c                 |   6 +-
> >  drivers/gpu/drm/zte/zx_vga.c                  |   6 +-
> >  include/drm/drm_connector.h                   |  18 +++
> >  26 files changed, 336 insertions(+), 121 deletions(-)
> 
> In a Tl;Dr: I think this series covers 90%+ of the existing rather huge) driverset.
> 
> For the series:
> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
> 
> Fwiw I'm in favour of Jani's suggestion to fold the dcc into the usual
> helper drm_connector_init(). Although since we have 130+ instances it
> might be better left for another day.
> 
> HTH
> -Emil

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
