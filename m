Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E6E1FA188
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 22:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d2K1D/lOSMGxUuRmnu/QYSoLy6m57iewJpD+SA7HkVU=; b=pVi8srHtZlQ2u9
	hCPZ2so/JO8OAIQWd8jCMFCpstM0BTkyE6ZUVZ3epYuEO9iK3xaCk0/b4Qdx2ysM5pEC95+jYK2sA
	4J5oRJh4bEdQDg3TKi5WDXutu4ZGK5eNkpGXJFA4CtYy+t8jrMoVJ2zBpqdrgzxXbwhpSG7QENA+z
	3bYA0VUb+eMNez1MDe0ypghaqKRFeOnvgPdbbrkPwtoHQx6QTwB+9uhulgogqCqG9f+VG5sjdRMJV
	2tOQQbO1kpcoTC3ONbh6w4m6TfQg6R7516xzuX++CyAqXDm6Ee6Clj4jCfzJayf6EA4qoH5HeFwwV
	ia1PGLrhVmzeKskJIs/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvlV-0007f6-K7; Mon, 15 Jun 2020 20:31:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvlI-0007V6-Ur; Mon, 15 Jun 2020 20:31:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 48A632A2CF6
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org,
	Collabora Kernel ML <kernel@collabora.com>
Subject: [RESEND PATCH v4 0/7] Convert mtk-dsi to drm_bridge API and get EDID
 for ps8640 bridge
Date: Mon, 15 Jun 2020 22:31:01 +0200
Message-Id: <20200615203108.786083-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_133121_125169_61DCEB53 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Thomas Zimmermann <tzimmermann@suse.de>,
 dri-devel@lists.freedesktop.org, Neil Armstrong <narmstrong@baylibre.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 linux-mediatek@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

(This resend is to fix some trivial conflicts due the merge window)

The PS8640 dsi-to-eDP bridge driver is using the panel bridge API,
however, not all the components in the chain have been ported to the
drm_bridge API. Actually, when a panel is attached the default panel's mode
is used, but in some cases we can't get display up if mode getting from
eDP control EDID is not chosen.

This series address that problem, first implements the .get_edid()
callback in the PS8640 driver (which is not used until the conversion is
done) and then, converts the Mediatek DSI driver to use the drm_bridge
API.

As far as I know, we're the only users of the mediatek dsi driver in
mainline, so should be safe to switch to the new chain of drm_bridge API
unconditionally.

The patches has been tested on a Acer Chromebook R13 (Elm) running a
Chrome OS userspace and checking that the valid EDID mode reported by
the bridge is selected.

Changes in v4:
- Remove double call to drm_encoder_init(). (Chun-Kuang Hu)
- Cleanup the encoder in mtk_dsi_unbind(). (Chun-Kuang Hu)

Changes in v3:
- Replace s/bridge/next bridge/ for comment. (Laurent Pinchart)
- Add the bridge.type. (Laurent Pinchart)
- Use next_bridge field to store the panel bridge. (Laurent Pinchart)
- Add the bridge.type field. (Laurent Pinchart)
- This patch requires https://lkml.org/lkml/2020/4/16/2080 to work
  properly.
- Move the bridge.type line to the patch that adds drm_bridge support. (Laurent Pinchart)

Changes in v2:
- Do not set connector_type for panel here. (Sam Ravnborg)

Enric Balletbo i Serra (7):
  drm/bridge: ps8640: Get the EDID from eDP control
  drm/bridge_connector: Set default status connected for eDP connectors
  drm/mediatek: mtk_dsi: Rename bridge to next_bridge
  drm/mediatek: mtk_dsi: Convert to bridge driver
  drm/mediatek: mtk_dsi: Use simple encoder
  drm/mediatek: mtk_dsi: Use the drm_panel_bridge API
  drm/mediatek: mtk_dsi: Create connector for bridges

 drivers/gpu/drm/bridge/parade-ps8640.c |  12 ++
 drivers/gpu/drm/drm_bridge_connector.c |   1 +
 drivers/gpu/drm/mediatek/mtk_dsi.c     | 269 ++++++++-----------------
 3 files changed, 97 insertions(+), 185 deletions(-)

-- 
2.27.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
