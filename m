Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF17C17B54D
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Mar 2020 05:14:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6whdH8MsLS3Cm+e/iAmhfDvuW1LFa02g+R5fMoBiiU=; b=FO159gtNhjDQvQ
	MM2cODI04DogysQCO6p/dMpVG3knRC7E2HMlZ0mewWhXuQC0Mmy4H+u0Nyg5DCB3bjrVIaPYHtcK+
	zWZMyFm3UhPEqoFS0kEHHT1vAmL6ojnlv8Vy2jLyxvf1s3xhj9eK2BsM2xSX5Y2p1UJMlf/ocw7Q1
	PkIsb/ydDK7F3kYroURci9yagzIxk5XvQ1crgXChX1iGPUVNO1U4WmFE32eER/YxwLjSANLStzEw0
	FgaWFAIEnh/vD/Wet7yswJ3C/voumT1qcURDg/36ypK6GFdQYTvxOP/qvsNKvfeH2igx5/aqNc9XP
	jGhJOvwWjcumvXq+T+sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA4Nc-0005S2-Bb; Fri, 06 Mar 2020 04:14:32 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA4N5-0004wc-GI
 for linux-mediatek@lists.infradead.org; Fri, 06 Mar 2020 04:14:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id j7so322645plt.1
 for <linux-mediatek@lists.infradead.org>; Thu, 05 Mar 2020 20:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FYo0wCuLZS6Af0DjoF3Xj17jVoInSu2OB15HTnyAsCo=;
 b=YCCN2t1CB2P2CfMaPm6rIKOPVG8t/6V3YQ2aCXAgjwQ/oXYOdBygxVA5DtyYataKSO
 8jXTgzI9ZnMO/rKDqORjVs1ktjYBpeo3sqPj4vQGQJb5Dyg3EMeOJSo5Rar1l1W4uIHX
 DB1YWKd8PndfLlPLZiNSXoYYlp+cRIkYlwyFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FYo0wCuLZS6Af0DjoF3Xj17jVoInSu2OB15HTnyAsCo=;
 b=N7twB2ywDWFuLKo7wXUsS8L7gP0E0AFRNP/KiMe1Y1GE8mAYRUx7NxMa0dBH/tK6zI
 jIPe5t4N/XiS/aoJA7E0T+2s5Bv0Y9vqB36BgWXrKb6tIDn9PvprWrBi9lm8QYQyp0xO
 bECqXi29aLGQbLjLYYSzZEcqD2pmldLlLOQyFiZ9rFtgsFeK2rtkofllvkqkdtgPBah1
 4zxgqm5/FYRBcdgz7qnfCyU0IybEGq3IzUq/ThgfgckMKmX+ZP9X6G6hBzSoHiFTIC65
 EDuC9dkLY4SKZAMxsmzBmoy3qCtvlxVbNuD84XnoI/3oy3sxaUWY9was5PMcbVPUt0RG
 v+NA==
X-Gm-Message-State: ANhLgQ2eA/oqE/mrlWCOFCZTjma25tp/437eLaON95ZZB/DDrp9JiOL/
 aLRBM50a2zCpUWXoMTt1toNzOw==
X-Google-Smtp-Source: ADFU+vsapmfZZvpytvq8zfJi0p1aO+2auKRfer0iGIeUM9zhX2RKOVB+rq7eHpBtbvY0Yo4mFBVKTg==
X-Received: by 2002:a17:90a:b94a:: with SMTP id
 f10mr1564406pjw.1.1583468038770; 
 Thu, 05 Mar 2020 20:13:58 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id q97sm6295025pja.9.2020.03.05.20.13.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 20:13:58 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 1/4] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
Date: Fri,  6 Mar 2020 12:13:42 +0800
Message-Id: <20200306041345.259332-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
In-Reply-To: <20200306041345.259332-1-drinkcat@chromium.org>
References: <20200306041345.259332-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_201359_539354_7A925C59 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Nick Fan <nick.fan@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Define a compatible string for the Mali Bifrost GPU found in
Mediatek's MT8183 SoCs.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Reviewed-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
---

v5:
 - Rename "2d" power domain to "core2"
v4:
 - Add power-domain-names description
   (kept Alyssa's reviewed-by as the change is minor)
v3:
 - No change

 .../bindings/gpu/arm,mali-bifrost.yaml        | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index e8b99adcb1bd292..c5ceca513192f99 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - amlogic,meson-g12a-mali
+          - mediatek,mt8183-mali
           - realtek,rtd1619-mali
           - rockchip,px30-mali
       - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
@@ -62,6 +63,30 @@ allOf:
           minItems: 2
       required:
         - resets
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt8183-mali
+    then:
+      properties:
+        sram-supply: true
+        power-domains:
+          description:
+            List of phandle and PM domain specifier as documented in
+            Documentation/devicetree/bindings/power/power_domain.txt
+          minItems: 3
+          maxItems: 3
+        power-domain-names:
+          items:
+            - const: core0
+            - const: core1
+            - const: core2
+
+      required:
+        - sram-supply
+        - power-domains
+        - power-domains-names
 
 examples:
   - |
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
