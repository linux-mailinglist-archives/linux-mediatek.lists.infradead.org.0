Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B89C73076
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 16:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=E2UTqK0M7iVf5o0TfnvZSzADIQWMLlFqgdQwfcsjjNs=; b=lhs
	P3qXsOADOSxKYAJsUCF0QL0JiK+S65wwcc8/AdNk+UzcsTfcSzmJTPaNmRfAnZW5mzF0glZlktQpj
	a6Vv2bXHrSZVNJw7TizsAl9J/RTeKgvPhKkKVSQxPIPwYChKRBgoG6btgIz3OtnTBluN6klwwTFqf
	gajK+/PIPWtm/lf3LOueWWJx9jTv/g42XdKl4Kj8kP8DuOyv7QihsB2Qg0S+SLZn6asHufSiNdqG2
	/880Tg3pmVJ0KW3Ac1vUuBMjw73+mMBFUK9qBHZjcq3bwPg6YFyy00/06uZbyy7SNTp8xbExvd6Us
	3HSErj4Q2IvtS+AEp7HsnDykHBbx/AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHok-0006t3-Dy; Wed, 24 Jul 2019 14:00:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHog-0006rZ-KI; Wed, 24 Jul 2019 14:00:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 792BB28A8D3
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 00/24] Associate ddc adapters with connectors
Date: Wed, 24 Jul 2019 15:59:22 +0200
Message-Id: <cover.1563960855.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070026_924684_22C5BD8A 
X-CRM114-Status: GOOD (  17.04  )
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Vincent Abriou <vincent.abriou@st.com>, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 intel-gfx@lists.freedesktop.org, Shashank Sharma <shashank.sharma@intel.com>,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

It is difficult for a user to know which of the i2c adapters is for which
drm connector. This series addresses this problem.

The idea is to have a symbolic link in connector's sysfs directory, e.g.:

ls -l /sys/class/drm/card0-HDMI-A-1/ddc
lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
	-> ../../../../soc/13880000.i2c/i2c-2

The user then knows that their card0-HDMI-A-1 uses i2c-2 and can e.g. run
ddcutil:

ddcutil -b 2 getvcp 0x10
VCP code 0x10 (Brightness): current value =    90, max value =   100

The first patch in the series adds struct i2c_adapter pointer to struct
drm_connector. If the field is used by a particular driver, then an
appropriate symbolic link is created by the generic code, which is also added
by this patch.

Patch 2 adds a new variant of drm_connector_init(), see the changelog
below.

Patches 3..24 are examples of how to convert a driver to this new scheme.

v1..v2:

- used fixed name "ddc" for the symbolic link in order to make it easy for
userspace to find the i2c adapter

v2..v3:

- converted as many drivers as possible.

v3..v4:

- added Reviewed-by for patch 01/23
- moved "ddc" field assignment to before drm_connector_init() is called
in msm, vc4, sti, mgag200, ast, amdgpu, radeon
- simplified the code in amdgpu and radeon at the expense of some lines
exceeding 80 characters as per Alex Deucher's suggestion
- added i915

v4..v5:

- changed "include <linux/i2c.h>" to "struct i2c_adapter;"
in drm_connector.h, consequently, added "include <linux/i2c.h>"
in drm_sysfs.c.
- added "drm_connector_init_with_ddc()" variant to ensure that the ddc
field of drm_connector is preserved accross its invocation
- accordingly changed invocations of drm_connector_init() in the
touched drivers to use the new variant

@Benjamin
@Shawn
@Thomas

There were your Acked-by or Reviewed-by for some patches in v4, but now
that the patches use the newly added function I'm not sure I can still
include those tags without you actually confirming. Can I? Or can you
please re-review? 

TODO: nouveau, gma500, omapdrm, panel-simple - if applicable.
Other drivers are either already converted or don't mention neither
"ddc" nor "i2c_adapter".

