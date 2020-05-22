Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 165CF1DE668
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 14:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UlWu62d+cechifTho4MA+f+fkn+zrgI0g1cGWrsiPw=; b=PamGRTJRtOZFKk
	IpNhcRdbXkSyJmopWfwDUYsklc2E44t7GFF4xO/3N791E7SHTU3v2xx9ChcNzeo5cKlfc9X4GjSWU
	8k+tiRVjTwhduzoo/4IDYoNn+umPX14TWdwMlz7hi53DezXqsjWbXu8XPKKFxrM+Ef7XGB5bG7Lu8
	uiYB04B2xD48cQGBOKMJEpSHU4uQy0ZMgQJgUmPYJT715WhL9yf1qeS7y/GofWWxK7PEQzC4oRwAl
	neCaN3igEESht2yrnYE9FsLkPIkyUQppJscGUysrumkTG/zm4MMjxpRFsloOlonpd2qFj2b7BU9rm
	4O+z16pwNT/YJxLH2Yvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6WC-0000rg-8L; Fri, 22 May 2020 12:11:16 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6Sg-0003Wr-G2
 for linux-mediatek@lists.infradead.org; Fri, 22 May 2020 12:07:43 +0000
Received: by mail-wr1-f68.google.com with SMTP id g12so8731824wrw.1
 for <linux-mediatek@lists.infradead.org>; Fri, 22 May 2020 05:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=w4oNVCj57ugEIKAorgiwr/6ZhMyAJS7/d21wbhVVREFgDobNnsPNnnl0wzfNPGIvcx
 iJsLaX/gM/6OJexLtHL+UEgWQ/Ie371efyRycyFoXc1owXFpLfN7trsim+yWQC8EHONE
 wl1bDzLXkJG502X4CQzRCO/pg8ANFX08KvuAYQqtybM5G33ioTSTwae0nnbCcYuBZmnf
 uXCwj7dSGhQY8fj0Xt+AjeTzbNFfuCjqTzVcG4Xb/CcRE4murxFQ+ORGDNOeANy68FdR
 4z953GHOUhZ3Mu10PtM6oFNTmDEbRv8nI2vWsi3AL7iMeAlfsOoqSoKKGRO6vlpvyYUw
 KYKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nZF4M1Ryr6CWnpRgUMWuRsLTKn/UHmWXZ3+MZTEjA0A=;
 b=SoiNr+S1qKrqA8pPubVdHgkZAIFJhegUzHNCmBh/oAcffOYaKC2Lj8OW3u1deV1bbS
 NtWIgKnfNcCQD1sbyq4ZjcFqweoi/wlQ8Ka2rDtv42GXARSTzNO5iC2kUIumCJW+xGnl
 xLombY3oOY3Ee1DdDtfyUhmNqKiubA5LC7SfwqW5fs5yTsoMJa3M64OuXOdJ1gV3FKHl
 G5cvWitIzGlDPkj6vfNN43GM1/0d6ZAcn8JvRGGiTZimVZeJgYqeT09XJsxkAGHAGCZj
 KSDex8E0JyM4/aaaWSXeiWzozTV48nb9R04aXD6+x6YeKu5c0wHCKzeCRNgl4V540FPs
 +BIQ==
X-Gm-Message-State: AOAM532nIEarsqVodAEmx4IP2WNTa7UsPKte8HmLdtuwkIeFO7+ykOmx
 UV7mOaDLKP9jOoaBBwSVJUhk+g==
X-Google-Smtp-Source: ABdhPJzSAlF/xo0X4V7amcXkOuTqudFkmEG0Vyv0vxLP8Rs1EDgRp8NvMKPwUFcm1KhlXMSc0PUCRQ==
X-Received: by 2002:adf:fccd:: with SMTP id f13mr3320501wrs.386.1590149256443; 
 Fri, 22 May 2020 05:07:36 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 11/11] ARM64: dts: mediatek: enable ethernet on pumpkin
 boards
Date: Fri, 22 May 2020 14:07:00 +0200
Message-Id: <20200522120700.838-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050738_594463_A1A6B6AC 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
