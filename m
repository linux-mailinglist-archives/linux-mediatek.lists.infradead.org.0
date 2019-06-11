Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BF73C1F6
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 06:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYVGxqI/pOH0MrttiLmKRjHl+61P9tOgoA9O+f2MWHE=; b=pU0gl9hsRm5pKX
	SZ3zbKBpETQHTRQ62k6Dul9XGs8+AQlEwQ3uYMVy2WMdwZrayuvj/mU5VSHqhK6Q3Irymd7pCacmS
	CJwMs5Gm5me28gjvRzBhSq2+X+7jnRNfqabXI/vaE9JtK4eGyyjUftCqfmS+sHhoH1X+X9WUunS9p
	xvvcf82S8kEUyslPWtRsjHCfJ6xpdwl9jv6+FZQZiq3sYPGRVm6kciaXrKlenuUPhPFgS1ypEyD7d
	A9ftddi/uQeeWX4yASzwNui0DfNMA9cJKPlITR757pFCsofOCVAsRlUExUcSCa99fnn70f0XSiOgV
	SgnTBJX66X6OaU2gz/MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haY2K-000820-Bi; Tue, 11 Jun 2019 04:05:28 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haY0u-0005iC-1W
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 04:04:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id n2so6144464pgp.11
 for <linux-mediatek@lists.infradead.org>; Mon, 10 Jun 2019 21:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7l9eJCs2PeowUasvujNxJ+tq7unRBQcTxAKWiz4JMIE=;
 b=LeWcjnR+t+om64koZ6/R7cE71bujGm69PJfYXHwBJFGIEBgWa3nQCcjJskR2SOqfDx
 8FfVoU3o/Q7/B8eVi0j0M5VdkxdYsRjGxHm1O2i+Ynte0IiaoGGgyiP7Srs/0VHfY8pZ
 GoyR+VQn83u0DFekQcp1z2sEX3Qkb7x/WEOsw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7l9eJCs2PeowUasvujNxJ+tq7unRBQcTxAKWiz4JMIE=;
 b=NIqGiBJ3pv+U0Dy5CWrGT0sH39kjwYPuiE8Sm6QaOBRTv9OLaOI/7MXjBFXpDhH3/N
 ajXi9akO7SyYMa5lmThRnU966Hp6g2jlditeUx90MbDi1T2d4+Euc2L98nvrAtYNjG7i
 m1I6aIHYwiptnoyz7NQMMMt7BNu5Hm5Na8+37evs3y4xhE+CVUJMpNu2OwJCqZaK6tDM
 g1m+SNthVM+nFCfaSktRNkWoe+NgzG9CYbyAuA1rS64ywFJX7lD67uj557B1zU6SoGYy
 2YIe9VJywmfCAIFFvEc3unRBKucpCs4Zdb+smmWukwvX8fy+wif4W2y1Ga+Rv6x31E2Q
 KXNQ==
X-Gm-Message-State: APjAAAVXp6+F0rv5KN0fkGwuNz+S5bmFwe47bvXdRB3hGf7SFMwqHtOR
 SStjK+OqOJueHlZfuTAMgCUBsA==
X-Google-Smtp-Source: APXvYqy0yKQ/QJLsix4wmZz0w/0FdG7kg5sb5r7IYIEYAuT2TlsU8kQWgPqPuvCd1Bz2CLqyUw+bZA==
X-Received: by 2002:a62:5883:: with SMTP id
 m125mr15522265pfb.248.1560225838902; 
 Mon, 10 Jun 2019 21:03:58 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 21:03:58 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] drm/panel: Add attach/detach callbacks
Date: Mon, 10 Jun 2019 21:03:48 -0700
Message-Id: <20190611040350.90064-4-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611040350.90064-1-dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_210400_140890_B7A696A1 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This adds the attach/detach callbacks. These are for setting up
internal state for the connector/panel pair that can't be done at
probe (since the connector doesn't exist) and which don't need to be
repeatedly done for every get/modes, prepare, or enable callback.
Values such as the panel orientation, and display size can be filled
in for the connector.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_panel.c | 14 ++++++++++++++
 include/drm/drm_panel.h     |  4 ++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 3b689ce4a51a..72f67678d9d5 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -104,12 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
  */
 int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
 {
+	int ret;
+
 	if (panel->connector)
 		return -EBUSY;
 
 	panel->connector = connector;
 	panel->drm = connector->dev;
 
+	if (panel->funcs->attach) {
+		ret = panel->funcs->attach(panel);
+		if (ret < 0) {
+			panel->connector = NULL;
+			panel->drm = NULL;
+			return ret;
+		}
+	}
+
 	return 0;
 }
 EXPORT_SYMBOL(drm_panel_attach);
@@ -128,6 +139,9 @@ EXPORT_SYMBOL(drm_panel_attach);
  */
 int drm_panel_detach(struct drm_panel *panel)
 {
+	if (panel->funcs->detach)
+		panel->funcs->detach(panel);
+
 	panel->connector = NULL;
 	panel->drm = NULL;
 
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index 13631b2efbaa..e136e3a3c996 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -37,6 +37,8 @@ struct display_timing;
  * struct drm_panel_funcs - perform operations on a given panel
  * @disable: disable panel (turn off back light, etc.)
  * @unprepare: turn off panel
+ * @detach: detach panel->connector (clear internal state, etc.)
+ * @attach: attach panel->connector (update internal state, etc.)
  * @prepare: turn on panel and perform set up
  * @enable: enable panel (turn on back light, etc.)
  * @get_modes: add modes to the connector that the panel is attached to and
@@ -70,6 +72,8 @@ struct display_timing;
 struct drm_panel_funcs {
 	int (*disable)(struct drm_panel *panel);
 	int (*unprepare)(struct drm_panel *panel);
+	void (*detach)(struct drm_panel *panel);
+	int (*attach)(struct drm_panel *panel);
 	int (*prepare)(struct drm_panel *panel);
 	int (*enable)(struct drm_panel *panel);
 	int (*get_modes)(struct drm_panel *panel);
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
