Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199FC63E24
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 00:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K4dhIWZnquqQuNBplf0/kg8c6uYYAY2htAwKoO7wJi0=; b=m3mteF0aZvqs6v
	s/anrguWdUrGozq8/LIWPwPSST4eG4iJsWXSRlseI83E+P1fQ+YyKGVhw70TELoAEzE+8QvJG9MlN
	HCCucEV82HLrKWUDxqW12ZTspXgOATE4qhxo3vW9dV51yzWZVxpLMFpggZmAYE8meQfeYLWOo31yP
	ALM7qnZ/g8kTejbK+AiAz/7xqxrkoR0rTYGTDnLJDMIwsty86Zh7cDaTbwWHXIl7AiPYzT2RDdKqd
	81+1qNX1LnxNHSkAiqnRXGqhgR8zBSQQJXqR/L0gpABdESaKjtZh/wbwUDwlztGLB4mo5Owhc5fhC
	4z6pxD3vIh6pdrecdl3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkz4j-00023t-IX; Tue, 09 Jul 2019 22:59:05 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkz4Q-0001o0-Fu
 for linux-mediatek@lists.infradead.org; Tue, 09 Jul 2019 22:58:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so186864pgj.7
 for <linux-mediatek@lists.infradead.org>; Tue, 09 Jul 2019 15:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VfBNRjMW96lNOTO1+wc8G+mqG3/RxD26VY8ohNb7l7s=;
 b=g+2aDXwaj0DzsFicoZrXvoungL+MWOPC0VtEH2gPXuj8zlNnwwgyIhkxF0bkqpoWcm
 8TboO6bKfQEBXG8g8wp2IMRGW/TvAviOydq287DyBpvxHMXEz6+WOc0/hqAIcJYCcTju
 BoRstaqm8JPuzjtT4y8KqxFrOGp53xRR93cJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VfBNRjMW96lNOTO1+wc8G+mqG3/RxD26VY8ohNb7l7s=;
 b=nKRd/r0St3UovGmQKcn1D7KyE660/xiaCFnRRw5M9gQRN5N4Hf2K0yQ/C//DHjzsuF
 vRUq7L50xNHKwIPaeUjyKA+5LULBMfa7wic7rmuPs3LPbZZ39gKItyGgfrgeOKvteKXe
 AFf6IOiHiiQnJTXff7dZ+opxXWdQj3iPhoC8LZ8xLM4kj6RIKHe45qzX6LPnnn/ELzqT
 5jxVAzqZPu9eDGMUek7gOEMJ8e8SeNnlssMSpJOzibtyytp5kAH3iTjYuRDKDaFlJiTS
 oBrNfHV/v5H5laB4s8LUZEBg+GTm951vZCbJ95WD81UV1DNSXV2q25EcoUSG3r2DQhZ5
 FpXQ==
X-Gm-Message-State: APjAAAUbwIZkdZUg3PHsKYAds0MBC+JAfCF+NPmRaCgWZYkotQLKLnu9
 Y/nzwMqGao2RsnNZD2ltyv9IFA==
X-Google-Smtp-Source: APXvYqzHCjdRgs8T2Gzw/2FP8RssoOjRLpdQrKxiGCNwSt8p03lTof0IAKIZqNN5ejjfFbu9SwHkpQ==
X-Received: by 2002:a17:90a:20c6:: with SMTP id
 f64mr2812506pjg.57.1562713125358; 
 Tue, 09 Jul 2019 15:58:45 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id 201sm152939pfz.24.2019.07.09.15.58.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 15:58:44 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/4] Panel rotation patches
Date: Tue,  9 Jul 2019 15:58:36 -0700
Message-Id: <20190709225840.144038-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_155846_553460_E7AF2D40 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

v6 changes:
-added enum declaration to drm_panel.h header

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
