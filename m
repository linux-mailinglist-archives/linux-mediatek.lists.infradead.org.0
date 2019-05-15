Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9C11F55D
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 May 2019 15:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYL3/MjcWjwea7iQZ58Qui+PdHoWKzQlDjCet5yGqJ4=; b=SMOalPn07UupaF
	r+aQ3c1HkZKgdtdoKIrAwZxQiM05gJjbVVRd0HWbyFJ/XYnzwExReKduBk5XmAV/h+ZRCaXLlHaYn
	Sk++W2UuS26sTVlOllHFKk/ElTTYPgKtHmlG7tnDN5gqF7vyDO/jwwv7/yap/qWZHLjQ3MkZ4in77
	haNrq55G5VAP4H6FalQnk/s0CIIbhcTU/IDh0wkHHQTqfoMjFr+rqe9ZV+KAbpXNtxJRmUu3MV3oR
	aB8zFCwW+bEWCbiox5JiQfOo+CLBW3fEtXVGOOeC9q/y5gQPZMgpnP+H2OKb2tKh158Vgp2QEz7Vl
	VQaAfmUSaWS0r4a8+Z7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtnu-0003Z5-GW; Wed, 15 May 2019 13:18:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtn2-0002WH-RZ
 for linux-mediatek@lists.infradead.org; Wed, 15 May 2019 13:17:51 +0000
Received: by mail-wm1-x342.google.com with SMTP id f204so23543wme.0
 for <linux-mediatek@lists.infradead.org>; Wed, 15 May 2019 06:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u++X1W35XtSd6Brp1Xu3v+o+tJKXJfUZkbFJORikAHM=;
 b=1qoPgNDN45Tu7njXHQ5zHfRMkJJ/bEVK8IMYxeP7+FPgE2ZvaIp5BfS0cr75an3qiY
 5y+ZqiSTVhPVfl36+w7xjtRv8ZxB9scfN0MmcL0XvRvkbPLwUdoUCz2q9ESfnAj6mok9
 1re+ofb9uB9F2l6gw+bxcefLtL2CQbYNklITNiLIycc0aVLnrXP9Ew0alYTFaC8zqpJH
 NOo7Uu6mmIKTH7Ed0UDx1kpIU6RTRVvzw9tTqFTapUPVSpwS49zlw80fF63SD/q8HQ7p
 sWPiGv8Vgq22JUe8jQYKwLpbhX2T63dQD3bWMqDqrElYCdu56aw1QA6v5eEv/4T5lZ/R
 Id2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u++X1W35XtSd6Brp1Xu3v+o+tJKXJfUZkbFJORikAHM=;
 b=nvduA9+pebhJA64zyu38p/Cx1yUGhPivFdG0b3pnPIdF9TPq0YoioPySa6SSAv0op0
 Lg2rvtxqF7KrB7NNVX2eVUGSsbrxLOZjZqTbyB/yAShq/rMretEyzwnAOZ1ZKDzhRL6q
 gsVE39CGhCQpOWVE7jXqO/kbc7/KbAbMm8ULDB9xyHY4yY0A8qt8IeSupZ2NSBv/Kc9X
 1RsB9jD67ZxQuneYqybiSefWGLwQNckDx0F3bRvUysu0xmgBd148DS5B5ReYMAvXcDsA
 Z8Vz6yFHTEzRCzId2UjGr31YR6AvgVckv33/fJ5t7S9ZUltZLrm/UR6BHf+v3HH7906Q
 8/vQ==
X-Gm-Message-State: APjAAAVqDNz0rR/VZYy+kUuuWNVcxtTu5X3EAXs6uPoBAwGdx6Y+i0eO
 ITVflsCYbW38WeGRaArTA/no5A==
X-Google-Smtp-Source: APXvYqz1Zsao1PlUJkrXNCQN+z0NMG1m+WCWUNVYzJJ4SOvu24AilUVp0e9NTZtTdhQCijaZFi553Q==
X-Received: by 2002:a1c:7e08:: with SMTP id z8mr24007252wmc.36.1557926267509; 
 Wed, 15 May 2019 06:17:47 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-11-31.w90-86.abo.wanadoo.fr. [90.86.214.31])
 by smtp.gmail.com with ESMTPSA id f10sm3268583wrg.24.2019.05.15.06.17.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 15 May 2019 06:17:46 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com,
	matthias.bgg@gmail.com
Subject: [PATCH v3 3/5] dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
Date: Wed, 15 May 2019 15:17:39 +0200
Message-Id: <20190515131741.17294-4-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515131741.17294-1-fparent@baylibre.com>
References: <20190515131741.17294-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_061748_888165_072B9084 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add the currently supported bindings for the MT6392 PMIC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

V3:
	* No change

V2:
	* New patch

---
 Documentation/devicetree/bindings/mfd/mt6397.txt | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index 0ebd08af777d..aa6d2eb0eb19 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -17,7 +17,10 @@ Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
 This document describes the binding for MFD device and its sub module.
 
 Required properties:
-compatible: "mediatek,mt6397" or "mediatek,mt6323"
+compatible: Should be one of:
+	- "mediatek,mt6397"
+	- "mediatek,mt6392"
+	- "mediatek,mt6323"
 
 Optional subnodes:
 
@@ -28,6 +31,8 @@ Optional subnodes:
 	Required properties:
 		- compatible: "mediatek,mt6397-regulator"
 	see Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
+		- compatible: "mediatek,mt6392-regulator"
+	see Documentation/devicetree/bindings/regulator/mt6392-regulator.txt
 		- compatible: "mediatek,mt6323-regulator"
 	see Documentation/devicetree/bindings/regulator/mt6323-regulator.txt
 - codec
@@ -43,7 +48,10 @@ Optional subnodes:
 
 - keys
 	Required properties:
-		- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
+		- compatible: Should be one of:
+			- "mediatek,mt6397-keys"
+			- "mediatek,mt6392-keys"
+			- "mediatek,mt6323-keys"
 	see Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
 
 Example:
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
