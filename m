Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90806F0F0A
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 Nov 2019 07:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BXiTi/LOhtbee5nP7FfrlqlXF7W29HGxeA1eEAvn4Kg=; b=adcxCssIQaC7z6
	xqFHXdJswDHOKnOIoYgMQlQu1UtVqBDi6HJV9oesNtPmYBlmZI/Mu45N0G6OSRhSroSiqbI3lw77u
	KLecWRxSnnGwdGUFN9OYjVIJVvjbx5L45Ju4X8V3kI8kM4bM+5GWfku70XEGrzWt+lWGr6QmeydAF
	poARNa2xakXBhUnUIxy999rMXISPV0eXB6adnZz5AQS9kUk5WrQSsMYU0ncEY9il1zROz/uADWQXN
	Z2VdOhltei8dMOrsV490Kviorl/VmLiqB9jsr/bZH070PBhHyBAVxxbQd6EPNYVSvbpV4Xg1nPUqx
	qLs/nI1DuruQzc4t60tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSEzd-000778-GJ; Wed, 06 Nov 2019 06:40:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSEza-00076A-IA
 for linux-mediatek@lists.infradead.org; Wed, 06 Nov 2019 06:40:35 +0000
X-UUID: 4c8b0eef25844e48b766bb06e8b468bd-20191105
X-UUID: 4c8b0eef25844e48b766bb06e8b468bd-20191105
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 872849496; Tue, 05 Nov 2019 22:40:24 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 5 Nov 2019 22:40:26 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 6 Nov 2019 14:40:22 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 6 Nov 2019 14:40:21 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg
 <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>, David Airlie
 <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>, CK Hu
 <ck.hu@mediatek.com>
Subject: [PATCH] drm/panel: seperate panel power control from panel
 prepare/unprepare
Date: Wed, 6 Nov 2019 14:40:05 +0800
Message-ID: <20191106064005.8016-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 224C4AAF48E6FE1BCE1C6862644246DA71F19843E559249984CDFA4CC65D93E32000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_224034_605740_A748950F 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Some dsi panels require the dsi lanes keeping low before panel power
on. So seperate the panel power control and the communication with panel.

And put the power control in drm_panel_prepare_power and
drm_panel_unprepare_power. Put the communication with panel in
drm_panel_prepare and drm_panel_unprepare.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/drm_panel.c | 38 +++++++++++++++++++++++++++++++++++++
 include/drm/drm_panel.h     | 17 +++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 6b0bf42039cf..e57f6385d2cc 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -131,6 +131,24 @@ void drm_panel_detach(struct drm_panel *panel)
 }
 EXPORT_SYMBOL(drm_panel_detach);
 
+/**
+ * drm_panel_prepare_power - power on a panel's power
+ * @panel: DRM panel
+ *
+ * Calling this function will enable power and deassert any reset signals to
+ * the panel.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int drm_panel_prepare_power(struct drm_panel *panel)
+{
+	if (panel && panel->funcs && panel->funcs->prepare_power)
+		return panel->funcs->prepare_power(panel);
+
+	return panel ? -ENOSYS : -EINVAL;
+}
+EXPORT_SYMBOL(drm_panel_prepare_power);
+
 /**
  * drm_panel_prepare - power on a panel
  * @panel: DRM panel
@@ -170,6 +188,26 @@ int drm_panel_unprepare(struct drm_panel *panel)
 }
 EXPORT_SYMBOL(drm_panel_unprepare);
 
+/**
+ * drm_panel_unprepare_power - power off a panel
+ * @panel: DRM panel
+ *
+ * Calling this function will completely power off a panel (assert the panel's
+ * reset, turn off power supplies, ...). After this function has completed, it
+ * is usually no longer possible to communicate with the panel until another
+ * call to drm_panel_prepare_power and drm_panel_prepare().
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int drm_panel_unprepare_power(struct drm_panel *panel)
+{
+	if (panel && panel->funcs && panel->funcs->unprepare_power)
+		return panel->funcs->unprepare_power(panel);
+
+	return panel ? -ENOSYS : -EINVAL;
+}
+EXPORT_SYMBOL(drm_panel_unprepare_power);
+
 /**
  * drm_panel_enable - enable a panel
  * @panel: DRM panel
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index 624bd15ecfab..0d8c4855405c 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -61,6 +61,13 @@ struct display_timing;
  * the panel. This is the job of the .unprepare() function.
  */
 struct drm_panel_funcs {
+	/**
+	 * @prepare_power:
+	 *
+	 * Turn on panel power.
+	 */
+	int (*prepare_power)(struct drm_panel *panel);
+
 	/**
 	 * @prepare:
 	 *
@@ -89,6 +96,13 @@ struct drm_panel_funcs {
 	 */
 	int (*unprepare)(struct drm_panel *panel);
 
+	/**
+	 * @unprepare_power:
+	 *
+	 * Turn off panel_power.
+	 */
+	int (*unprepare_power)(struct drm_panel *panel);
+
 	/**
 	 * @get_modes:
 	 *
@@ -155,6 +169,9 @@ void drm_panel_remove(struct drm_panel *panel);
 int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector);
 void drm_panel_detach(struct drm_panel *panel);
 
+int drm_panel_prepare_power(struct drm_panel *panel);
+int drm_panel_unprepare_power(struct drm_panel *panel);
+
 int drm_panel_prepare(struct drm_panel *panel);
 int drm_panel_unprepare(struct drm_panel *panel);
 
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
