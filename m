Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07A963F3D
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 04:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bas+h8VL9+lab4WfIhKMU1D9PIYoTRTjcToRu9eaiBg=; b=hjmU0zTDehn4AD
	h5ZP8xc8VQefgFRSZSO7upgFYPNCQ4Dz47IJxOE7zL5cjtxmBbwH8q2RtLZYdku4KHzyvCQfFdsTV
	6cTZnmIS4g3Tg83iffs9MewUj7gw5KapDHViqSQgFcSev4GQ/F0MIYnkJ2ZkDER4IywuFUiRwv+Pk
	L6/02EkOkdYDpDdmeyROeKjrceWfBy2N8Po5/0/BbToAEcpdVGMh+Smc+ZcoaNBSgQqVBkzXLWKEv
	srGoSsXfp/osn37OkSfSSB+1nEtZaqpsdIdVTGsS2geLtpBb3RFV98Kp8r5J1LEJLYA29x4qXvZLO
	Kmy82vVE5ExuAgclUcGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl2Bo-0005NY-7W; Wed, 10 Jul 2019 02:18:36 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl2AP-00049F-7I
 for linux-mediatek@lists.infradead.org; Wed, 10 Jul 2019 02:17:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id y8so358038plr.12
 for <linux-mediatek@lists.infradead.org>; Tue, 09 Jul 2019 19:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vxC6cpJeD3A10tWWsNE37FjIALjzLREnlwwa6KDygFo=;
 b=cOH8q2NXyovDSMUi7Xd+oHt9KadYcDoTUvRMkD/0Uf41BGCgaVcf7ZDlhSjXFXm6Lu
 ESTtRPTKtFghn8CC6QIqS7fRiHEAAJ+mCfoZNe3O8zcvXAT3weo6V4fimDAF1Z3n145Z
 2ghQAYXOmiz9HHA0Iybxqrs5iV+2A4uq9ZIHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vxC6cpJeD3A10tWWsNE37FjIALjzLREnlwwa6KDygFo=;
 b=JXr3c8vUvk1EdioxxY5eRgO2ZpqKZHxw5D1whT+z2Nnrino/8bSdv0lYTl4KPsdhp5
 uuql64RKFBzrzfX3WCsJHKSI/os8kK5VMuZ/7KBPgijMdaWeY8J5xFmZdd15PFU5wg9E
 C1zeajywrre6RasHdzTCOaWeuJqKFEQpKJyPhgokewJrMJHGI9jOp2DdNjmbtRnPvn+E
 KhG3tfq7Kdi42Li2Xp4oNBhs2czqc3cpZUQgA2RHxFTqjRjczaqGZ0BwbjY3tqCeohQ4
 8dNSr4GFC/tfNXLnRnvaA04zPfmAvtFtb1EWbLYemrMKCSbE5xGHqY0GTKgtyYg2nOXh
 D/Aw==
X-Gm-Message-State: APjAAAUXLeLiZ3Mbk3qgyTPnGEXJfnuuTYB6Er7RhERCx1c3Sg3LdI2p
 DCazOvX1f7A7iclFp9O0IXp8Ow==
X-Google-Smtp-Source: APXvYqyqOasWPK4ZpeQARWIZEdPGz1HraSAZfsyOpQz9qUNv7Z9acXIyi2h1oPo/iq/+u18NZCadrQ==
X-Received: by 2002:a17:902:100a:: with SMTP id
 b10mr35190007pla.338.1562725028674; 
 Tue, 09 Jul 2019 19:17:08 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id f17sm326296pgv.16.2019.07.09.19.17.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 19:17:08 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 4/4] drm/mtk: add panel orientation property
Date: Tue,  9 Jul 2019 19:16:59 -0700
Message-Id: <20190710021659.177950-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190710021659.177950-1-dbasehore@chromium.org>
References: <20190710021659.177950-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_191709_335718_9CA9028E 
X-CRM114-Status: GOOD (  10.52  )
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

This inits the panel orientation property for the mediatek dsi driver
if the panel orientation (connector.display_info.panel_orientation) is
not DRM_MODE_PANEL_ORIENTATION_UNKNOWN.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index b91c4616644a..2920458ae2fb 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -790,10 +790,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
 			DRM_ERROR("Failed to attach panel to drm\n");
 			goto err_connector_cleanup;
 		}
+
+		ret = drm_connector_init_panel_orientation_property(&dsi->conn);
+		if (ret) {
+			DRM_ERROR("Failed to init panel orientation\n");
+			goto err_panel_detach;
+		}
 	}
 
 	return 0;
 
+err_panel_detach:
+	drm_panel_detach(dsi->panel);
 err_connector_cleanup:
 	drm_connector_cleanup(&dsi->conn);
 	return ret;
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
