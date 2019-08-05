Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393848178E
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 12:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSDRl/QrIOmkUR0R+rFomaU/dX6vvxGc2aqa1c9sNtA=; b=szLE2qL2qfd0yL
	iJJijZgs8barBgsxqgbMr5wbUvs56ny4rZ7mNh87KqpF4zAAMPqdS00jCHZoVChlngxtuD3s5W3Ns
	i/qNS6MlnoqVfcJeOjgZWGa1sVzt7Y4YyQuTvKzV6Ro16ZpgZQO+fQseaftyo4IIYB3hc9hVsGgQT
	LLwQyrXp31Uqxa52c6Gt4Gk6+Eb6erz+EF4lM8F8tye1Zb+eiHMZHaPw47x+I7jCZiM694GjmDAWd
	/1rX8yOWZNZErg7TfYDnwmSUcNu4sDpD5rADnKwGMDO9IvAGspQes5Kpszofp3ZgPNvOHlFSAYCOE
	pi3dJeb7lB8C+gvsohJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huabF-0004lB-TS; Mon, 05 Aug 2019 10:52:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaZ6-00033X-GW
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 10:50:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id g2so39453414pfq.0
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 03:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5l1zAX3tglSu17y0+NcdOXZzpHJOvHxR1MkiGIIYKYo=;
 b=h5KXqf32FSQbMokwSJ8p/c8n2g5wvIMvxooRpQ0DNAg2WEY1vuugf/r+2gktgjCj06
 5WYIBkDizFPNWrCnFOcfmAEBkOTTAjNIyb7UBlg7PDdC3RbES46qAFeBO2htwpagcbpp
 zqlJXAGKh3lpmz0drPRWGQKqW5kQ+x/z0vXJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5l1zAX3tglSu17y0+NcdOXZzpHJOvHxR1MkiGIIYKYo=;
 b=JEiWqsE1xMwBVh7GLegM+sP0pxa+u5ZURFOIr5SB6UH6YQ1tx7RsqKVQWaKVfYpI/I
 DdTz1Ga8FTmUsZ57sWlm4CiViRjbHDGZgRTX7rlGHq0SypjMNShyNnQByhsH3mYyF0qA
 VgJ7IuyfscJXSS9n3xnFpMGPsYfdecHA/k1hJK/Or+RGsuabCHYGzyrHRp5bzTzSDRaY
 y0yy4HdZPCRcCcizhREnId7mEaTIelTnpIUnBxcR3mN63GWVHX2Fn+zLSNUip1KkkgbP
 2s0pCXeullAfuAf10H6Mh2LFsWP2Kt85K4CY+/F+10BSBwVc2O/hK/1oh22nHwXEu0xd
 mOgQ==
X-Gm-Message-State: APjAAAVH71PUpHx/Hr/0hiRc+YGo+2DqCl952N6jP8jujZvIW3sV2ZLY
 lsMV40+19cScaH83m0MkIKDINQ==
X-Google-Smtp-Source: APXvYqwEq6/5cD4xyHXFqv3BQONYfA4Ng+lXNpMRcPk0mKjRAZiubJ1JEQ/cIp71hIsNz2fTMcls7A==
X-Received: by 2002:a17:90a:c20e:: with SMTP id
 e14mr15282099pjt.0.1565002207586; 
 Mon, 05 Aug 2019 03:50:07 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id 65sm88693864pgf.30.2019.08.05.03.50.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 03:50:07 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v14 5/5] arm64: dts: mt8183: add scp node
Date: Mon,  5 Aug 2019 18:49:26 +0800
Message-Id: <20190805104932.96745-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
In-Reply-To: <20190805104932.96745-1-pihsun@chromium.org>
References: <20190805104932.96745-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_035009_311010_6AF66AB8 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index d8e555cbb5d3..e46e34ce3159 100644
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
index c2749c4631bc..871754c2f477 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -254,6 +254,18 @@
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
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
