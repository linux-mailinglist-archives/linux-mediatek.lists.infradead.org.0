Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166393C1DE
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 06:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vTt1OnMbnkwAC3fy1H44GGqJAu7nAeyP7rKLBdyqZPk=; b=SdgRV1mEYRqO2E
	DD9SygHPc9BXfHuZaB271T7poqTQxQ3cOmDdR4IBaJMx42FKQ2AgGZ1E6CRQ6TMGyJ79pA5DcgJ3m
	Uz03rtJwv7lpK61oFaKv55ujpF53kpw7/NhiHzs+GyZ5l5JouZDbXJEgvQgBfPs5j6uk+FgFSLYI/
	s+70YTkCJzY7uHcJhssfXwIAt80WAs9HRZ1BcBMfIsjpWfk4QMhnjZhmLwzRbcy6mXY/70wPGtC6m
	i0K8/UE5B07v5hJ3nQ2sDifqrNYmbVAc8MLptbxmYuP7kK+FZvbLukoabpSxx6cHc50rHhNSFyR97
	2Mi/GKGQXRHjsw1MyuEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haY0u-0005hn-8Q; Tue, 11 Jun 2019 04:04:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haY0q-0005g0-67
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 04:03:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id 81so6515216pfy.13
 for <linux-mediatek@lists.infradead.org>; Mon, 10 Jun 2019 21:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ep5PT5nJYpz/Bj3Iz+6dAuGsY6URZpg14AnULVjTGA0=;
 b=BPeWijeb5HdxjyxppQb40ApVn/nxLgHSyp0AL/ASYmRCiKlPLM1ddJO4q+5DVFlKJo
 M/6tW2VGGMmJt5p6uRnJYncIATIm7J5usdTrrpfDSsoiEwZOhO6s75rGbFLm+gF0M/Zu
 OXBZxzrusRa5BRO0jGY04Rtc4em07eeQ66PnQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ep5PT5nJYpz/Bj3Iz+6dAuGsY6URZpg14AnULVjTGA0=;
 b=NAnBwfyGzOxkrd1PXjXYDTwNzV862x4WkJTsIKMRbcyT7ZUTNQPWi4IrV3K3U+IlpT
 FSGw2FtGGmHQoW3S/abcmHEgLh/JimG+r57/w17BcHfqfBIHTmL6HjoS3RcZ0orR5qb4
 qSq9FAS0KzMa4Q2yMhwFU4ktpnE0Qk6BuRADdGt0a6NJkvFN6tATfczuZbsNIhlfnLww
 tChM/RuLIUjb4dKFvxOHxxsgy7ltmMrENQ+Ib+4SyeNyZ8Gy+mO9BagVKqqvmERwVhgv
 g31FOK6YSyXkcggh+rIklSJe7QDPxpNY/vDI/wzjyXvpDNM4+Wgol3CRhupF0aKtAKAd
 KhYw==
X-Gm-Message-State: APjAAAWZ5mSNXw8dL9vg4w8/qytWQZT0kdJ+XgDDwMUq1Ylh0QiiaOop
 fr0LWkhkgZBRRkkZJLSKPKgwAA==
X-Google-Smtp-Source: APXvYqwomU3EkmGbmD6lmNUwogikv7z13A3K3b0++X/UrjCKXAXsfZu9Zj3Dxfvxg4ZWCL337q4OtA==
X-Received: by 2002:a62:e0c2:: with SMTP id d63mr21262331pfm.60.1560225835215; 
 Mon, 10 Jun 2019 21:03:55 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 21:03:54 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] Panel rotation patches
Date: Mon, 10 Jun 2019 21:03:45 -0700
Message-Id: <20190611040350.90064-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_210356_259159_2EE340B4 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

This adds the plumbing for reading panel rotation from the devicetree
and sets up adding a panel property for the panel orientation on
Mediatek SoCs when a rotation is present.

v2 changes:
fixed build errors in i915

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
