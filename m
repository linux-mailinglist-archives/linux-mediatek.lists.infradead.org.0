Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CBC5EF64
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jul 2019 01:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qlyKnxxLgjPIcLsksc5JpEAf5CireXYG9o/KsFiaaS8=; b=DEq0txx8gN2VsP
	NDHWxSH+oR4l4Wm/o9GV4r9ru3xUhrjOxE4Yl5hwqgeKEzLyf8ck71f6zWL8U4VJQgjdn8eMEppaK
	SLb2ojxAy9O5ZHHoY4LdgFsUNiaFUf/mSvctzB+VyUs3ck0ytG7HE9iG6TKmrS1xtWbUZ+R00Ou/Y
	sb6B5JEZH9jMcOSktRRksKJdiSnPNOYfdMquSPkFSqIFFWn4m8IU93XOVXiHrU1onu7pegv+UYOqi
	ulbbchFqDczihqrY2chvall+G2XZSqLw1ayaryzhmtcubEuMUxF41wH/JeI2srI9vX0rw/9h7N27B
	xCBfWnZJIcyW542tl3jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hioGq-0007Gf-Ji; Wed, 03 Jul 2019 23:02:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hioGV-00070Q-Q8
 for linux-mediatek@lists.infradead.org; Wed, 03 Jul 2019 23:02:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id c2so435767plz.13
 for <linux-mediatek@lists.infradead.org>; Wed, 03 Jul 2019 16:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1ZrZzCDWL8uR9GukOyNtVnJ0nmZVvvWXcGkMP18atyY=;
 b=mtOVyYmG2IzpmlsHOH/bFwJl21qcA8lVJRKpae+DMHwii9l1x+40yEervyi7qpqpr4
 hB3hlY3oPRMK55uHK1HYswgIkYyVHxU6REHY5Rgc5rlePiDU4gDvgc2YkR5l77Prg3Cc
 W/Ejps3fU5hazueodIieCVdr1ZyHbm6gx14qQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1ZrZzCDWL8uR9GukOyNtVnJ0nmZVvvWXcGkMP18atyY=;
 b=kD694PqbMZ3m8GEWLY2mSWMfZsT16rZOCCfd9mbQ5c5I+5MeZsimreAW3vUIdwSaWL
 OgUzufvN/qq2iUPbL8dZHOLXqnHLuqNWOh0F9S5HwP/QyuAvF4DgjhqPvZyoI7FhwcxR
 e6lf1XyJJyog1LQ1DTFvZSGcE/5rACR/qk1hsKpm1G6F5XJvlnBJdYLHPMJ8Yf0v3W+S
 BYNiZ83+8Mqm28F0B34XIFHTphZjX40ZYQ/Ekky4ZpHWYGWLumQLmp1OWbz/dKP+C6as
 D7CNVT1kyZIpj06LzSIQ16fTiw+dJfVJl17qgsCw3NeZ4jQoPAuKcNLJuOJDaUTGtglS
 ln2A==
X-Gm-Message-State: APjAAAWw5Gv+6uBfUID459BIXV+YSO53TsD6pGBCnV8F5pp0hUL0FpSU
 oKWgU+RQWJ7jBJkzsRwSCJDZIA==
X-Google-Smtp-Source: APXvYqwM3KsV4pYEtclP2v6OFHEPEkTQxv4xInN46kPm5Ul21is2Kyu5NnJ0VVIbZBrV9EgR7m7IMw==
X-Received: by 2002:a17:902:16f:: with SMTP id
 102mr43528588plb.94.1562194934905; 
 Wed, 03 Jul 2019 16:02:14 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t8sm4245171pfq.31.2019.07.03.16.02.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 16:02:13 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/4] Panel rotation patches
Date: Wed,  3 Jul 2019 16:02:06 -0700
Message-Id: <20190703230210.85342-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_160215_846241_F477DAE4 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, David Airlie <airlied@linux.ie>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This adds the plumbing for reading panel rotation from the devicetree
and sets up adding a panel property for the panel orientation on
Mediatek SoCs when a rotation is present.

v5 changes:
-rebased

v4 changes:
-fixed some changes made to the i915 driver
-clarified comments on of orientation helper

v3 changes:
-changed from attach/detach callbacks to directly setting fixed panel
 values in drm_panel_attach
-removed update to Documentation
-added separate function for quirked panel orientation property init

v2 changes:
fixed build errors in i915

Derek Basehore (4):
  drm/panel: Add helper for reading DT rotation
  drm/panel: set display info in panel attach
  drm/connector: Split out orientation quirk detection
  drm/mtk: add panel orientation property

 drivers/gpu/drm/drm_connector.c    | 45 ++++++++++++++-----
 drivers/gpu/drm/drm_panel.c        | 70 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_dp.c    |  4 +-
 drivers/gpu/drm/i915/vlv_dsi.c     |  5 +--
 drivers/gpu/drm/mediatek/mtk_dsi.c |  8 ++++
 include/drm/drm_connector.h        |  2 +
 include/drm/drm_panel.h            | 21 +++++++++
 7 files changed, 138 insertions(+), 17 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
