Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898649D66B
	for <lists+linux-mediatek@lfdr.de>; Mon, 26 Aug 2019 21:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GpWnXxD0t71WvIqxtxwbXDxajCHsF5KF4Mv5zLdtU04=; b=XWI
	8jWzd6OywPEDl9D9XXa9WICjFhlyETNch1ByF8I5ynA3PYWIS8y9at8spcQvwzQkT+NxrsN5jr3Hs
	mHnMyjwNShWVyFPYsfQhCQZENZs+cTto0OLAjTop9aNWH/jouljcrBBkxzFxvqqo8cyhsZreF6uTI
	dqmvU5KdUJ2BdTynsF8IPYTWoqKobqA4LYB8Hf/AyyORYB1AovYuYARMT2BTnnzuPo+i+nT0T/5S1
	JrhyXcXp2nBJ0Sgnn0lwuuJ5j4ZdMlMzUk14sn29AS8U4Fzi6SUX2bSEH8XpKW74pU4p9ut6J7VLd
	9+1k2a4kovw+iF2kuJF3U+8Tp0DNIvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KdB-0000aM-Jh; Mon, 26 Aug 2019 19:26:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Kd7-0000Zx-80; Mon, 26 Aug 2019 19:26:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 7240A283D3B
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH RESEND 00/14] Next round of associating ddc adapters with
 connectors
Date: Mon, 26 Aug 2019 21:25:42 +0200
Message-Id: <cover.1566845537.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_122617_555656_221C484C 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Emil Velikov <emil.velikov@collabora.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, David Francis <David.Francis@amd.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-msm@vger.kernel.org,
 CK Hu <ck.hu@mediatek.com>, Harry Wentland <harry.wentland@amd.com>,
 Shashank Sharma <shashank.sharma@intel.com>, linux-tegra@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 Leo Li <sunpeng.li@amd.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 freedreno@lists.freedesktop.org, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

I'm resending the patches which have somehow got lost: one patch
from Geert and 13 patches from me.

Geert's patch updates the error message to reflect the actually
called function's name.

Most of patches from me have their Acked-by and Reviewed-by tags
and deal with providing a ddc symlink in connector's sysfs directory.

Rebased onto drm-misc-next as of 26th August.

Andrzej Pietrasiewicz (13):
  drm/radeon: Provide ddc symlink in connector sysfs directory
  drm/amdgpu: Provide ddc symlink in dm connector's sysfs directory
  drm/exynos: Provide ddc symlink in connector's sysfs
  drm: rockchip: Provide ddc symlink in rk3066_hdmi sysfs directory
  drm: rockchip: Provide ddc symlink in inno_hdmi sysfs directory
  drm/msm/hdmi: Provide ddc symlink in hdmi connector sysfs directory
  drm/mediatek: Provide ddc symlink in hdmi connector sysfs directory
  drm/tegra: Provide ddc symlink in output connector sysfs directory
  drm/vc4: Provide ddc symlink in connector sysfs directory
  drm: zte: Provide ddc symlink in hdmi connector sysfs directory
  drm: zte: Provide ddc symlink in vga connector sysfs directory
  drm/tilcdc: Provide ddc symlink in connector sysfs directory
  drm/i915: Provide ddc symlink in hdmi connector sysfs directory

Geert Uytterhoeven (1):
  drm/bridge: ti-tfp410: Update drm_connector_init_with_ddc() error
    message

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |   5 +-
 drivers/gpu/drm/bridge/ti-tfp410.c            |   3 +-
 drivers/gpu/drm/exynos/exynos_hdmi.c          |   6 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  12 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c           |   7 +-
 drivers/gpu/drm/msm/hdmi/hdmi_connector.c     |   6 +-
 drivers/gpu/drm/radeon/radeon_connectors.c    | 143 +++++++++++++-----
 drivers/gpu/drm/rockchip/inno_hdmi.c          |   6 +-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c        |   7 +-
 drivers/gpu/drm/tegra/hdmi.c                  |   7 +-
 drivers/gpu/drm/tegra/sor.c                   |   7 +-
 drivers/gpu/drm/tilcdc/tilcdc_tfp410.c        |   6 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c                |  12 +-
 drivers/gpu/drm/zte/zx_hdmi.c                 |   6 +-
 drivers/gpu/drm/zte/zx_vga.c                  |   6 +-
 15 files changed, 168 insertions(+), 71 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
