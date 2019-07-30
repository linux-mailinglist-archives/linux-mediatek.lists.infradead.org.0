Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241637ABD5
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Jul 2019 17:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgNCd9LOSgYNQM7UYXsP7ieOzZh0Cr2QbQIJd2VTE9s=; b=Cn/YQz5zJyuxSz
	CNAZc2CTPTDQBK5QVCqZ42TVws+Ez76FyIgWOahj8Ebmsq9VTeyv56p+BCIK75naBMaSfv/bvElfX
	dVAvofWcOz+dmj0cR0EL+nNMYyS3IQUD0hi5Ce2lOa2sf1t2w1VsBHWLWwQgoHVHbc3dYTyCdrV9K
	+0kOR030dm4TZOYlRRyxGppK9PclZCI1VwdU9k017gUJqa6S/B/3Duwfhz82RzuJLa7F2BSSUEcSP
	znO0AJfpYMItzA5dgKxDSl94gKHSqb9arpEtCqvjmsc5+U9n8Y7c01KSMYLZTSP2xxr2qX5+tjFsU
	1vbo/UrrXZkxLBs4R5MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTdu-0007ME-Vs; Tue, 30 Jul 2019 15:02:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTdU-00077P-N0; Tue, 30 Jul 2019 15:01:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id p13so66128523wru.10;
 Tue, 30 Jul 2019 08:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BUCxY5wmqR5ryTNjhNIWHdJ7i3gNBOvH+JRjNUJQGa8=;
 b=SkH6XcqU/bxeDt2rOR4GX1fpuFQXcm+RQC863rXC9rGzpMxmOKEVFRlmOvAc7jLACg
 QOUFUrJPqcBPXG/WOLgpfqzhw3MLnUxHZUncDqumd/7Hyu++MKtZigS8Ivf2JJxbmBQH
 /lXuzAjfQTgG6IzIuwjrroXtmrntW89QjG68z2s5wVuefWfP2uzHYX9Q1YBLLcxDZ8LS
 x876suaiyxwRUTJTBLhsqQtn4iCAzbJgVbjcjveT3kXUKyrRhS9gBDD3vohc41Hye37u
 aOaDoO4SrLxmO73wRh2N9huGfdN4gACFPNXw9ugYN5wE+6PAxLUZOgw3BxkvO9xVj8C2
 +dMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BUCxY5wmqR5ryTNjhNIWHdJ7i3gNBOvH+JRjNUJQGa8=;
 b=oSptIOHdMhb598X/Fa3d1hl9dqjGK46on2IwAU+LrvEnC+S6emXGyYFcS080m3pqR7
 Qp3azPmfnwgN0EBc6IZ1+CnUwEv7hsfEcic0fIS+1V1aYqT2Xath5uauG908zKp/Rwbv
 OSGUuwv1Z2jKd+P0sCS1z7x1/+aycm2WwrIeBNNkzCKm1kwfGpEglYSczFW2Zfpn91VL
 knLvI4yOkyEq8ocJ17BiBfAzQKF4Lu0xwh2WnI6d0XTum2zjaqR7C9q1kuESOIoLkZ0G
 s+E4nTJUnM23j49XIpAmouyw+40UWd3YkHbxfxy6I1bwu6jIzT05L8cYaC/arDOMRnzE
 u3DQ==
X-Gm-Message-State: APjAAAU5Yi5f4hdFCK4yoPJHND0ItVdpWhd7yo9fJerZkPyTFDnuoG+E
 EMRvbSXORj/lkOeTxGr1/lM=
X-Google-Smtp-Source: APXvYqwdniRq6FlC94y6eD3mcoVNrtnUuOW1twW9ouGkHusLsB9ou6xcWqTT8SZS9DAhF1a4uzxINQ==
X-Received: by 2002:adf:f1d1:: with SMTP id z17mr57714333wro.190.1564498914397; 
 Tue, 30 Jul 2019 08:01:54 -0700 (PDT)
Received: from arch-x1c3 ([2a00:5f00:102:0:9665:9cff:feee:aa4d])
 by smtp.gmail.com with ESMTPSA id b2sm83558508wrp.72.2019.07.30.08.01.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 08:01:53 -0700 (PDT)
