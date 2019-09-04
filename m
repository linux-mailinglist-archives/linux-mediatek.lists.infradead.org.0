Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDEEA7B92
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Sep 2019 08:20:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmRi2ypbAima1AmjqfumiTEKpxQIE3gff65pVtUhDx0=; b=mZw0hRNIsPZr3v
	xIHzeiwIbr5ig6W6qw0Dj3ebt3nOxAPCJ6xJxGNyhh82OHWKfqHZVqvswIsSRaACBn9N7CcfiyJAO
	OCX3kLYZyuO0tpPggzxlkkQQUnlCT2dttP57s9tslANUCRIooI3qLPF+6hK54RgwabX0Er2b7JvD/
	VKzAHxiiiD0Tfl1OCgY5uSyiL1PBrsfP5xDE7ibQw4cmUX9x6nNP2i1IfDYDEOugGHr6F8f9ouxYp
	2TQ7dVJIKACZCY+525DhkoRKY+9n7WZaARrgcJeLjIkcF1wW/spi6xlylgv7jpDLEkLVskniwqoMN
	kS2SKR+dTTvC7WA1Q3lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5OeG-00038D-5S; Wed, 04 Sep 2019 06:20:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ObU-0001RC-IW
 for linux-mediatek@lists.infradead.org; Wed, 04 Sep 2019 06:17:18 +0000
Received: by mail-pl1-x642.google.com with SMTP id m9so9099265pls.8
 for <linux-mediatek@lists.infradead.org>; Tue, 03 Sep 2019 23:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oal3IaO/tErsls7uIk50scCx56FqEWZJT9dcXkh2oYs=;
 b=hwQ0ejc7gawIBUqdMX1cbLVlApO4fA4Mriygvn96fnvODntwLTrFDhyto/By1coVfL
 rKsVdgKTo7+0OCayATD3gwspix/ktFDP/Ut/HGTin9J74PdE4wCQqx5wNFFQ7nrAeAZl
 cMYTk8cN20mzzMHGRVDsRphub4z4ZeDAISZO0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oal3IaO/tErsls7uIk50scCx56FqEWZJT9dcXkh2oYs=;
 b=n5/Im1I0XUyrjv6hD4niHlr3B5Zffnounzp923eXJCxBT+zTlW0hXhdbmQeBy1PGdy
 FMKIi9tq89D1atvWNQZBj0Naz2QP9iGVlyJUFGRRchiC5YgP3w8aPAqdhx/892xJvEOO
 lCY4N+uPrW2lBJd7D60jnzhjuD73YczvoEo2oZMhmOCfumQprkJMdgBv+arFWYbdLvIB
 bZ1m3BFJ4BMOlDafFL2nbxPWdevnL5i2p+z4ansChRRTyS2KYFS0fvv9f7YVXjxlqego
 H2+Pa/oxBsXzhq+xI0wKq5cJsPxAgdfTUlxPipXIf7l+TRq+6hPr9ixSRWZX+I7iKx6X
 M95Q==
X-Gm-Message-State: APjAAAXQo4QCr6ezoT/NELvWAxNRZ2WZRZHI0DbhO37elYd41OnkZuWU
 +DOHClemg5ZTV2xxTKOSG3dryQ==
X-Google-Smtp-Source: APXvYqxrOY+4WKbKVfDkYMJaSzR20/rot1ZjReA7xzONnTysPAGS6CaTgjER2YlWbqyDmzQvGoq6Pw==
X-Received: by 2002:a17:902:e407:: with SMTP id
 ci7mr39693277plb.326.1567577835907; 
 Tue, 03 Sep 2019 23:17:15 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id r2sm27248750pfq.60.2019.09.03.23.17.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 23:17:15 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v17 5/5] arm64: dts: mt8183: add scp node
Date: Wed,  4 Sep 2019 14:16:43 +0800
Message-Id: <20190904061649.69099-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
In-Reply-To: <20190904061649.69099-1-pihsun@chromium.org>
References: <20190904061649.69099-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_231716_738196_212A584E 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Erin Lo <erin.lo@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Eddie Huang <eddie.huang@mediatek.com>

Add scp node to mt8183 and mt8183-evb

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
Signed-off-by: Eddie Huang <eddie.huang@mediatek.com>
---
Changes from v16, v15, v14:
 - No change.

Changes from v13:
 - Change the size of the cfg register region.

Changes from v12, v11, v10:
 - No change.

Changes from v9:
 - Remove extra reserve-memory-vpu_share node.

Changes from v8:
 - New patch.
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 11 +++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 12 ++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 1fb195c683c3..ddb7a7ac9655 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -24,6 +24,17 @@
 	chosen {
 		stdout-path = "serial0:921600n8";
 	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		scp_mem_reserved: scp_mem_region {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x2900000>;
+			no-map;
+		};
+	};
 };
 
 &auxadc {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 97f84aa9fc6e..3dd1b76bbaf5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -269,6 +269,18 @@
 			clock-names = "spi", "wrap";
 		};
 
+		scp: scp@10500000 {
+			compatible = "mediatek,mt8183-scp";
+			reg = <0 0x10500000 0 0x80000>,
+			      <0 0x105c0000 0 0x19080>;
+			reg-names = "sram", "cfg";
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&infracfg CLK_INFRA_SCPSYS>;
+			clock-names = "main";
+			memory-region = <&scp_mem_reserved>;
+			status = "disabled";
+		};
+
 		auxadc: auxadc@11001000 {
 			compatible = "mediatek,mt8183-auxadc",
 				     "mediatek,mt8173-auxadc";
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
