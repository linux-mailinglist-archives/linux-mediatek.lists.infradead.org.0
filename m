Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629A47C975
	for <lists+linux-mediatek@lfdr.de>; Wed, 31 Jul 2019 18:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sqlwYdYMdTy88dr9YXz0WQmrdr6kbHP+YKUk7Utts8Y=; b=lsT/oXgxt6yommOHsW3GZWVa6f
	TjwJ6r4MdjaVUBzWrOcDwuqvylxz087S3Iyn3U2LKIjLujnTWO41Mi3G+YQjaZY1g1ZKRf69lOLGo
	YHQcG+7wWEOi99oUmFbG404tYxb2XxdH6zzqblCP5rckaXGY5zSYp3KGD32LO0G1VreBpljlNO3Qb
	MydGZDG38RAN0L2ttA8PIUeIAWHVLt0I2FoZH4O59JLEHYGzDSg6gkfh1wI/tGM1UkGPVyINCqWba
	X+CZ7ORrjPXMGB/HgKCtGDM6qRpyocEAJwhKoKRK9G3NpFDVnZ0BPDO5x3SkLWwuNEZq79wmgWvdz
	jhCpLWlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrwf-0008F4-Ba; Wed, 31 Jul 2019 16:59:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrw1-0007eq-A0; Wed, 31 Jul 2019 16:58:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id BB97F28BEFC
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 00/13] Next round of associating ddc adapters with connectors
Date: Wed, 31 Jul 2019 18:58:09 +0200
Message-Id: <cover.1564591626.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
References: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_095841_688255_270109AC 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Eric Anholt <eric@anholt.net>,
 Thierry Reding <thierry.reding@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, David Francis <David.Francis@amd.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 CK Hu <ck.hu@mediatek.com>, Harry Wentland <harry.wentland@amd.com>,
 Shashank Sharma <shashank.sharma@intel.com>, linux-tegra@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Leo Li <sunpeng.li@amd.com>,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 linux-mediatek@lists.infradead.org, Jyri Sarha <jsarha@ti.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, amd-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Now that some of the patches of the previous v6 series are applied,
I'm resending the remaining ones (patches 3-13) with Acked-by and
Reviewed-by added.

I'm also taking this opportunity to provide the symlink for another
connector in amdgpu (patch 1), and to fix a small but nasty bug
which can cause a use of an uninitialized variable (patch 2).

Andrzej Pietrasiewicz (13):
  drm/amdgpu: Provide ddc symlink in dm connector's sysfs directory
  drm/radeon: Eliminate possible use of an uninitialized variable
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

 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  5 +++--
 drivers/gpu/drm/exynos/exynos_hdmi.c              |  6 ++++--
 drivers/gpu/drm/i915/display/intel_hdmi.c         | 12 ++++++++----
 drivers/gpu/drm/mediatek/mtk_hdmi.c               |  7 ++++---
 drivers/gpu/drm/msm/hdmi/hdmi_connector.c         |  6 ++++--
 drivers/gpu/drm/radeon/radeon_connectors.c        |  2 +-
 drivers/gpu/drm/rockchip/inno_hdmi.c              |  6 ++++--
 drivers/gpu/drm/rockchip/rk3066_hdmi.c            |  7 ++++---
 drivers/gpu/drm/tegra/hdmi.c                      |  7 ++++---
 drivers/gpu/drm/tegra/sor.c                       |  7 ++++---
 drivers/gpu/drm/tilcdc/tilcdc_tfp410.c            |  6 ++++--
 drivers/gpu/drm/vc4/vc4_hdmi.c                    | 12 ++++++++----
 drivers/gpu/drm/zte/zx_hdmi.c                     |  6 ++++--
 drivers/gpu/drm/zte/zx_vga.c                      |  6 ++++--
 14 files changed, 60 insertions(+), 35 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
