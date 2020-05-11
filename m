Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186031CDE89
	for <lists+linux-mediatek@lfdr.de>; Mon, 11 May 2020 17:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UlWu62d+cechifTho4MA+f+fkn+zrgI0g1cGWrsiPw=; b=oY5gdXq99sW2VL
	KTgm9nMqOTTm2L4Z9mG4RKwuNOwqXCqK9KuDpi4li4Q7ZPB0sYeW+inFq28gJ5u/eSjoZh2//frTQ
	U+5NAVFlbsB96mabfYDfK1M5bSCbziewGvbin5YfNGJ3jPZPI0CKhf+WW8/lqFfrqdJ5Sbjx8pl/I
	61Bx8AwcSYcRWa3W7jSpSReAfCo/v2z/cMRZh26RLFSsMXVmixAnXEggqzMFxEQXZJ2Fj7gna3WJN
	OZGDuFtsoU1HC4dP2jSOHwQuydiyF6wpAHiRHhI2RgHbJhIj6VTAlO39DmaEvmd3OnfOt0CyJZkaA
	MN1HU0sBf7HqvlXcsOig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA74-0000xP-4M; Mon, 11 May 2020 15:13:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2r-0002lI-Mj
 for linux-mediatek@lists.infradead.org; Mon, 11 May 2020 15:08:46 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so18399489wmk.5
 for <linux-mediatek@lists.infradead.org>; Mon, 11 May 2020 08:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=seBpYegPZMs/leR6JMfg7RpttvfOQmjhwYGL5XqCrl0ivqZ8SgNJfl5MrK6SNZU0x7
 s+P+5zxeVYMfWsvU+TruIPRs58u2N7gNKpF12dehHxew8uZn0wyQlXvRs81sH/cUAU/A
 kDiLytEcupQFinP/tSVSDYeJHqjKGk/S/swcSaT9uPiZDBURaYvEzFY1KQfq187G//Gn
 fP7p4AVjZ9rbwczBJGBw15zMRSFOqPTKu+IA1dWJoqAajrlxLUjrFo00xOd0Oskl6NXS
 vFI181kFNL42vS94eYWzxhtiRzUpW9BwFO6iLc+Bp3c1tgfqYpiA57PqAjvUSUmXKZ85
 b5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=Uk9LYc/O55H+CSXCrcSlCV34jVb57OOAIr0E83fOi10S8unClwVXacXrEiv6AMxXne
 eQIK/2gjyhFMNlb5UZLGMmonwn4ah8HNetNqxUR/KiuZ487UOUwoZjs5ssZdZlliSYon
 ri83t4mqbaMknfgNT6QIlqtLiNeqKQAQ6n3PqVvNtZqCHECSXu5ibFSx1e3xj9wU4t62
 jRWCZgLwHWvhEWS0lZUpkBZzKioBNzCeum0rhMxFPVbBBXz2aK5yt0wUDNQy4Co5+O7T
 PUlNxYqJAE8SOKnklRgw4c6uM6/6ZczoT7UOgzo2AAizuTSNmMdkb0NC7MnLC2YKlK0b
 0Xew==
X-Gm-Message-State: AGi0PuZ/XKAzK2BzURW/NPaqFE3KJ+Vow3ONgbTV/JwNJTJ66H40rUz/
 gNycGCQjk+BFVnpoE+plOkE5qA==
X-Google-Smtp-Source: APiQypIPr9fJcUgRNwzXEgdam3rXk6Or+HXAPoKGbi/pvrOEjCYCARRhvNo55PBWgkqCWw6ysRwOhw==
X-Received: by 2002:a1c:2e91:: with SMTP id u139mr31309130wmu.18.1589209720425; 
 Mon, 11 May 2020 08:08:40 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:39 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 14/14] ARM64: dts: mediatek: enable ethernet on pumpkin
 boards
Date: Mon, 11 May 2020 17:07:59 +0200
Message-Id: <20200511150759.18766-15-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080841_836664_9F7C1481 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Add remaining properties to the ethernet node and enable it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../boot/dts/mediatek/pumpkin-common.dtsi      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index 4b1d5f69aba6..dfceffe6950a 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -167,6 +167,24 @@ &uart0 {
 	status = "okay";
 };
 
+&ethernet {
+	pinctrl-names = "default";
+	pinctrl-0 = <&ethernet_pins_default>;
+	phy-handle = <&eth_phy>;
+	phy-mode = "rmii";
+	mac-address = [00 00 00 00 00 00];
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		eth_phy: ethernet-phy@0 {
+			reg = <0>;
+		};
+	};
+};
+
 &usb0 {
 	status = "okay";
 	dr_mode = "peripheral";
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
