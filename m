Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C35172603
	for <lists+linux-mediatek@lfdr.de>; Thu, 27 Feb 2020 19:09:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n0jd+LNS96TqwxvY58sQT8CwnnACiu+pWVXzLjEor0Q=; b=FLpFqFJE0qHvM0
	atD4TMTxl/l5umcOwtts9Gv2ucGUtq4XvvfITK2+yvVSW/P5FyucphbDRqCr162A9EkhkY411yNP2
	/jJ5tSMDo4aSVtDCQuXG7VQa2DXb6G8hq9B35ZaYj8hdWrhv6hlPVOoPHlNvegLkkVXEexVqDs5ka
	+Wj0gx88UUvyspLIlZqbBiMvbLRAC8iCYJ/HW+s5lf27+ghKYVxZPWw6tF/oxsZkLvHihIeh8zrcs
	mfj/vboj2n4gdWbL+UCVjo95VAHWzquEX3tFf8V2X/a5ap6W2oDIXOCOyNRphSksagtt5ZE3VdFsM
	sNZv77X/7naHUDMyK2xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NbG-000699-WB; Thu, 27 Feb 2020 18:09:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Naw-0005s8-MA; Thu, 27 Feb 2020 18:09:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 255672963D9
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH v10 0/5] arm/arm64: mediatek: Fix mt8173 mmsys device probing
Date: Thu, 27 Feb 2020 19:08:53 +0100
Message-Id: <20200227180858.1514157-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_100910_988151_D299BA2F 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Dear all,

Those patches are intended to solve an old standing issue on some
Mediatek devices (mt8173, mt2701 and mt2712 are affected by this issue).

Up to now both drivers, clock and drm are probed with the same device tree
compatible. But only the first driver gets probed, which in effect breaks
graphics on those devices.

The MMSYS (Multimedia subsystem) in Mediatek SoCs has some registers to
control clock gates (which is used in the clk driver) and some registers
to set the routing and enable the differnet blocks of the display
and MDP (Media Data Path) subsystem. On this series the clk driver is
not a pure clock controller but a system controller that can provide
access to the shared registers between the different drivers that need
it (mediatek-drm and mediatek-mdp). Hence the MMSYS clk driver was moved
to drivers/soc/mediatek and is the entry point (parent) which will trigger
the probe of the corresponding mediatek-drm driver.

**IMPORTANT** This series only fixes the issue on mt8173 to make it
simple and as is the only platform I can test. Similar changes should be
applied for mt2701 and mt2712 to have display working.

For reference, here are the links to the old discussions:
* v9: https://patchwork.kernel.org/project/linux-clk/list/?series=247591
* v8: https://patchwork.kernel.org/project/linux-mediatek/list/?series=244891
* v7: https://patchwork.kernel.org/project/linux-mediatek/list/?series=241217
* v6: https://patchwork.kernel.org/project/linux-mediatek/list/?series=213219
* v5: https://patchwork.kernel.org/project/linux-mediatek/list/?series=44063
* v4:
  * https://patchwork.kernel.org/patch/10530871/
  * https://patchwork.kernel.org/patch/10530883/
  * https://patchwork.kernel.org/patch/10530885/
  * https://patchwork.kernel.org/patch/10530911/
  * https://patchwork.kernel.org/patch/10530913/
* v3:
  * https://patchwork.kernel.org/patch/10367857/
  * https://patchwork.kernel.org/patch/10367861/
  * https://patchwork.kernel.org/patch/10367877/
  * https://patchwork.kernel.org/patch/10367875/
  * https://patchwork.kernel.org/patch/10367885/
  * https://patchwork.kernel.org/patch/10367883/
  * https://patchwork.kernel.org/patch/10367889/
  * https://patchwork.kernel.org/patch/10367907/
  * https://patchwork.kernel.org/patch/10367909/
  * https://patchwork.kernel.org/patch/10367905/
* v2: No relevant discussion, see v3
* v1:
  * https://patchwork.kernel.org/patch/10016497/
  * https://patchwork.kernel.org/patch/10016499/
  * https://patchwork.kernel.org/patch/10016505/
  * https://patchwork.kernel.org/patch/10016507/

Best regards,
 Enric

Changes in v10:
- Update the binding documentation for the mmsys system controller.
- Renamed to be generic mtk-mmsys
- Add driver data support to be able to support diferent SoCs
- Introduced a new patch to move routing control into mmsys driver.
- Removed the patch to use regmap as is not needed anymore.
- Match driver data to get display routing.

Changes in v9:
- Move mmsys to drivers/soc/mediatek (CK)
- Do not move the display routing from the drm driver (CK)

Changes in v8:
- Be a builtin_platform_driver like other mediatek mmsys drivers.
- New patch introduced in this series.

Changes in v7:
- Free clk_data->clks as well
- Get rid of private data structure

Enric Balletbo i Serra (3):
  dt-bindings: mediatek: Update mmsys binding to reflect it is a system
    controller
  soc / drm: mediatek: Move routing control to mmsys device
  soc / drm: mediatek: Fix mediatek-drm device probing

Matthias Brugger (2):
  drm/mediatek: Omit warning on probe defers
  soc: mediatek: Move mt8173 MMSYS to platform driver

 .../bindings/arm/mediatek/mediatek,mmsys.txt  |   7 +-
 drivers/clk/mediatek/clk-mt8173.c             | 104 -----
 drivers/gpu/drm/mediatek/mtk_disp_color.c     |   5 +-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |   5 +-
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c      |   5 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c            |  12 +-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |  13 +-
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c        | 259 +----------
 drivers/gpu/drm/mediatek/mtk_drm_ddp.h        |   7 -
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |  44 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c            |   8 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c           |   4 +-
 drivers/soc/mediatek/Kconfig                  |   7 +
 drivers/soc/mediatek/Makefile                 |   1 +
 drivers/soc/mediatek/mtk-mmsys.c              | 435 ++++++++++++++++++
 include/linux/soc/mediatek/mtk-mmsys.h        |  19 +
 16 files changed, 529 insertions(+), 406 deletions(-)
 create mode 100644 drivers/soc/mediatek/mtk-mmsys.c
 create mode 100644 include/linux/soc/mediatek/mtk-mmsys.h

-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
