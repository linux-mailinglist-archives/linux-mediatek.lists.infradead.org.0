Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7506F1504AB
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Feb 2020 11:55:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQJMWHw5tt7MwI6BFqOtJwwdIz+bWavtgr8kQ+X9ZPc=; b=jYqi0tPUkm9DbI
	8ivBb5ilyycBrMoLQjIxQI4/uyxH+vTgdFpWJEVqdFYXx5WS/4g99JY5ZxgSUyP+D5mZbfhh3jLmc
	yYsEnQmbJerrKOfBNuCmw/M22jroYCiMngA39zjpdrICGcwtfghbpJLkky6dPFylcXI9FBnAUxRHt
	dhHgjmDxQu8B1VlwFja08sFj8wAFviBfn5TcMuIzqBc7xaDZPwuuUrpKYbh6gxUKIEOsiL2DvneZQ
	aEqvctMX2st9ynj0rn6o2bzdDj+1hNGA8UUbnAXOHl4ZK8PJOn97kmvROp40F7IBWlZmta/BcGl14
	uV9YPCfkkpDsGkD0Gzxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZNd-0006At-KT; Mon, 03 Feb 2020 10:55:01 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZNJ-0005rF-Is
 for linux-mediatek@lists.infradead.org; Mon, 03 Feb 2020 10:54:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id b22so5694374pls.12
 for <linux-mediatek@lists.infradead.org>; Mon, 03 Feb 2020 02:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qdcfeO5K2S+Cod2DP3bBm/qVK9+LuyFJKPE+ozmP7N8=;
 b=CJ30/B5L99FeE/8A8MlJ8DKGA/bta/8h/RXH+V8BikycRyW6Yu+QA7vFAQN3U3pLTo
 KWBN8bUINxvs3p44qFmDDTyQuR/eB/f4BDttHZSdz1sjXGOrZGsd92NDm6Dxzk1c/EXZ
 fIY75n5HfljIQ/uFciOU2qzHNptH5QNJR/JNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qdcfeO5K2S+Cod2DP3bBm/qVK9+LuyFJKPE+ozmP7N8=;
 b=XAHudVZcyp5dC8be4aEBjTebqfM7VuVXhEaZR8anaaQKXm9Kp0A1hGfxrJYPr3JeTz
 apnM6aGjNWgxryeHz2e9UzbXW91PbthdiYaysfGUu5lW76n8rZg+DH4Y5F/BrfpyRk26
 tV8qyEDO6pNYtidCTkiJtEoC/Mk0er1qJeD58FbpF27Z3mAOo4qnlUOk+FY5JCxs9O+u
 9XpMsYxVZgQxbq8MQVVMCAr7kkW1i39Cq1w8KReiIpo44i3E1SkVgcmHVL3LS4qx30mH
 uCbF33kb6sXcFizR3vYZ89g2F3G3SQmqpiKTksAzrXz6xCSgonULz6zgTtl8Yd6zlYvK
 5a4w==
X-Gm-Message-State: APjAAAWJbUCBn6HlwCwgOaC5QFYaT9pKdjFLHjeabQo2DdiwQ9oYVJPn
 R5NqUViuZHaf13S96X2r1asWeg==
X-Google-Smtp-Source: APXvYqwhhb++S662UhMMPJRvXKnxOT2X6ORVM0UluIGDGNCr/JKKEYwit/FK0LXKsLF0cA0obcgWSQ==
X-Received: by 2002:a17:902:8546:: with SMTP id
 d6mr23392335plo.193.1580727280661; 
 Mon, 03 Feb 2020 02:54:40 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id 11sm20923835pfz.25.2020.02.03.02.54.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 02:54:40 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/3] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and
 hana
Date: Mon,  3 Feb 2020 18:53:47 +0800
Message-Id: <20200203105345.118294-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200203105345.118294-1-hsinyi@chromium.org>
References: <20200203105345.118294-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_025441_659055_D6336648 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
2.25.0.341.g760bfbb309-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
