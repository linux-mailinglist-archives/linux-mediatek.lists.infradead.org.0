Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED5713A178
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Jan 2020 08:16:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jImBpo4xvb0D4+Vc7kuUkMEvfGCFhlFXwA5Jtd2OU4k=; b=PWA5oeV4opq7/M
	uyBGuYH6PH50h1wxw7KNVNlZdP7KD9uAgHvxzCpJk1MEXC95QKrg3jktyT1x9xnUt3BbeJRBMmS2+
	HEH+JeWLD0wgJmXVtJ1nbB3pn6p69sUEe3N5T5ZLx80k7Oq7Sj6CdzfqLSRd0YFE7+Ru91N2ljcHj
	/ws274eMhTy+gLJjtaMZVqKOvZ/nuqOZATrFabu0AuFZCjieqKCm3K9QGfWafmP8AoFLqgk/EfV0N
	w128QbYKg52cGb9I9PSKNQnrwSvMGtLkIppHeo/8AcVEhIPQNkiNprsBWKFtZcMSEYYre53LSaZBR
	5Y5qGk4MeIXKTZgGFyZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGRZ-0004MI-2I; Tue, 14 Jan 2020 07:16:53 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGQu-0003oP-0B
 for linux-mediatek@lists.infradead.org; Tue, 14 Jan 2020 07:16:13 +0000
Received: by mail-pl1-x644.google.com with SMTP id c23so4874192plz.4
 for <linux-mediatek@lists.infradead.org>; Mon, 13 Jan 2020 23:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EoATaCn4ot7/fRXVyyupWqTUK/J3grtKGGD0GZimmTI=;
 b=YahZMu4jUSx+kdGsktVd/kysOsca1+L1cDz6GC/y3EdchGBL4lmkZC+vd2F+RyK0A7
 cSFw3LO7hgNpta3FVyHm971uhVjHwJ2SCe+7L/g+HAE+Ip5mi3Zg2ITUK1YM0hs9vyPL
 bojXkbovYxxTJydqmr/V1/I5IiLD5C/gKkXm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EoATaCn4ot7/fRXVyyupWqTUK/J3grtKGGD0GZimmTI=;
 b=mbHzsMuSKNN/urn/WsFyj9tkyXqJIz9SFYcZUkEyl4QIYM60bOOLCpEY/A02GUPhGE
 qfpNKeBGDP7lo5QAtJw1b/ZXRNb7jD44aep0NhNwRsiF+v0B81gsVPkqmhijFKfafpfC
 RzW3zMYk2/jtGcr15to8O4MzjcjyVpITXSwrLmHWpnJizgTCWWzGnn5swhMbD76nvWSd
 KbZPxkQPV9CdQnmrsgZhWCxam/kpKeaqwBnH+cR6nAvmEHUUK8HJmD72WhpnKwtdId18
 RNnIH3QFUQsLoVYiZhe1e1F0UPnSezdLqIxwHFWtsvzKjIibYpHQp+WcdFL/IGxSN8IP
 Ij4Q==
X-Gm-Message-State: APjAAAXe98YkCSJ+9iDe6isdu2p234vsmHy2/5XBg+wO8jVy2Xvfu/+D
 +a/3DeGY9u8oBwYNFboSWTxz9w==
X-Google-Smtp-Source: APXvYqzQuE+WVs1Zt0wpcg6768ZyfON0VW874YYaBtjWl2nYKw4EH/znBkyBISA8PcAG89pGqwd32g==
X-Received: by 2002:a17:902:d68e:: with SMTP id
 v14mr25504465ply.36.1578986171223; 
 Mon, 13 Jan 2020 23:16:11 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id b4sm17092976pfd.18.2020.01.13.23.16.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 23:16:10 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 1/7] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
Date: Tue, 14 Jan 2020 15:15:56 +0800
Message-Id: <20200114071602.47627-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200114071602.47627-1-drinkcat@chromium.org>
References: <20200114071602.47627-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_231612_047042_CA571BAB 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Matthias Brugger <matthias.bgg@gmail.com>,
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

v3:
 - No change

 .../bindings/gpu/arm,mali-bifrost.yaml         | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 4ea6a8789699709..9e095608d2d98f0 100644
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
@@ -62,6 +63,23 @@ allOf:
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
+      required:
+        - sram-supply
+        - power-domains
 
 examples:
   - |
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
