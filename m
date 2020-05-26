Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 101AF1A2AD5
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Apr 2020 23:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YVl7XebpjDOL7+d2JpONtxTaSFNJIvUdfd54WnpOog4=; b=q+pNxcpadick0F
	6rXMk/eeygr8G9kSHN4RyJLu/GcIhkdbBd3jetkO0BVOAoiSaKXjQhkllmQF07u3NTPBZRTUwNQO4
	2PEgN2oqyQbbi4MNC8Ps85Iun/SvELG/Os5L9jeFSTPBrtGG7+3cC8NHGg7EhWmZ3mApYjzYVsS7r
	lqLYTYh7v2Ro8oD7tW7tHXwIhLLP0fMonnJWeeRF/AndIw39pxLOAOlWstXaMM09trEnKP29pYkW6
	R/DbDXPXvK9aaQUKxGdmZHdgcoTuQEp8vvNJldOFl8Fbw6byVwFjRyO/9e6yzJWmOC5rO1s9keJqU
	5KH9QWoSimZP8NVHFwiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMHz8-00080c-Lw; Wed, 08 Apr 2020 21:11:46 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMHyu-0007pW-9M; Wed, 08 Apr 2020 21:11:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 923C229746A
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] Convert mtk-dsi to drm_bridge API and get EDID for ps8640
 bridge
Date: Wed,  8 Apr 2020 23:11:13 +0200
Message-Id: <20200408211120.1407512-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_141132_453712_BC541BCA 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

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

[1] https://lore.kernel.org/lkml/20200210063523.133333-1-hsinyi@chromium.org/


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
 drivers/gpu/drm/mediatek/mtk_dsi.c     | 281 ++++++++-----------------
 3 files changed, 102 insertions(+), 192 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
