Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFDB15BA62
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Feb 2020 09:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pB2r79rGGkRq9SvWFHA/xrVj/SXHhftEtvvNHSbVowY=; b=sT95xKdogLyStT
	FJA+0cFdpemCuAOuT5/iVxr3qdjm3MR5oPI0SrpIk4SDyXJw6n5mnhV75+s+ym2RobU+gK7KLeba1
	YhQq9NzVUzZ0+j5xXQ1fcyQk+cMciX7323CGklXwGPSjNQLCX0Lf4XYp0Dt7tRresaYNeWfCc7f5E
	ENzmqQ0y0i/nV/ULAclZlPZ1rBky4Hv7hsVPeKrUS5DkA8ozBAXtm0AdBnH4K3EntZkJ8t79fiDBM
	doisLHhTeI9IyDHtT5R0HCj972Hb6rAEKDKlW0I08cJ5KfPi+pUGgBOfMYgjnNzZYdhPhKLxVOs3m
	3zPsZhds4ekmmsCKsCWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29Q1-0002Df-6M; Thu, 13 Feb 2020 08:00:17 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29Px-0002Cx-HR
 for linux-mediatek@lists.infradead.org; Thu, 13 Feb 2020 08:00:15 +0000
Received: by mail-pf1-x44a.google.com with SMTP id w14so3239360pfc.19
 for <linux-mediatek@lists.infradead.org>; Thu, 13 Feb 2020 00:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=tSlvrP4m66P1XACDCZDaP68t1HESopkE2ZYSJ/oW5Fc=;
 b=O0GgSTgCFWMe+CSNK993pV/PwzdGIXWDBR5X0/FBv+KHqZ7K9sI8OSrRkyU2JF0+bK
 a0oFchkMZ4tO5BLEk4bqnVywm6K4MRwLuT6lzun7Hb0FO7W5GmcvMELg9+zjOEAdeVkm
 bSVmoX3bkve//nZfusUDzKoQkpuWEWx2ND7zPEikUeU5mF44vV+/iie9fotkaJAoilcd
 SmTm7Pm+KaDA+TUmnOd/MFzybL1naAUfM8Ow8c9XSDEUk43pq3NJSkxA23l228OFxcqy
 yfEXmL17ZGL6KyDE/6ENhvek7IcRNXzWn+5PVtqvvkRRXWIdpkeQr63Cn+yXUn3o56i2
 joAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=tSlvrP4m66P1XACDCZDaP68t1HESopkE2ZYSJ/oW5Fc=;
 b=CJZf14Z2EHg/kZD4r1KyaoOoU3QXYZDHBJ/QEIjXnA5Tci8w3SydzF0eSJd73mlkNF
 fLGwIEVBXQiXCtFOJnTUWfAUvcKGJIPhndLezSU1PMXBdY3UBnKyOvrGToKqbIXsrf7T
 h3+SFfK7x0XPryAHTLj3OhxjtF+9+tiiQKjFD5HQmmWugy0V7kRVtRVUA6af07m+V19x
 bB+68fKhIrL2BQ5iNt4HqhAv8dg+OGV+flcaDw/NxDh2Sf5zZLOLD41mOxiDYmdos4Tp
 QIoNPQuUUtHXKLMJISVMwuT/1qzB5UIqwCixcKluKycoDrZ2r13dLSxLqXwNrjtYuT1p
 msIg==
X-Gm-Message-State: APjAAAU10Dugd7gsdWWZGE4hJGaPPGa4+zWLZwtrsj7Ml0BGfvobazw+
 QUzKf0Og+T9riYXiNBX/ZHNTKQh4XhPM
X-Google-Smtp-Source: APXvYqzDfbbpNkunl4GqakNBCLdfvlQrA9qA9iLtF3TS+2Mot3yuBl6sVFlx4f7nIe24WVH3YWORwiVOgN12
X-Received: by 2002:a63:4305:: with SMTP id q5mr17607821pga.64.1581580811962; 
 Thu, 13 Feb 2020 00:00:11 -0800 (PST)
