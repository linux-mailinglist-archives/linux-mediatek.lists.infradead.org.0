Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D24863F2E
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 04:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dxqkuXQ8txgfKqTN+UBH92jtGdq+jFaKfr1cpw2gG/o=; b=COQ3Mud059gcmf
	1CKtcfk/w3PI1HuMh+Eku5MmeeecfsIkE3H7CefDLGxjWFmqaqX2W9hLG6oo1pxjZjs2kzuZBSywH
	JPM7CWreLucimX2Qy4is5EWlWow7Sw+Z47KjVLp/D7Z8HOVegl0PWo46ySY7mHOf5MJlcdEH6qZ3C
	1l8Yc4cilRnsP2Nqcb46gBsWoiwbu4hOgM56+i5g322vsUF0sl8qOrxmPFt32cBVRnO2eoIjPeQSD
	yxOye7GrdeisHKkb1WB56/zvXJmvZ77Fdj897c0kM4EW2zY7t5EDpptsANIzZMcE1fMdx9wV94YDi
	NB0sSE47cZNi6HsmPmaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl2AO-00047v-OT; Wed, 10 Jul 2019 02:17:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl2AK-00046I-EO
 for linux-mediatek@lists.infradead.org; Wed, 10 Jul 2019 02:17:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id b3so377662plr.4
 for <linux-mediatek@lists.infradead.org>; Tue, 09 Jul 2019 19:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QL/iKcky+DBal5hSRMsXARSXXCVch6Zl/oKMaiM15pA=;
 b=LQXF4iztDK4WfGH3yFPHfMFpFoxRGzJ5SJsuvt8PUYKH5sMMGeff6st/EcfYxwcIzc
 GxhzEvZK940b7dcqpFHyB4koUyH87iv3Ful02WPZLOgp+RbNy5HxSi0QtGxb1TioliFj
 to6SHdkOhkaignW44UcMR8L2Lb/KPwHiPg1zI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QL/iKcky+DBal5hSRMsXARSXXCVch6Zl/oKMaiM15pA=;
 b=MhSJjrl02GHMD8Bka3+vcJfmXlAx2FMIdKDizLsKS8UqVaHh37fcRDQ44MUqQb5ofv
 Dm9Qnifu6+R2TbBAxmppODf4LX9k8ZBw30GtF0vKqTJwh64NiHWyUFuvxqTslzIWr98R
 ffvBxSyyQxWv3Lq6gJZpGG7Ba8iVWz1abOpfrN6HvlvOqRU9vw5xKgMeOPkdjJQB5oBR
 M8fhsCY7uv7p7PTNhKvkOccSYK1E7B2gF0/Dtw9T6BcyibeWkHHZRqcY0RCawRsRkx1x
 Zo1CfujioLgOfMgpHD5U96++4eq9kJRSiHTZp+c9Egw42ZqllmP7Z1wCheE5EAnM7vLb
 aJcg==
X-Gm-Message-State: APjAAAVrpfESKsFSEDLoSAsa7mE3QCoAfSnfbyYKhZo563Hb+sYb/dY2
 srGv3uEunKSR63hX4qcMaRAQRA==
X-Google-Smtp-Source: APXvYqyEKIBQy601LP2m94TC+l7EN0vjJQm/b7SyERDtRnwMRSIGypY9ZrywmAynnQCFbswC7bKmrw==
X-Received: by 2002:a17:902:788f:: with SMTP id
 q15mr36510488pll.236.1562725023757; 
 Tue, 09 Jul 2019 19:17:03 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id f17sm326296pgv.16.2019.07.09.19.17.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 19:17:03 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/4] Panel rotation patches
Date: Tue,  9 Jul 2019 19:16:55 -0700
Message-Id: <20190710021659.177950-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_191704_512492_422E203C 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

v7 changes:
-forgot to add static inline

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