Date: Tue, 30 Jul 2019 16:01:23 +0100
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v6 00/24] Associate ddc adapters with connectors
Message-ID: <20190730150123.GD12424@arch-x1c3>
References: <cover.1564161140.git.andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1564161140.git.andrzej.p@collabora.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_080156_774478_751D7265 
X-CRM114-Status: GOOD (  26.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Sandy Huang <hjc@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
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
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>, linux-arm-kernel@lists.infradead.org,
 Sean Paul <sean@poorly.run>, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Todor Tomov <todor.tomov@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Huang Rui <ray.huang@amd.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2019/07/26, Andrzej Pietrasiewicz wrote:
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
> Other drivers are either already converted or don't mention neither
> "ddc" nor "i2c_adapter".
> 
Another way to check is to look for drm_get_edid. Sadly that also
highlights aux. dp/mst instances, which expose the DDC in another way.

For example comparing the diff stat wrt the following command shows
git grep -wc drm_get_edid -- drivers/gpu/drm/

> 
>  .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    |  96 ++++++++----
drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c:1
- as pointed out by Alex - mix of aux dp/mst and normal

>  drivers/gpu/drm/ast/ast_mode.c                |  13 +-

drivers/gpu/drm/bridge/analogix-anx78xx.c:1
drivers/gpu/drm/bridge/analogix/analogix_dp_core.c:1
- not applicable: aux dp/mst


>  drivers/gpu/drm/bridge/dumb-vga-dac.c         |   6 +-

drivers/gpu/drm/bridge/sii902x.c:1
- normal instance(?) that should be updated at some point.

>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |   6 +-

drivers/gpu/drm/bridge/tc358767.c:1
- not applicable: aux dp/mst

>  drivers/gpu/drm/bridge/ti-tfp410.c            |   6 +-

drivers/gpu/drm/drm_dp_mst_topology.c:3
- not applicable: aux dp/mst

>  drivers/gpu/drm/drm_connector.c               |  35 +++++
>  drivers/gpu/drm/drm_sysfs.c                   |   8 +

drivers/gpu/drm/drm_edid.c:7
drivers/gpu/drm/drm_probe_helper.c:1
- unrelated

>  drivers/gpu/drm/exynos/exynos_hdmi.c          |   6 +-

drivers/gpu/drm/gma500/cdv_intel_dp.c:3
drivers/gpu/drm/gma500/cdv_intel_hdmi.c:2
drivers/gpu/drm/gma500/oaktrail_hdmi.c:1
drivers/gpu/drm/gma500/oaktrail_lvds.c:2
drivers/gpu/drm/gma500/psb_intel_modes.c:1
drivers/gpu/drm/gma500/psb_intel_sdvo.c:2
- should be updated at some point (as you pointed out).

>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  12 +-
drivers/gpu/drm/i915/intel_connector.c:1
drivers/gpu/drm/i915/intel_crt.c:2
- not too sure here

drivers/gpu/drm/i915/intel_dp.c:2
- not applicable: aux dp/mst

drivers/gpu/drm/i915/intel_lvds.c:1
drivers/gpu/drm/i915/intel_sdvo.c:2
- not too sure here


>  drivers/gpu/drm/imx/imx-ldb.c                 |   7 +-
>  drivers/gpu/drm/imx/imx-tve.c                 |   6 +-
>  drivers/gpu/drm/mediatek/mtk_hdmi.c           |   7 +-
>  drivers/gpu/drm/mgag200/mgag200_mode.c        |  13 +-
>  drivers/gpu/drm/msm/hdmi/hdmi_connector.c     |   6 +-
drivers/gpu/drm/msm/edp/edp_ctrl.c:1
- not applicable: aux dp/mst

drivers/gpu/drm/nouveau/nouveau_connector.c:2
- should be updated at some point (as you pointed out).


drivers/gpu/drm/panel/panel-simple.c:1
- no applicable: panel driver


>  drivers/gpu/drm/radeon/radeon_connectors.c    | 142 +++++++++++++-----
>  drivers/gpu/drm/rockchip/inno_hdmi.c          |   6 +-
>  drivers/gpu/drm/rockchip/rk3066_hdmi.c        |   7 +-
>  drivers/gpu/drm/sti/sti_hdmi.c                |   6 +-
>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c        |   7 +-
>  drivers/gpu/drm/tegra/hdmi.c                  |   7 +-
>  drivers/gpu/drm/tegra/sor.c                   |   7 +-

drivers/gpu/drm/tegra/output.c:1
- already handled in hdmi/sor

>  drivers/gpu/drm/tilcdc/tilcdc_tfp410.c        |   6 +-
>  drivers/gpu/drm/vc4/vc4_hdmi.c                |  12 +-
>  drivers/gpu/drm/zte/zx_hdmi.c                 |   6 +-
>  drivers/gpu/drm/zte/zx_vga.c                  |   6 +-
>  include/drm/drm_connector.h                   |  18 +++
>  26 files changed, 336 insertions(+), 121 deletions(-)

In a Tl;Dr: I think this series covers 90%+ of the existing rather huge) driverset.

For the series:
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

Fwiw I'm in favour of Jani's suggestion to fold the dcc into the usual
helper drm_connector_init(). Although since we have 130+ instances it
might be better left for another day.

HTH
-Emil

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
