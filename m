Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5411DE661
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 14:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsnyaVkn6vys0ET0yeWzl/eMoV7ln8pbsPWjkaja5mQ=; b=EcqtYWJODIXiSR
	RUTVF99ZRuSzJxQYwnS+pJiobURvHh13boA9EwjChbfMPe1N2IGKKfw/oMn9CQ3kUl4SY/RZ8kRR5
	YO82nT2MmGnOnwq9IDWk3C/hvZeStzFKQqUDGJUJ4Gd/B5kR60Gu2WUUZjlEoF+gN4ms8Sf0W7jIv
	jRriDRyTkADF6YNUrZiLKBKGA1ZyfkMDBf41y1Xe7DtqEjvuesdS2mu7BKVtgSGpDQdRMGzgDLnR+
	8xpm4C1RtLd59qQ4pgRjwLw9RNcRKmpR7Z+/klLy69LL4E2whDtnuxpNCG9sCaC/SdH9gaalaQ6ff
	+bv2kzN6+qxiEsdN5hog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6Ve-00007Y-1g; Fri, 22 May 2020 12:10:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6Sc-0003Rz-Ai
 for linux-mediatek@lists.infradead.org; Fri, 22 May 2020 12:07:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id h4so8418582wmb.4
 for <linux-mediatek@lists.infradead.org>; Fri, 22 May 2020 05:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=Sn/1CrJlRf1gaXAt7BzExoLU8RuOHChRbTQLpaUrzwFYqGsov68ZYpiUu778e1h74U
 EG8H1AkAkI/Dvmx5QKB9iXaqQh4CeJTf3KZiOAOTno9BIiFgfkjQQ3V4IRkEH4GAPrLA
 maiOekJ94V3I7H6hUXcjbEOxaDc55leACFe7VuKpdTyg7O80elge/QfPQjJeWku+bhMk
 /BOFybbSX0X7y3Qvi81k2fAIAzdXkIexmNVingkHUbHWITInUkDyAjfPXgMuJPMXVerx
 QZT3djIizjK6MVClkQM2eCBMIBdSWPweS9uJyC7sYma38spotFpi6WHBHlfhEvvRmcPV
 FXNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=jWOI7t05th7M+GdI3Kyex1XhkMAir/Axqx4xbTWQtxyO4St9Rfx2asqUr+zD+ZJ2td
 R/XaDq4uUV7vIlsvN/dkknBteZTOKyT9mV21noPHVpdXf3qVdKxNkmSUWDxi2dmCwj3I
 vWCkC3tlb0fNRRe5alX6WJnLJo+GuO4PusE/Uv1HoCA+lq9VU62TpeL82It+cM8bXF9m
 TIAuyqraIN+5NGjTb0DoFjB8mAos+Evo2sM6bWCx1tdCBkgGBQli8QuwEMD3pQs4TYAR
 +ldXYDWnROnFlYqDO6tG5LU6FrUpciWtR7tRnPL9JxH2GePa41/fQAjzdPfCaRO6C4s2
 Y3+A==
X-Gm-Message-State: AOAM531snCzCYkRcs1e8ZUij9w+2Cy/ZogivtlpT5ergkjHnwtCYuCS7
 wOGnT/2w34/862BWEqvjX/c8cA==
X-Google-Smtp-Source: ABdhPJy2DwWygp0CZukF1c5MDhWbG3suEHoLEk61djOMVZnj0q+0DRdXHTp94SuAfm6DtS52JEtM4Q==
X-Received: by 2002:a1c:4857:: with SMTP id v84mr13962835wma.106.1590149252025; 
 Fri, 22 May 2020 05:07:32 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:31 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 08/11] ARM64: dts: mediatek: add the ethernet node to
 mt8516.dtsi
Date: Fri, 22 May 2020 14:06:57 +0200
Message-Id: <20200522120700.838-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050734_462433_263E2177 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add the Ethernet MAC node to mt8516.dtsi. This defines parameters common
to all the boards based on this SoC.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 8cedaf74ae86..89af661e7f63 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -406,6 +406,18 @@ mmc2: mmc@11170000 {
 			status = "disabled";
 		};
 
+		ethernet: ethernet@11180000 {
+			compatible = "mediatek,mt8516-eth";
+			reg = <0 0x11180000 0 0x1000>;
+			mediatek,pericfg = <&pericfg>;
+			interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_RG_ETH>,
+				 <&topckgen CLK_TOP_66M_ETH>,
+				 <&topckgen CLK_TOP_133M_ETH>;
+			clock-names = "core", "reg", "trans";
+			status = "disabled";
+		};
+
 		rng: rng@1020c000 {
 			compatible = "mediatek,mt8516-rng",
 				     "mediatek,mt7623-rng";
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
