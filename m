Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC553C066
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 02:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kBDs7nwxGnbfbDhpC/4S9A1zFfea3ts0D+NX/vr8q7Q=; b=IVN5h7qAzJMesU
	q8YbopUbBAkbvPuOUpsaPNfbuj/RtoNPknNuE6CS0hpwd6oLACGaa12V1qDxT0oifig5RXNt8I/dg
	1WjUey27R6HC15ruc/TWJhDNVOrk/g4WSY1VRCpFjXYXst4shxDykbkaeLoeAAYMuXgBPEgmhGjb0
	a2ZzZhXmft1oPrMHplM2wLQG9Vi+4F5+O/k8T03HjPQ8an4aF8rpyac79lAnmBT/2Lh250Y/vcMI8
	Kn7k52c1OAyUuc4REHuIqQrSwfkomNdOP4n/dsE/WIzm67g64Xgvq5zo7NB9/RdP2jVagpzM1W6cJ
	gP4DywJR2TdfHA6CD22A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUZP-0004Xk-9q; Tue, 11 Jun 2019 00:23:23 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUZ5-0004Ju-OH
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 00:23:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id 83so5883962pgg.8
 for <linux-mediatek@lists.infradead.org>; Mon, 10 Jun 2019 17:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ys/QIuTzESKgIhK+4lqN2GBOgNe/RQ4XjHnrFVNq/bg=;
 b=f5ipcdNBMgeYN6xIkspolGbToPlj9rnUy85L/384p3yAVGYdbKT3rIYX2R9DTVe5DZ
 BYJNhX2Lc4MpUKIIZ8Uvygx+l7dI/iqp1tjbx6cPL9JzfUDgJZKWqECoYuYfsfw24UwA
 BoOUkWOPjP/ynt3LEWf2YKuM3gT243RbvpPTQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ys/QIuTzESKgIhK+4lqN2GBOgNe/RQ4XjHnrFVNq/bg=;
 b=ZemALfOBIJtSNIPADfX81ZWruosIkPooo5ekYKpdArJoZJ5gsW6wcKtc+CANV7zUEv
 fwawDMKIObZAO0GVDZFWUYUoGpF6Q5cpPsyWts5X9gYZX+MLZL+uM/hJG2UlB1n3osM1
 SqfSrAO8iNSSfiJUmnp+F8UIUXaKRtIw2Ms4uS8mfKOO8kjubpO2B7BP50rCxFb/TPzF
 HKyVfmBRtz/isEML8REoAgQE/zGTb7ZdnM6h7PyPHGbXy/2CKJ7H0voyDzH2g3fXM+S7
 pAEq2a9mJDsrk7lwag2UhDyEdngQnngeAKIT9mhISb2IevA5V0yrY6Y+tqzziB7Txtdr
 wJtQ==
X-Gm-Message-State: APjAAAUDW0n6vCjXiid2TgquYKWtgvTdVEy0lfr0f0i/Uwd1kv24uatP
 O9j8D7CIHYXUu+U3LCmiQa1KeQ==
X-Google-Smtp-Source: APXvYqyFDNopqPX7XaEAu7EG9CwttGgKSVT073ogwDm3kj5G1I2Zurlp7yaWcrSslQANYBeJiel1uQ==
X-Received: by 2002:a17:90a:25c8:: with SMTP id
 k66mr2852849pje.129.1560212582590; 
 Mon, 10 Jun 2019 17:23:02 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t4sm540317pjq.19.2019.06.10.17.23.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 17:23:01 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] Panel rotation patches
Date: Mon, 10 Jun 2019 17:22:51 -0700
Message-Id: <20190611002256.186969-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_172303_789755_E3E57FE2 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Derek Basehore <dbasehore@chromium.org>, p.zabel@pengutronix.de,
 maxime.ripard@bootlin.com, sam@ravnborg.org, intel-gfx@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@linux.intel.com, airlied@linux.ie, thierry.reding@gmail.com,
 matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 rodrigo.vivi@intel.com, ck.hu@mediatek.com, linux-mediatek@lists.infradead.org,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This adds the plumbing for reading panel rotation from the devicetree
and sets up adding a panel property for the panel orientation on
Mediatek SoCs when a rotation is present.

Derek Basehore (5):
  drm/panel: Add helper for reading DT rotation
  dt-bindings: display/panel: Expand rotation documentation
  drm/panel: Add attach/detach callbacks
  drm/connector: Split out orientation quirk detection
  drm/mtk: add panel orientation property

 .../bindings/display/panel/panel.txt          | 32 +++++++++++
 drivers/gpu/drm/drm_connector.c               | 16 ++----
 drivers/gpu/drm/drm_panel.c                   | 55 +++++++++++++++++++
 drivers/gpu/drm/i915/vlv_dsi.c                | 13 +++--
 drivers/gpu/drm/mediatek/mtk_dsi.c            |  8 +++
 include/drm/drm_connector.h                   |  2 +-
 include/drm/drm_panel.h                       | 11 ++++
 7 files changed, 120 insertions(+), 17 deletions(-)

-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
