Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB8446AF0
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 22:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vNgotKXClpEKDfKdp7nGxycY7KYTRrpUFIE4oVFF5k=; b=CiZWnJBlukRLhv
	SFbWQh1BP8xUpAhCM2uy1hIwiWArKBODxT/gEZgSV+2yvf9uc+OHy9/d+sVPkAzHCa3wHE6hHGshU
	HFkrJOYB299fT8YyctydkXP10lYxXGWMt4b+lTTv/YyR/0GG9YAVEg3v370vRwp8NCH3nd5lmsVkN
	so79IGcXbk/X2qoajgvTtYpW1rTTlZ+ILZoVP7FdQrMP9aMEWfQNenQDNj7gESuxe58QaGju73buS
	3hXzF1La50+5cTkVrO1bpPvMcdIqrNwVRWLYOCRMwS9/OjJIxhYO0xT17CEJM9n82eSdhn1PyKwFG
	VomMVUg4ZhRmE0ZqXAQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsyu-0006Af-13; Fri, 14 Jun 2019 20:39:28 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswH-0003qu-OD
 for linux-mediatek@lists.infradead.org; Fri, 14 Jun 2019 20:36:47 +0000
Received: by mail-ed1-x541.google.com with SMTP id z25so5220046edq.9
 for <linux-mediatek@lists.infradead.org>; Fri, 14 Jun 2019 13:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H/jSvXeNPdVe/RGvjR45d/TmnGLJ0w0V6fbPc6OnrNQ=;
 b=CXxL23WkHoPS8FvxmcYzc83marqI3uVGsFjc3IQ/ZMYiBKkKvOmR2Nl+lPtk6z1ujn
 8tfiJ7fhwbrLDxeAGHwXMMhhYY7GhooqzEjzjluTqoOvazX1bAPFNYtRgXl1Wwf17bS2
 aJeIwhEJOlRANhkIYk1AGF6HQt4T5IbsUM4Ss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H/jSvXeNPdVe/RGvjR45d/TmnGLJ0w0V6fbPc6OnrNQ=;
 b=qp4WrLqtFImrdasjlhkIenrKoMYRKG/qVPpD5hD7EgMQ1M2Ony51+axjFVF46L68xA
 nrQjJ3eCYzhj52/uyM3h9p9nZu13uQxdm4yOnLewKaQ9pIly7/CotImi6SmOjk1TqSMh
 fjDQ+FqrGvlRE0cifTk0L47n0rqvTa8h6pf74QJ/Fej/Mys9Il6aHudyz3KbAlXfEzfQ
 3mv/LG/xXWQp0k4jwmZyoqIVAMmnXJhZj77tNr/MXP9SBEQUdM03h4kq8bggrVLerUnJ
 z6n2kkZhA5ZL4S8GghfSABNeKTSzl+S7WfQVM64NUsun/Yo0qBcvKG5m9iLEtMvsSGSK
 z7vQ==
X-Gm-Message-State: APjAAAXCrtT5+Le/GqAHSeh3IS8saKldEe45GNHfN0qL3/HRlmY78Wn4
 4uhWHH06jxEQ9KpGl8OerGgAbA==
X-Google-Smtp-Source: APXvYqxXcEjEsf5PL/eYQ8qT2eKEKjLTNP3sB0Pc0ALolZp8KC6XEyq8xYSaNSLLcw3gUVflYk+w7w==
X-Received: by 2002:a50:c8c3:: with SMTP id k3mr30718637edh.189.1560544604548; 
 Fri, 14 Jun 2019 13:36:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:43 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 19/59] drm/mtk: Drop drm_gem_prime_export/import
Date: Fri, 14 Jun 2019 22:35:35 +0200
Message-Id: <20190614203615.12639-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133645_881070_E3484C25 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

They're the default.

Aside: Would be really nice to switch the others over to
drm_gem_object_funcs.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 1f8b8943b0c6..dd8dab562500 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -329,8 +329,6 @@ static struct drm_driver mtk_drm_driver = {
 
 	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
-	.gem_prime_export = drm_gem_prime_export,
-	.gem_prime_import = drm_gem_prime_import,
 	.gem_prime_get_sg_table = mtk_gem_prime_get_sg_table,
 	.gem_prime_import_sg_table = mtk_gem_prime_import_sg_table,
 	.gem_prime_mmap = mtk_drm_gem_mmap_buf,
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
