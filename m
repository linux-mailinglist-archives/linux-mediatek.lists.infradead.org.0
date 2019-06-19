Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CC44BB47
	for <lists+linux-mediatek@lfdr.de>; Wed, 19 Jun 2019 16:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I38AEHozs1rUOW2tF1wUchrgdL8LpoMcITLDqLcebCE=; b=RdqvFMC1f77oCj
	IL2Om9l7PkTUG72vq9t7gxf0NvbSXDK0ZDJ2SINSEv3nl9841vQyFkp8nLTAt4fdH9HC1oww0yUE9
	/DDQ3i9I9nG3xO0SXtiHQKw/jPBnamNOwRku4Z1qho8W9HoClVUlqDCiZ6XMiBkzvC6E4nIBre1UH
	zOpNfEXs7JrWsfIYrxHT5WwdsrkMhLsQ/CkSL5hQK0s5FOTy0JgEj9/oSZr8xBJYHM328cOeDIllZ
	Kf0N6jGzz05Lii4pX8o6XB+86evRSWortxRBGllfxqGW2tlqH8uObuFaOYj/cFEzAA54rMJeLPcqd
	O3EKpSnwPSdY1KL8x+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbSF-0006S8-1T; Wed, 19 Jun 2019 14:20:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbRm-00062a-4G
 for linux-mediatek@lists.infradead.org; Wed, 19 Jun 2019 14:20:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id r16so430219wrl.11
 for <linux-mediatek@lists.infradead.org>; Wed, 19 Jun 2019 07:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kT6C5gE5FK+KfGlZUIPAV8YPgNwsfj0frh0Wye9Nflo=;
 b=sSRIPzPK+cPvn1MTMZBkX0cP7V4UYFS/H/JmGFKmf/qben3Z21FjOkPBh/Mfe8nKNv
 CGx+fG8LX4MzmhIqhLYyXlOL+6TEFHSgwR323FP/RdYc3LOK+Ja6Nq4I5qe73LXMZ25N
 JgWj297MqgpUtnqnioJrYPlJZmETPT/Mo54B5Ogyc1wo0HsuHp6qSctXAtn6eWBz9bho
 dtKKpDftYUiYmJNRo6g89JTDnkReLn0x6XYFhLuRG8Geqlj4husJAfw2UOOu+TsTrrYq
 ZXeRmyUHlllMdiqiJ+oMyirBtcf+50WcH+dooZG4mWyhLEnZDDUEJXoiJNaKWFih8OaS
 pgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kT6C5gE5FK+KfGlZUIPAV8YPgNwsfj0frh0Wye9Nflo=;
 b=kD7Zdsbzkyr+pJ5yTt7mQ8IkCx0qRncqjTEYRjml499qYgzxUN5Ipp6MyliVV7AKcU
 Xxm4e+7yz/10ZZz+DjdpDSpbvUcXPrceJ/qfUSY1ZH6ycXgjux7rQENWoYrkpAytJSk2
 yW3X1WJNp3Of89qwWQ4hCA+b+2Pq/lZCKzgITSFAQ4oZ8B8wDiqFnhXnyuGlnCTY9U1j
 1MrkYb0yW6nfCEFadAyuB3evMKIQj3FpatpisD+WZHJTXT3w8Wo3C44dBJX/wxYIKlu2
 ES1PeZ7cwsq82x0gUmXFvbYB0KcJ7X9qJNPpw50HL6nOk2SrcFQXEp0/DdMa48PExVVb
 FfSQ==
X-Gm-Message-State: APjAAAUcet1G1uo8cUx7CX9gkLdYW/m3dS0CmRjOF74vRfYEjloEW1JF
 IW+2jQVPiMtDFNhZeImFkv4Cew==
X-Google-Smtp-Source: APXvYqy2BRCb05/k/zzKqZd8m/UIuZO+uW8jfzrNFlV7AFJWIlz2oU4yN1NtUSCIidGEmkuu4fzypg==
X-Received: by 2002:adf:dc81:: with SMTP id r1mr3516215wrj.298.1560954020155; 
 Wed, 19 Jun 2019 07:20:20 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id o20sm24209979wrh.8.2019.06.19.07.20.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 07:20:19 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, matthias.bgg@gmail.com,
 lee.jones@linaro.org, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v4 2/7] dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
Date: Wed, 19 Jun 2019 16:20:08 +0200
Message-Id: <20190619142013.20913-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619142013.20913-1-fparent@baylibre.com>
References: <20190619142013.20913-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_072022_189262_D6A3DF19 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add the currently supported bindings for the MT6392 PMIC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---

V4:

	* No change

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
