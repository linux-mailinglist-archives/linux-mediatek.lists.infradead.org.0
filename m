Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F414155438
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Feb 2020 10:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gc+4GV1WEzvvdryiNq8WGiAAPw+xOu0q5/lmittVjbc=; b=HE1K24tusQawcQ
	xqp619J/z2bkOAVDHwtti8sV+LEqnrHYkWxQdsoxgetLfzR5z7uhc4z0VFj9oTkif0MfbRyYu8dHn
	ZnEmXJJVI/P79Gc7OEuBcUcrG4kdrSwi8kSN3ryLXQzWLI+yU+4Rm5E2EG6ivY61AkP87mOqJkzDM
	BLzsLaX6/Y33GKRSg8WKjf8vSV2ir2V/3MY39WIg4g102KO8+eNgYn2ElGoxUuC5kf12Dzlqf6f0L
	9MxZD4TehS5AMsN+cpy+8Nc4h6IGhI5E1Eer45HUixpDRXxu/qFNtpH5sbSfl50MxpM2ePwfyTAOp
	jz6ib5yAHTNJt3XvRi5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzXX-0005us-22; Fri, 07 Feb 2020 09:03:07 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzXE-0005dr-Tb
 for linux-mediatek@lists.infradead.org; Fri, 07 Feb 2020 09:02:50 +0000
Received: by mail-pj1-x1029.google.com with SMTP id d5so638721pjz.5
 for <linux-mediatek@lists.infradead.org>; Fri, 07 Feb 2020 01:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2vermDwahlH6+AsMPUBbXBF+09yfDI0r2EqJfGMtZpw=;
 b=XMGKpbpt8Bga3bXIsAgR/J6qNAhyzGKLYICevuRaHrFAn8FnoM+QoxHFCtcrjsLjto
 uAkKCLY6HDC6TvKD/K6q7ac+jwfW6wXGLx8FE4XVzJ1hDGFQLPn0U+xps/jB3fHIscbY
 HKogRhnt09yHqNanDzet6hHcNVm895hVdCjEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2vermDwahlH6+AsMPUBbXBF+09yfDI0r2EqJfGMtZpw=;
 b=L8zqJhJMxdGHmrP461fRxmxWQW14oqBjGD0PpTQ53MMfsMNa1JwUrrwCTQESb4Q3rX
 CRwJnLb9fw36NW6wE44h0+8UpDfoGGA7d7yPbVTNSgtkGlbsmHBTLQXuI0bmLV4ocMbn
 vwW/7Z6hkvnbvfibLwBLc0LHLlz8AlXcozNglUeZFHQt8JACCZ0bV/Zm5oeOvS3FWaFE
 zGUYsK0iaJEYyVoodQnpdI0pbODyCK9Ev9zAoT4EZgs+Q5AjLliqgRfRWOt56u85s5vs
 SxRvvlEK2BeFokF4hrH6iriETdK/wimStDhwheO7kZc/YcSg5zriy5wQOp2Yhphj1dl1
 ykeQ==
X-Gm-Message-State: APjAAAUbD2yOkA5vVkzBAl+CAqt3kXq+u1fWIgz4yypi4pds6bc83r9q
 AEdiTWzzchzoDXQWJazm2tK6ng==
X-Google-Smtp-Source: APXvYqzD6oLxnMRfl4Imna/ocsllrU1pcz/lXtHdflVIf4FHnBWbXczUh92y4s+QcrGUVusDk5DcPw==
X-Received: by 2002:a17:90a:8a12:: with SMTP id
 w18mr2621068pjn.68.1581066168018; 
 Fri, 07 Feb 2020 01:02:48 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id w6sm2309463pfq.99.2020.02.07.01.02.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 01:02:47 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 1/5] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and
 hana
Date: Fri,  7 Feb 2020 17:02:24 +0800
Message-Id: <20200207090227.250720-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
In-Reply-To: <20200207090227.250720-1-hsinyi@chromium.org>
References: <20200207090227.250720-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010248_958692_2A7CF1EE 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
