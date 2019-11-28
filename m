Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B17410C295
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 Nov 2019 03:45:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4H8ae9EwN1ZY8iIWRBz/ucaXNa37CCuW3R5P9pWvSBs=; b=AZfdOltXoqY5P3
	HOPYhz0zrC5YujPVKCeNI0nSEl6AAWecG0yAH36TRPMU1/YEszjW6ThPfKVPcjA2+XfrufefYQWRv
	da1pN1gzJoaiCLSr8CRKXvsIhi9I8jPKLCfFyRRc5yAoxxQuVGTnk9//k7GfCMCwGzpNsYa53jxg9
	FUM9dH+GbNgnHUi5i1KVdxS//sJ2p8hTZYxumcZey3E+0+NEAnjVgFkwF0cM3k7XiiMafKE86bcBT
	+YnGdBm733qMKz3X1br7te/RA0PQOI6s2Agr5Io1pAuApf0NZFSnD90ud2PLO2rN7hLIW+jFJ3M/o
	9z5tNR5bRnTmxerCG6Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia9nu-0001dM-Vc; Thu, 28 Nov 2019 02:45:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia9nh-0001TK-OZ; Thu, 28 Nov 2019 02:45:03 +0000
X-UUID: d40fc0f01d1e4c99aecb1a8bb686bba4-20191127
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=0vCTXwJv2GLquxlzgk2gQwFIoM5oJce1MlX2/bKkJNM=; 
 b=iGsRTk0hlXIKkYRJHKjnT3BEismMYbiqiECs+a4wrWvhd6JsMftn4hdzeZirt/aTDnnffNgkza/cWiNLGPeyy7rxcsXosCYW0tMwn7q6cNJ17BGUs/86giuAEB8LfTJq/mjFXbomI9+II2zeubL7/eaQpGXjqkW7GsaMAQU9/CY=;
X-UUID: d40fc0f01d1e4c99aecb1a8bb686bba4-20191127
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1456694699; Wed, 27 Nov 2019 18:45:00 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 18:43:15 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 28 Nov 2019 10:42:13 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 28 Nov 2019 10:42:46 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v1 1/6] drm/mediatek: put "event" in critical section
Date: Thu, 28 Nov 2019 10:42:33 +0800
Message-ID: <20191128024238.9399-2-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
References: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: C415EC28D10D4D98CA7C3A32C93B685D07027E2639E1945941113FD2332F427D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_184501_808710_A82B8B0B 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: drinkcat@chromium.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The state->base.event variable would be access by thread context
in mtk_drm_crtc_atomic_begin() or by interrupt context in
mtk_drm_crtc_finish_page_flip(), so each part should be a critical
section. Fix it.

Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 29d0582e90e9..71f4089a8117 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -483,12 +483,15 @@ static void mtk_drm_crtc_atomic_begin(struct drm_crtc *crtc,
 	if (mtk_crtc->event && state->base.event)
 		DRM_ERROR("new event while there is still a pending event\n");
 
+	spin_lock_irq(&crtc->dev->event_lock);
 	if (state->base.event) {
 		state->base.event->pipe = drm_crtc_index(crtc);
 		WARN_ON(drm_crtc_vblank_get(crtc) != 0);
+		WARN_ON(mtk_crtc->event);
 		mtk_crtc->event = state->base.event;
 		state->base.event = NULL;
 	}
+	spin_unlock_irq(&crtc->dev->event_lock);
 }
 
 static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
