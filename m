Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11BF5D871
	for <lists+linux-mediatek@lfdr.de>; Wed,  3 Jul 2019 01:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=te9nFjmmHxVBx2yCItQJ4gayWcQ896RFqpLbfM623KI=; b=jQQnKcaiFljL3d
	DW5kZNtPmDnaXpZz1YDJJr6StrpfUQsr8iG15JfmZ2G1XizbGsNALQjJRPT7Zu9c0CowJY+B24bYH
	QUBykBXsAKSGhOQN6GKe/pDAhN9id4GgCf2573jmi7d8BpJsrCAUGSvGEafNtkcayKiGZZ92DNlhp
	5+1iNymn3qTLse4KF9QgZvU9w60n0c18YpOkCCFGgtlfDbR8aIgE3YBdL0N+M62cYBuIdj6odN/ka
	VBOk0YnGKrmTxGmZVyZ9gAL/WAJTguKIE2+xhZNcg4AjL9hCjiG3lZRrF2SiE39NJkhaMJBZKUAdu
	J8DEAiYDyEsjCZuHZ0Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSR5-0001wl-Hi; Tue, 02 Jul 2019 23:43:43 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSQS-0001RL-TX
 for linux-mediatek@lists.infradead.org; Tue, 02 Jul 2019 23:43:06 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so165690pgv.10
 for <linux-mediatek@lists.infradead.org>; Tue, 02 Jul 2019 16:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BbKEAFwQNgdJMuzfiYPMlyXAsoNdsnEp4Uok88ypekU=;
 b=dzRWt1d0cH9OT8aIY2cfNcZP1PY8roOuwd7uTGeLkG0cZl8zRBQFiUDispqLSA/UuQ
 7qtogcL/XgZ4GiHoPPdi2jdl9O8tG/VgyjT9Dvw6mhdOaxNhTFFazxDQ55AxHlhv/wMv
 Zs28goiGB3utYWKBKTNH2WzG18bLyrlTHqcBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BbKEAFwQNgdJMuzfiYPMlyXAsoNdsnEp4Uok88ypekU=;
 b=LqTNSzqZov8aywU1F2ioWZPnUuG4yrEJRjhno6Fln5pFXygM3xmGj/nN25GNCe8Uzv
 YJN3bIAVqs0SGMgqd+Ougz7WDA8FSzUk5/Ga8x/pXgpGVG9TSfMY5aY00LdNHi8DWj36
 1P3EaXLErAv0lQkXwKNtndl0RwNlOs6I85Br3Luty3N7hsDlAGQ5G4Nrw8ayX/f7C5lM
 yYEs4Ez1CSUBL1zAPxvA2/8XgPoPDbPQcI9TeAaMfuHCYajOnMKIG9IhTkiK29rFdZfd
 op/NyxNdYndL4D7iBC0LN+Jfz5A7JOtaOI5GEe7kL731azs/QG1xeTNBMPqEOR8GkiHH
 4T+A==
X-Gm-Message-State: APjAAAU+MvsdwUnt3Ib3OphvbECsynb/T2IcJfpsk2k3JIyFVp+belXy
 s68l3xDtTRHc6DaqbT58B0H4AQ==
X-Google-Smtp-Source: APXvYqzlQqAaaA9TlBYcDIIcItk2Sbug9JeUuEIc7DDU9bCUWN1kFgrxSAljeRrXbuNEk+5pPKxVXA==
X-Received: by 2002:a17:90a:32c7:: with SMTP id
 l65mr8573547pjb.1.1562110982720; 
 Tue, 02 Jul 2019 16:43:02 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id c26sm167611pfr.172.2019.07.02.16.43.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 16:43:01 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] Panel rotation patches
Date: Tue,  2 Jul 2019 16:42:54 -0700
Message-Id: <20190702234258.136349-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_164304_946993_29464F9B 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
