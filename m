Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF7D156F81
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Feb 2020 07:36:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gc+4GV1WEzvvdryiNq8WGiAAPw+xOu0q5/lmittVjbc=; b=sUlt9wAyGLOnpT
	pKUK1kdaraotIdSlrmCoA2SJiCGUePBcixUr6RktAV6jgRRdVOKjsUnSXWWalbIQZxkaGAAQnhg2u
	RUP1OW18TnpdlkAh/Oxkq6laJW3sf/TNcPAoDZ0pmNDRkNcm5HzMJQB/zo5FnsOr4SiZ/wTj06mGo
	3Ez6BIM2PKxlc02vm9mTYzigY+eM6cCIZXR24Pdn5lFTq9TtQ2/nfgTuyE1ZX9iImQmv7LMMniyvU
	ltJwIOP24w/bjJyw9R2gdKBpBg6hl+gyDyGRNB8EL4c0S2bCSddpMAw7obPhdSryScNZcVRm6wH0i
	/Z233tj918MCRtcFYGGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j12gM-0001Ez-9a; Mon, 10 Feb 2020 06:36:34 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j12gC-00013h-K3
 for linux-mediatek@lists.infradead.org; Mon, 10 Feb 2020 06:36:26 +0000
Received: by mail-pf1-x42c.google.com with SMTP id i6so3221824pfc.1
 for <linux-mediatek@lists.infradead.org>; Sun, 09 Feb 2020 22:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2vermDwahlH6+AsMPUBbXBF+09yfDI0r2EqJfGMtZpw=;
 b=YtFvUT8guVin/0PBil4w8iiXmVupqvP4cXnZ8tEDJ7FZU/4ycOJPKScPVJgBjfG9yD
 iTiZlW+hJu4e/wlq7NP/ZW6rQ+c2Wh/4Ukj8oV4PcJRnax2QlSoHL3fQvXNlYMmwCS7f
 ih7ptXse/+mSB91eRetWgEft4RNOvKV1zZm9E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2vermDwahlH6+AsMPUBbXBF+09yfDI0r2EqJfGMtZpw=;
 b=H/ttnI7eg99tMEf8nZiQkZdRuKCUU2cnEJ/BcqrBUEBdMdBOTH0sjWlLZchDhufg3F
 fYcPGaKskuJwss8N03c713TpMN97Xq2xlAdPO5CqBgx4ijAcvp6mGN6i8uiO2vwglApo
 caUxcigiApo3J2tUABrvJsrv20N6i4vfHBv+ronqNCqsUzf3Ng5Zao9NiFQrYY3hIUq/
 G3zZvH7qYYw1YdL1Q1SGLds887ZTbpaCxq1duMNSvQLBqriAihgL6glISqglWAkpYmPn
 a6k9EGR4F9RmoL4+SI/+IGfMvPHYvDoPMWYavyvXBWgW7BgTLMuY2FKh4gP+HH1nbzI+
 CkTg==
X-Gm-Message-State: APjAAAXkk2/0gBLeiu/gr0ZzyGTq9aZ9Q9DC3JtdP6WnTv59I/jeIey+
 iSdpKt2RQ9/3L+a7oLXXAwBuohK/VCZlfA==
X-Google-Smtp-Source: APXvYqy6+uba/QhCCot+FbXrUFE0PymyoKNbEM2DPRucR0W3KIJNqZqs9DPhLAxaubTjHvAvamlnQg==
X-Received: by 2002:a62:e111:: with SMTP id q17mr11322834pfh.242.1581316583666; 
 Sun, 09 Feb 2020 22:36:23 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id f15sm11070041pgj.30.2020.02.09.22.36.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 22:36:23 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 1/5] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and
 hana
Date: Mon, 10 Feb 2020 14:35:20 +0800
Message-Id: <20200210063523.133333-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
In-Reply-To: <20200210063523.133333-1-hsinyi@chromium.org>
References: <20200210063523.133333-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_223624_673142_FB0F32C9 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
SoC.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/mediatek.yaml     | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 4043c5046441..abc544dde692 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -84,6 +84,28 @@ properties:
           - enum:
               - mediatek,mt8135-evbp1
           - const: mediatek,mt8135
+      - description: Google Elm (Acer Chromebook R13)
+        items:
+          - const: google,elm-rev8
+          - const: google,elm-rev7
+          - const: google,elm-rev6
+          - const: google,elm-rev5
+          - const: google,elm-rev4
+          - const: google,elm-rev3
+          - const: google,elm
+          - const: mediatek,mt8173
+      - description: Google Hana (Lenovo Chromebook N23 Yoga, C330, 300e,...)
+        items:
+          - const: google,hana-rev6
+          - const: google,hana-rev5
+          - const: google,hana-rev4
+          - const: google,hana-rev3
+          - const: google,hana
+          - const: mediatek,mt8173
+      - description: Google Hana rev7 (Poin2 Chromebook 11C)
+        items:
+          - const: google,hana-rev7
+          - const: mediatek,mt8173
       - items:
           - enum:
               - mediatek,mt8173-evb
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
