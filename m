Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE372DA9B
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 May 2019 12:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rR6zme2oI4uYK+Ils2kIVw3fEcvjWClujiQs39JPvPM=; b=UViLfYrcyr0HcI
	OtsxbGmMaLi2rM8Lvr9wfODMX8crFCaA2rsZKSZH+cH1exmferH+iqSmt0yPSwRKHd1ZOGw9x1zWo
	1IZQJ8yo3OjvCU1xxgNN5Nboc9uoFYKG3dpJExxWQ6DkGbA5ZjtaFmid/WCBNRff23uybiz/nxmyK
	CF4e2NRsXoOIfiCZuGaTzeE0eEwXkM4UkIB57kARhNthdtkynX8Zdozxir+nWjHO35U+oxAcgArKX
	HDBJNMLouiyeHy1XpMgGzLSspmTkWoJ32HQISEQmT5sBgZAniBmcwy0hpeVh7uMhwwPePhjVU+8qy
	uIfyJukewdJI1YXEJU3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvnv-0000yb-U9; Wed, 29 May 2019 10:27:31 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvnH-0000Ir-Qr
 for linux-mediatek@lists.infradead.org; Wed, 29 May 2019 10:26:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id d126so1355941pfd.2
 for <linux-mediatek@lists.infradead.org>; Wed, 29 May 2019 03:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YcCSMOQNkzGaXhDk0okGAy0XqAbQi4G2u6aLWlPaPBw=;
 b=Cuhppf15fgs+ro5fQzou91thI1XLxU4KioJr8st6A+3rShMcYV8fSqZOp424wsNyS7
 Yjt8ZDWKI8t5jY8/w/olvN9NejpmeXI58p0vNnxcpidO9I9OYs9PLq5hcAy2JUfwloW/
 0z63BUjUnVKb52ngcrkoQKYOWPV2zpLSKFZpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YcCSMOQNkzGaXhDk0okGAy0XqAbQi4G2u6aLWlPaPBw=;
 b=pVM2buK9OnhoZdNQJS5E5NIR8GYD8oHl9+/Ut856OYgN7ByqxqRWM+gT4TGv/Gh3vK
 1IozQG5QwAKVlJKryT7v2ZN2s6WLDW0b8VPtZYP1JHR1s1TdQPlBCcW3PAQ2F+4+LkZT
 69C593e5sRHc64txPw512///rt1m563vSopc1rRG86ALrkfEnd5OxBz12DU3PFufVc34
 I7umiIK1SrMIgY3Dq+XufD+QZ5Uj/kjcz0n330D03MtfmJ/KDwK6QtV6j79GJp5JDjo2
 e5RbIR8XYCsUwhDDZKokQaP2G0A881+19ITUEANE37FGjVbU/09Asa1cbooXpkFfwEKQ
 okcQ==
X-Gm-Message-State: APjAAAWODw3CVpoOuNAGwKFd7sGlBf5DgYtuk3q2cPslX0PIvc2ilqPN
 rpmRS4iYKxBwZa/T9H1UhTvIUg==
X-Google-Smtp-Source: APXvYqyyaROmC37HXAcccgz51No+HwGj0nRGT99eAspxv1IL1mnTD2gRQ1iaLO7Rvi00xcw+ddOyEQ==
X-Received: by 2002:a17:90a:ac0d:: with SMTP id
 o13mr11037075pjq.139.1559125611164; 
 Wed, 29 May 2019 03:26:51 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id e12sm18992183pfl.122.2019.05.29.03.26.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 29 May 2019 03:26:50 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] drm: mediatek: clear num_pipes when unbind driver
Date: Wed, 29 May 2019 18:25:55 +0800
Message-Id: <20190529102555.251579-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190529102555.251579-1-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032652_115921_20BCE966 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

num_pipes is used for mutex created in mtk_drm_crtc_create(). If we
don't clear num_pipes count, when rebinding driver, the count will
be accumulated. From mtk_disp_mutex_get(), there can only be at most
10 mutex id. Clear this number so it starts from 0 in every rebind.

Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 8718d123ccaa..bbfe3a464aea 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -400,6 +400,7 @@ static void mtk_drm_unbind(struct device *dev)
 	drm_dev_unregister(private->drm);
 	mtk_drm_kms_deinit(private->drm);
 	drm_dev_put(private->drm);
+	private->num_pipes = 0;
 	private->drm = NULL;
 }
 
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
