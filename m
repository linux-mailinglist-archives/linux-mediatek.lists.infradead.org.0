Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDBFA99C5
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 06:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyfWs4b79jaGtsxu90fmaHfU8RTc4sgXqq6bh55w8Es=; b=qB7zQJYU68jir2
	UWgF+YFKJzTBgfRMIdSVzxgVMRp9hLKlaWY9Wv+2VSPoZsYjZir5ton/BnBcgeFCR1skFyntz+y+e
	0BVPJ2O2ZfExrZ/qwRHt0RNb7W8MSd7Ve5lhtYzm9rXS6tfJhWbkAgTCjF5EtHVBUDI4+4l1Mi6TT
	N+BCqi0mzcKu5hdB2Fftv68Z5tj3MraTQtok50GoNE+Y8APkjZOui4GTJEY8/LpyI450FmqTzGqJb
	0iDDuealIJnKqAsbZFwrW7mzBznchD4ZnkGMolskPpwexj2VX5O4N/z7BMq0Nr6Iqw9jtEZTlxwBP
	IOYu/o7Cs9NRF6s2ue3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5jfa-0005Rf-G9; Thu, 05 Sep 2019 04:46:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5jdt-0003Mo-TM
 for linux-mediatek@lists.infradead.org; Thu, 05 Sep 2019 04:45:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id d15so874016pfo.10
 for <linux-mediatek@lists.infradead.org>; Wed, 04 Sep 2019 21:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7VF9YheeXhAjJyIl6t7c6PBAXPHMp5xAy2HeigDHRwg=;
 b=SajC19KKIOWUFXSNHogt2YAD8LpKAtF7I3Nx9j762W1mZnHqg2Te8Y7InfFgU8f+Ni
 DP2Ye9sc51qZ6jB/0GVOoJyU0Am7a9yX9rQ1mlkXyxXvo++Uf2q6zXXITEHmEpSEKMFu
 SAfdfnomboehsJtwgY0tyQzJhO/GyhhxMjIcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7VF9YheeXhAjJyIl6t7c6PBAXPHMp5xAy2HeigDHRwg=;
 b=F4qBGNSyPGpqWzl+XDEo/1HqIK8iPxNBfWgqQuHPTJHJvX1IRopdsqEvuRvvT901nR
 kHzt1EZw55AQRkLRbnXvHh9Xr+3+UoHyN32mvXZuBeK9i2tahRtqi7xHakMRd4015kde
 1AHouAoiWkh8MI6e04/e7r5gx3m2p5g/TUNmZqp5KpM01ks81l6WH2DDBZsdrTMHhnur
 3NWD66ep4gtoToQ0P8oQ4rb1valdBAErr5bkMGrAyIISGI3Q/H+Us3K4UpTvGDndrMyJ
 1a0ErOXr00njN5tEBAQ+GH60kUCV29y7emXWijIbHDP1ucIlCzUkOvPhnPcHgcilF6lK
 6WXQ==
X-Gm-Message-State: APjAAAXzXLBPbiQ3W+AIa49ultYCpaeu9mcghPdzLA9RQM7XILuu6roT
 MF6V7Em+hNpovWzK5WtfVCKSuQ==
X-Google-Smtp-Source: APXvYqxMZptxYLI7o+CommVkXXgzuDHSDKU8IMNUv5EHbjLZDURSjXKksZbRJEvMgcsFw0LnKW3sAQ==
X-Received: by 2002:aa7:9253:: with SMTP id 19mr1501529pfp.126.1567658708199; 
 Wed, 04 Sep 2019 21:45:08 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id v22sm602272pgk.69.2019.09.04.21.45.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 21:45:07 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v18 5/5] arm64: dts: mt8183: add scp node
Date: Thu,  5 Sep 2019 12:44:26 +0800
Message-Id: <20190905044432.150131-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
In-Reply-To: <20190905044432.150131-1-pihsun@chromium.org>
References: <20190905044432.150131-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_214510_383326_3A52B5CA 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Changes from v17, v16, v15, v14:
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