Andrzej Pietrasiewicz (24):
  drm: Include ddc adapter pointer in struct drm_connector
  drm: Add drm_connector_init() variant with ddc
  drm/exynos: Provide ddc symlink in connector's sysfs
  drm: rockchip: Provide ddc symlink in rk3066_hdmi sysfs directory
  drm: rockchip: Provide ddc symlink in inno_hdmi sysfs directory
  drm/msm/hdmi: Provide ddc symlink in hdmi connector sysfs directory
  drm/sun4i: hdmi: Provide ddc symlink in sun4i hdmi connector sysfs
    directory
  drm/mediatek: Provide ddc symlink in hdmi connector sysfs directory
  drm/tegra: Provide ddc symlink in output connector sysfs directory
  drm/imx: imx-ldb: Provide ddc symlink in connector's sysfs
  drm/imx: imx-tve: Provide ddc symlink in connector's sysfs
  drm/vc4: Provide ddc symlink in connector sysfs directory
  drm: zte: Provide ddc symlink in hdmi connector sysfs directory
  drm: zte: Provide ddc symlink in vga connector sysfs directory
  drm/tilcdc: Provide ddc symlink in connector sysfs directory
  drm: sti: Provide ddc symlink in hdmi connector sysfs directory
  drm/mgag200: Provide ddc symlink in connector sysfs directory
  drm/ast: Provide ddc symlink in connector sysfs directory
  drm/bridge: dumb-vga-dac: Provide ddc symlink in connector sysfs
    directory
  drm/bridge: dw-hdmi: Provide ddc symlink in connector sysfs directory
  drm/bridge: ti-tfp410: Provide ddc symlink in connector sysfs
    directory
  drm/amdgpu: Provide ddc symlink in connector sysfs directory
  drm/radeon: Provide ddc symlink in connector sysfs directory
  drm/i915: Provide ddc symlink in hdmi connector sysfs directory

 .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    |  95 ++++++++----
 drivers/gpu/drm/ast/ast_mode.c                |  13 +-
 drivers/gpu/drm/bridge/dumb-vga-dac.c         |  25 ++--
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  46 +++---
 drivers/gpu/drm/bridge/ti-tfp410.c            |  25 ++--
 drivers/gpu/drm/drm_connector.c               |  19 +++
 drivers/gpu/drm/drm_sysfs.c                   |   8 +
 drivers/gpu/drm/exynos/exynos_hdmi.c          |  17 ++-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  11 +-
 drivers/gpu/drm/imx/imx-ldb.c                 |  20 +--
 drivers/gpu/drm/imx/imx-tve.c                 |  14 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c           |  16 +-
 drivers/gpu/drm/mgag200/mgag200_mode.c        |  13 +-
 drivers/gpu/drm/msm/hdmi/hdmi_connector.c     |   6 +-
 drivers/gpu/drm/radeon/radeon_connectors.c    | 141 +++++++++++++-----
 drivers/gpu/drm/rockchip/inno_hdmi.c          |  23 +--
 drivers/gpu/drm/rockchip/rk3066_hdmi.c        |  24 +--
 drivers/gpu/drm/sti/sti_hdmi.c                |   6 +-
 drivers/gpu/drm/sun4i/sun4i_hdmi.h            |   1 -
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c        |  21 +--
 drivers/gpu/drm/tegra/drm.h                   |   1 -
 drivers/gpu/drm/tegra/hdmi.c                  |   7 +-
 drivers/gpu/drm/tegra/output.c                |  12 +-
 drivers/gpu/drm/tegra/sor.c                   |  13 +-
 drivers/gpu/drm/tilcdc/tilcdc_tfp410.c        |   6 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c                |  26 ++--
 drivers/gpu/drm/zte/zx_hdmi.c                 |  31 ++--
 drivers/gpu/drm/zte/zx_vga.c                  |  31 ++--
 include/drm/drm_connector.h                   |  16 ++
 29 files changed, 428 insertions(+), 259 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