Date: Thu, 13 Feb 2020 15:59:57 +0800
Message-Id: <20200213153226.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH] drm/mediatek: fix race condition for HDMI jack status
 reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_000013_608265_8018EE22 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alsa-devel@alsa-project.org, cychiang@google.com, tzungbi@google.com,
 dri-devel@lists.freedesktop.org, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

hdmi_conn_detect and mtk_hdmi_audio_hook_plugged_cb would be called
by different threads.

Imaging the following calling sequence:
           Thread A                            Thread B
--------------------------------------------------------------------
mtk_hdmi_audio_hook_plugged_cb()
mtk_cec_hpd_high() -> disconnected
                                     hdmi_conn_detect()
                                     mtk_cec_hpd_high() -> connected
                                     plugged_cb(connected)
plugged_cb(disconnected)

The latest disconnected is false reported.  Makes mtk_cec_hpd_high
and plugged_cb atomic to fix.

plugged_cb and codec_dev are also in danger of race condition.  Instead
of using mutex to protect them:
- Checks NULLs first.
- Uses WRITE_ONCE() to prevent store tearing (i.e. write to plugged_cb
  after codec_dev).
- Uses codec_dev as a signal to report HDMI jack status.

Fixes: 5d3c64477392 ("drm/mediatek: support HDMI jack status reporting")

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
Previous discussion: https://patchwork.kernel.org/patch/11367625/
Previous attempt: https://patchwork.kernel.org/patch/11378413/

 drivers/gpu/drm/mediatek/mtk_hdmi.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 03aeb73005ef..b1e5d0c538fa 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -12,6 +12,7 @@
 #include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
+#include <linux/mutex.h>
 #include <linux/of_platform.h>
 #include <linux/of.h>
 #include <linux/of_gpio.h>
@@ -171,6 +172,7 @@ struct mtk_hdmi {
 	bool enabled;
 	hdmi_codec_plugged_cb plugged_cb;
 	struct device *codec_dev;
+	struct mutex update_plugged_status_lock;
 };
 
 static inline struct mtk_hdmi *hdmi_ctx_from_bridge(struct drm_bridge *b)
@@ -1199,10 +1201,13 @@ static void mtk_hdmi_clk_disable_audio(struct mtk_hdmi *hdmi)
 static enum drm_connector_status
 mtk_hdmi_update_plugged_status(struct mtk_hdmi *hdmi)
 {
-	bool connected = mtk_cec_hpd_high(hdmi->cec_dev);
+	bool connected;
 
-	if (hdmi->plugged_cb && hdmi->codec_dev)
+	mutex_lock(&hdmi->update_plugged_status_lock);
+	connected = mtk_cec_hpd_high(hdmi->cec_dev);
+	if (hdmi->codec_dev)
 		hdmi->plugged_cb(hdmi->codec_dev, connected);
+	mutex_unlock(&hdmi->update_plugged_status_lock);
 
 	return connected ?
 	       connector_status_connected : connector_status_disconnected;
@@ -1669,8 +1674,12 @@ static int mtk_hdmi_audio_hook_plugged_cb(struct device *dev, void *data,
 {
 	struct mtk_hdmi *hdmi = data;
 
-	hdmi->plugged_cb = fn;
-	hdmi->codec_dev = codec_dev;
+	if (!fn || !codec_dev)
+		return -EINVAL;
+
+	/* Use WRITE_ONCE() to prevent store tearing. */
+	WRITE_ONCE(hdmi->plugged_cb, fn);
+	WRITE_ONCE(hdmi->codec_dev, codec_dev);
 	mtk_hdmi_update_plugged_status(hdmi);
 
 	return 0;
@@ -1729,6 +1738,7 @@ static int mtk_drm_hdmi_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	mutex_init(&hdmi->update_plugged_status_lock);
 	platform_set_drvdata(pdev, hdmi);
 
 	ret = mtk_hdmi_output_init(hdmi);
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
