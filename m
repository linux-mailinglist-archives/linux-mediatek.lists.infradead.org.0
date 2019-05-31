Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B5A30988
	for <lists+linux-mediatek@lfdr.de>; Fri, 31 May 2019 09:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOVIWq5Wszng5v38ESEAhzERfOktQ0rjBaOp8nClZK0=; b=QWQ25X15X3sODL
	4gAR+dknqY8iPDbTh6dnq2DQLeR32g9M4dEax70S+fgFpFyzsmQkgb+VuclY9vLx6ez3H5mScbn/O
	90X/gD770E4hPlDPFEI36VaCGtlmmJfz0dP3Fv3AV6lBSU8b8C48StlTThRLLUHvz/t4ZKtzQfD4E
	Pc65mhr6EUXHSfSNxo6NIWjWIQKo4VNs1x1c/yh3R4AkTNerhuFObuvbmvZ/hwwF9PKYA/kOh4woh
	NcsRSyEAyTiuVgYM/qhBhX2OLSvrBoCVLjPI3tGEF7ZVPfpCSncLG1CklzthyumkeDV+h9SIALbvh
	DEWL6NTfzKCwLQLwDRhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWc9U-0005Jm-LA; Fri, 31 May 2019 07:40:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWc8N-00034F-Uz
 for linux-mediatek@lists.infradead.org; Fri, 31 May 2019 07:39:43 +0000
Received: by mail-pl1-x641.google.com with SMTP id d21so3671279plr.3
 for <linux-mediatek@lists.infradead.org>; Fri, 31 May 2019 00:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ejdHdx9aJPFDTdLKuLfQa4XoPCSxip4iB0fegeYSrZY=;
 b=Q5wCjFWX0X+zb5g9028sfTh6/jgJd2eQo05xjMOOBPDXrV6g/iI4f2uvL46tPj900R
 C/0u9XYpKeRmSOSCSHy8wo0CGZJ6Y2Hpd6lG+x2lHYFvTPkVLSFCqV+8Mc1RvgE9F7dR
 1e9trXJpBMPtQB+kwjB0LE9lqF8M5eXitaXac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ejdHdx9aJPFDTdLKuLfQa4XoPCSxip4iB0fegeYSrZY=;
 b=mJKr7j9UjemAr/cYnsa9GdttSoBkN5h7YUDYBipWxzpcg530TkTE6C29wX+XtapeUy
 8/Wrk5GICfN+EG/ukRKIrKtirQoAJO4aIAAYCpqqagReQBcbLcyiQE04YijbCHzO+g5F
 jIrdCkdWwhhghaKCglAUEU408tFBD8usPcVA74e4rnV9bsept3+jmJeRt0NhVqf1RF/0
 BraZfrFJjpBemd3NZI4pxkcM+6bVORHeZ071aID5n6TeXvzyEIAAPcUryIVtTMWRr0tn
 ypyxW3FsLP1iTQPJxw7Mvu0A/35jJPmnreRIOiu2EDYU9oTxZ9gMxRS4h2s6mmDY9J3Q
 3ozQ==
X-Gm-Message-State: APjAAAV2jAf6c4lrXulkUTXA71SNqG0on2dWYzEJVfW/SUMX4Rku7Hrj
 o8o0CjcnADNL+GmXGVPKdp7DJw==
X-Google-Smtp-Source: APXvYqwoNtsvmCcTcLY1kQ0tL5LV8FXN4fOgbtLi9YsFY5vxCjPTuvcDxqSO9x0O0gI1118bfseHVQ==
X-Received: by 2002:a17:902:704a:: with SMTP id
 h10mr7466917plt.294.1559288367311; 
 Fri, 31 May 2019 00:39:27 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id r71sm17051741pjb.2.2019.05.31.00.39.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 00:39:26 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v9 7/7] arm64: dts: mt8183: add scp node
Date: Fri, 31 May 2019 15:38:48 +0800
Message-Id: <20190531073848.155444-8-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190531073848.155444-1-pihsun@chromium.org>
References: <20190531073848.155444-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_003928_361162_8FF1C35D 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
---
Changes from v8:
 - New patch.
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 18 ++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 12 ++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index d8e555cbb5d3..8dd74d7aefdb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -24,6 +24,24 @@
 	chosen {
 		stdout-path = "serial0:921600n8";
 	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		reserve-memory-vpu_share {
+			compatible = "mediatek,reserve-memory-vpu_share";
+			no-map;
+			size = <0 0x01400000>; /* 20 MB share mem size */
+			alignment = <0 0x1000000>;
+			alloc-ranges = <0 0x50000000 0 0x10000000>;
+		};
+		scp_mem_reserved: scp_mem_region {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x2900000>;
+			no-map;
+		};
+	};
 };
 
 &auxadc {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c2749c4631bc..133146b52904 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -254,6 +254,18 @@
 			clock-names = "spi", "wrap";
 		};
 
+		scp: scp@10500000 {
+			compatible = "mediatek,mt8183-scp";
+			reg = <0 0x10500000 0 0x80000>,
+			      <0 0x105c0000 0 0x5000>;
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
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
