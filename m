Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A978136866
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Jan 2020 08:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aptp+SGjODbP/WkjfbYwEt74BPlWHevvLKAaF5cL0hk=; b=Kuug0I1vlEcFvy
	QqaYj6BNxCKZ6Bjv9tbR24wH5Y2+ZUXdDXYXco52sbIDCEaTH4m5096YoI26ldZtVpZXcMEcpDx6X
	6waACzdwSa0/F1uanrf0QsMMoDVEQ76E8KaAXzxx6v5l1YngUSviCQNHp73i7f4TqEoqfqhGCQQ5R
	fu0zOVZfYmTu3ylX4+ogYXmueGPJ5BAdGjiZ3eOfukz/0J5irCkEarmy2X/0Bj9ci7pHDFFkB9/Po
	gJHr+FSsUBqktXADg5GGl+nPRPqGbI+88ZHhkWcfQfX54TQGSNUrY0w04KSaHsznBonHwMteNMEIL
	xUbU5AKYUPDWr0pOYzsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iporn-0006k6-PQ; Fri, 10 Jan 2020 07:37:59 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iporX-0006XD-G2
 for linux-mediatek@lists.infradead.org; Fri, 10 Jan 2020 07:37:45 +0000
Received: by mail-pf1-x436.google.com with SMTP id x184so724823pfb.3
 for <linux-mediatek@lists.infradead.org>; Thu, 09 Jan 2020 23:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zPmK1IVjUjoDDdGXICIzNkDG9sEfLCivKbwQNM5Dc3g=;
 b=MkxgcYU+henCA5kN+O1OSgQ8jmPxocJVAdEbEUCpADdqi+QU1aESTk+OSpiZdSVmtN
 BSTNqEljO1iisJAdLb+nt03AMZ7kc9QJc46EksUCwub/MJbfMZ5V3aaF6RVb9oagpULU
 1HA+Njc4sZEWYahfHvl3yrvQKZn75/jxDBmLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zPmK1IVjUjoDDdGXICIzNkDG9sEfLCivKbwQNM5Dc3g=;
 b=EhWUACn9H5piVKvu/RsEBvIM3t7mhylR4FFdGkJoovUEh1FopKCydDZXeW9cTLxZbG
 YPsOI6gEFQ5+BuHiRusSwxYfkmRk8CbT+Nba5bsKKiODj9DE9bFPxIbFUk6klblxIp7l
 WOo4cru2200/tq1ZBosETpp5wi1+hB1RcyFOz3IyIAnfT4KHz56onlyvd2UAONt42Qt1
 2kzXdr/ubkXIZSKBPFpkU3fLQB98Z6NFcOOrMJXatIqV01uZblDiD8LcUKFqFaHX+Q1V
 88timRgsMa9PJKcCDB4ENJAYus1c1Byg17w4Fd8JVo/weiCvjWEjaG5UEAfKr7N9fSNv
 S7Eg==
X-Gm-Message-State: APjAAAXuNL9maRA9fMXY+CCl6FLxXaRBwA/IIQH+LXFl0b1Sg4534Yv6
 lLY+eKo1tETEp+MdacpvRsyPbQ==
X-Google-Smtp-Source: APXvYqxXyq/aIJxYy6CGQGlrFbVq7DCDQJRkJEBFWREvT9xXXlpwtMYfLPLZqL7CdRPmXfF7Y0olwA==
X-Received: by 2002:a62:7681:: with SMTP id r123mr2477932pfc.169.1578641862585; 
 Thu, 09 Jan 2020 23:37:42 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id p28sm1373919pgb.93.2020.01.09.23.37.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 23:37:42 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and
 hana
Date: Fri, 10 Jan 2020 15:37:29 +0800
Message-Id: <20200110073730.213789-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200110073730.213789-1-hsinyi@chromium.org>
References: <20200110073730.213789-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_233743_561528_23FB778D 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
---
Changes in v2:
- fix dtbs_check errors, use const instead of enum
---
 .../devicetree/bindings/arm/mediatek.yaml     | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 4043c5046441..5272899b08fa 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -84,6 +84,33 @@ properties:
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
+          - const: google,elm-rev2
+          - const: google,elm-rev1
+          - const: google,elm
+          - const: mediatek,mt8173
+      - description: Google Hana (Lenovo Chromebook and more)
+        items:
+          - const: google,hana-rev6
+          - const: google,hana-rev5
+          - const: google,hana-rev4
+          - const: google,hana-rev3
+          - const: google,hana-rev2
+          - const: google,hana-rev1
+          - const: google,hana-rev0
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
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
