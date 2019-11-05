Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF099F07F7
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 Nov 2019 22:14:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5CakRKa3LIz9b5UNUTFwVGfvl9l0dsTJnh+ZDYSy6og=; b=cJK22xbtWKRC7P
	RpGOxuebcCZKReFdS9vQz9OWzs75W6gjcGzuknVzRfL5/b0HSuBng8lWCxAyzO9Q5dPea/EGDOxtq
	eTLqHvLMFPtIUPv3AtwsFILU6s67RaVdSDP6E2zHaQP0B7yS+Yu3lSPV7YsZ/oXGguuPRmZM5Bg/6
	weaynCYih+3X+e/Q6uCQOJw9S/WUdqC0LWYyX6uDTWkBtvfuT7OA62zrGf7an5a24teJRQr3GqebK
	qu+7dwnLErRuJuf9AmGyZ8Kj1sGDSDxfh/tZnhhoTwnQkcgXvmB7U5hSVgtqU2Em5ignjRynEUbrO
	n1JHGFGCyEFGtGML8/yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS69k-0006uG-Lm; Tue, 05 Nov 2019 21:14:28 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS661-0002fQ-To
 for linux-mediatek@lists.infradead.org; Tue, 05 Nov 2019 21:10:40 +0000
Received: by mail-yb1-xb44.google.com with SMTP id f6so5300299ybp.1
 for <linux-mediatek@lists.infradead.org>; Tue, 05 Nov 2019 13:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5GhjUCkz3ocQmrG6PmUyRxi5BVK7ftViRGTD2rrmkKI=;
 b=Uuid+vkuIMoEPu11BJV35oCzoqSefDW9ZuIPEB7sSMRiLblnbvGw2td5OwAl0HYFEs
 UQF0Rnc3aJGQnFA+a1sDH1IvqHqKfMbeIYvLNjeLoB5eNFEKXyiis9Altea1PfmHu5zm
 GPdFmGda9zTFKHcAxkl3at79EyN9ESPetMHCcnN1+X6WVw0tU0K3Az1E6S8p0FiRbVV9
 w1KOI8RL2KFZg/hZpLEe5JjxApP5DcS9nGCc5X8v4le9Gep+hxkTdws36dbptVGnOFfX
 7yfQXQ6miw0VHXsnRDzXgNcPuMcdwP9ZW1Dzld4Ok8GP6z0UTNzUzDnTh8G5fJWTGHX2
 zgHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5GhjUCkz3ocQmrG6PmUyRxi5BVK7ftViRGTD2rrmkKI=;
 b=gkL09Cn4a5ciGiA6b15TV6AHm+aKNQE3JfyLf9AI54aIZfZgNZZNgbdPmYMS7Fr9GY
 a0iMTiE5vWlVU9pq41UTuD3FZ3hn7YNt8fGi/bFytcfDHecoQitUdiXblkVfOTU7hiBg
 xHdMN4ew8Beb1Yz9b4bydYeZSSisJyKFFc7CmGNkAYaKZ/Db1lj2jZlvYac6Z6a2U7C7
 icrmrpBGUAqWN8RUavZY0Nv0O/Tw3Zm1m74PyeCKzDuqusbHK2xiuDF58Ii+OQsz4lP8
 Q96Rlwjd55DRSWC/WGzqbi7WlPRMdp3+/buPrnA8c1S42fj/MaL0i/0N0+9cveDgWi9k
 dDcw==
X-Gm-Message-State: APjAAAUr/x9QhhPfqOTXaDt2xBgsIdm30cFeLQBU3HK0J9uLephaliPJ
 ps/9C6SbmHHfn3eFTRF+8pj4yA==
X-Google-Smtp-Source: APXvYqwZpVTKw7wEDsr9syi4VlENMgrIrYl9+rQ/rlZeFQSHvVhD8rMyrCSti6ffViFWSs7d4O4Rog==
X-Received: by 2002:a5b:d0a:: with SMTP id y10mr6596220ybp.36.1572988235921;
 Tue, 05 Nov 2019 13:10:35 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j66sm1815216ywb.101.2019.11.05.13.10.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:10:35 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 0/7] drm/mediatek: Refactor plane init/check and support
 rotation
Date: Tue,  5 Nov 2019 16:10:17 -0500
Message-Id: <20191105211034.123937-1-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131038_029171_1C0E0569 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dcastagna@chromium.org, matthias.bgg@gmail.com, mcasas@chromium.org,
 Sean Paul <seanpaul@chromium.org>, p.zabel@pengutronix.de,
 frkoenig@chromium.org, ck.hu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, markyacoub@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Hello,
This is a follow-on to [1], which supports the original Y-flip. I've
added X-flip and 180 degree rotate. Additionally, the rotation property
is only exposed for ovl planes, not rdma planes since rdma doesn't
support it. In order to differentiate between the two types, I had to
do some plumbing in order to surface the supported rotations of a
component as well as allowing a component to implement plane checks.

I've tested this on a 4.19 kernel on mt8183. The set was then forward
ported to mainline and build tested. The forward port was relatively
collision free, but there were a few.

Sean

[1]- https://lists.freedesktop.org/archives/dri-devel/2019-November/242312.html


Sean Paul (7):
  drm/mediatek: Refactor plane init
  drm/mediatek: Add helper to get component for a plane
  drm/mediatek: Add plumbing for layer_check hook
  drm/mediatek: Plumb supported rotation values from components to plane
    init
  drm/mediatek: Support reflect-y plane rotation
  drm/mediatek: Support reflect-x plane rotation
  drm/mediatek: Support 180 degree rotation

 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  50 +++++++
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 145 ++++++++++++++------
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  22 +++
 drivers/gpu/drm/mediatek/mtk_drm_plane.c    |  18 ++-
 drivers/gpu/drm/mediatek/mtk_drm_plane.h    |   4 +-
 6 files changed, 199 insertions(+), 42 deletions(-)

-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
