Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797EEF8D8F
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 Nov 2019 12:06:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZcqB6C5vuY9cKIrqjUgNzYAh4gRDBi8RP//U6sAhuw=; b=Ct0BIFHeYJZDVl
	U1+G2QbW/Cf4Clr2g3D+sA0uEl7zyQIo8kw3b+EJyyapWww7z2ykIWQdgZAgSkI+dtF/HyRmGEUxu
	Wq3re88KN8CexlK8TmxM2yb8oA4Z1QSaxQsoren1SAQkJR4dEjszsJJ4ikjiKWzOhK+8oXBC2JoEo
	rWriHH55RcTTsuXaaPFP4Hjs4m1qfbTuNS7Q1+VojXxyhN0/z4MBLgEyrwiZl2yEv9j6pWGgFwdQS
	Exg5mRQw0hHBk+6MgYs58MzPzyv3jl3/J5BqxJoPaogJUKopanieJVaJbciDa+N2E1rCzt9Xb+DYe
	x3jgPTK/pFYOB4ScWZGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUTze-00081w-UI; Tue, 12 Nov 2019 11:05:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUTyR-0005mK-Kf
 for linux-mediatek@lists.infradead.org; Tue, 12 Nov 2019 11:04:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id l24so11598797pgh.10
 for <linux-mediatek@lists.infradead.org>; Tue, 12 Nov 2019 03:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gpsL+1OsfAr2EbSe7/d6AgWIawat7sBvrVvMWd1mlyI=;
 b=Q88zUNqMQUpbDmlFg31NtvbjEfiLkeIvDZ0qmbtAoJcLECe9708wdE4XVjMIpiIlJm
 uUxdBDo0ZlZ/1XDgsGTZGAVA/VckiGDwD7eTp5FGI09QmDiaYB10riXEcVUYxupTWFcY
 F2v/jEvdXbnBP/iXmrdqM/XMkkX7al8P20mC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gpsL+1OsfAr2EbSe7/d6AgWIawat7sBvrVvMWd1mlyI=;
 b=IP7oNHIvajhPv5hfckK1FVP72/AywSus+5iy68oAEZcWvQwcWIpLXjrsjwmhB0kYqI
 qraWkNNfvI7AfcaoWcYM1aWhH/a5GA++qhDzXEtJih1Db6zdSR6TC86SQYqWzJC1ftEL
 e1GJWmnJKDopKxBQaKlJBmOYc2mnpcoC2YAX+Du2ArOlz5BUC6NikmTdeYw1CtpCh8h+
 OLdcqxG4usaMCV0yCObYQes6b3PQiCMtakgcGP3J5+v5OYHWmketiEguLdCzWuDR1D9w
 HmerBKd8VRKRGaamqSZ9NEQCAeFuQxJNq6UGTS2bt297Lcs0qcCRJqtheI0GWDodoZ7U
 UO9w==
X-Gm-Message-State: APjAAAX9fmpAi+YZTAm/xhe02g8v6TpKMIfOzWMV3YV9teMA+sqZ0wqN
 9tOYZxfP9DY/kVX2a9oszhZ/kQ==
X-Google-Smtp-Source: APXvYqxMiABHPJiamwCTFkQ4ycRR49FAHvMVRQSIWpI9Zma4/9WH24j4MvYSest6clRhSEMMoSwrAw==
X-Received: by 2002:a62:ac06:: with SMTP id v6mr35247435pfe.210.1573556677548; 
 Tue, 12 Nov 2019 03:04:37 -0800 (PST)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id 6sm21528389pfy.43.2019.11.12.03.04.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 03:04:36 -0800 (PST)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v21 4/4] arm64: dts: mt8183: add scp node
Date: Tue, 12 Nov 2019 19:03:27 +0800
Message-Id: <20191112110330.179649-5-pihsun@chromium.org>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191112110330.179649-1-pihsun@chromium.org>
References: <20191112110330.179649-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_030439_853239_1F8288D2 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Changes from v20 ... v14:
 - No change.

Changes from v13:
 - Change the size of the cfg register region.

Changes from v12 ... v10:
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
@@ -24,6 +24,17 @@ memory@40000000 {
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
index 10b32471bc7b..e582f5e6691d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -269,6 +269,18 @@ pwrap: pwrap@1000d000 {
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
 		systimer: timer@10017000 {
 			compatible = "mediatek,mt8183-timer",
 				     "mediatek,mt6765-timer";
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
