Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D212E4327A
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Jun 2019 06:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mmchy0cgqryJH8VCBt9FA86HAeeF0eRDRQyWLl2z2k=; b=YGiNMGdN+4x4qM
	ZgBCb1Pk5i7lK4gVHuVlVmA31jhQacBjpPTcxzhMQ+TcaEo+eNTfkCpP9B/MpupWnez4KHzeTbT+i
	PuU/Xo5GjaWlKr+4C8wmtYTd7YD6Qvc+4QtH2zggOzuNIc4ooO4Yf9RPID5GVMBz1fozIRgW7xPvr
	L37+viQexaPh4ErcoIvclXYvzD3E1FKhDQ5wAMus0yhInzTMxj9yFPeyFR2JVBVonkTOFmp4c+IpA
	qywsQBjmK4agzh/kUvmxfjjiavAVRUDqm/k9ialnTcv+pVVcSrcVWrJrUv+jxp0NFrK/ZnEjg1mEX
	oO5lJDR2RBp66QYT+o2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbH3O-0007nE-8b; Thu, 13 Jun 2019 04:09:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbH1i-0006Bj-FX
 for linux-mediatek@lists.infradead.org; Thu, 13 Jun 2019 04:07:54 +0000
Received: by mail-pg1-x541.google.com with SMTP id v11so10122695pgl.5
 for <linux-mediatek@lists.infradead.org>; Wed, 12 Jun 2019 21:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lfGAIiirWl0nq0xQZNMDSMKFfgaKJNsts8bTk+SJ4Kc=;
 b=kIpFm8Uc3gMN7cY/f4FOgPfIeA/9vYsgAIqeb8GD6KvPMC2lWIZKOD6s2OQbP4fw0U
 8AAVUUUiKsgfEoRwZRyQc7YeuxBcsWkB5ZmmTWNWMKl00ONQz6jkp53/jq0UtSOcWRCf
 S+EMJdIuhtotXqDbY2dYGqhPIP3hkQ6oE+dVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lfGAIiirWl0nq0xQZNMDSMKFfgaKJNsts8bTk+SJ4Kc=;
 b=CzhOi42JKWcF6zQGfVTBobFE9q2MszyUYHuZEmVgqTsSPMXckYhWTs+YhXP5vW6akS
 x+rsUkZXw19ljnerg1M/F2QfPFJAycAHC+jgRFf1UOqpGz+v6sBdNUY4ii5b4jCUh/dW
 pV11hFiR0VWc0SobEBHe61yFpUxNM5ZLbFavtvcMtxdmDth7dUqUBKss4A9R+uOQii7p
 8iv+QzQjkCsiveivDn/lXVNWf7bwNhWTGDuwjWp8rHPkNm5whWJtIl/XlCssJp7UBeT6
 MkOtADFlBDbgQ43aXlfVgrHwmqGMM1xN4rNnIewcF10hvCVdo6I1aLOHVWlSLBMPPMlV
 Pdqw==
X-Gm-Message-State: APjAAAXHH+IVNBDBNfcFp+vnwWa+6wxGjovrnZpjqSWJforHpCiWWZWj
 9gscW2spuuPLQYnZkhiqhEA0sA==
X-Google-Smtp-Source: APXvYqzA8cwBTsrR0gt9uDW70cCt1Y7F0MO9epqJK78JcRhYLfxAGcVRCaUHubB2xwG8abq4iqMeZQ==
X-Received: by 2002:a17:90a:a601:: with SMTP id
 c1mr2704985pjq.24.1560398869389; 
 Wed, 12 Jun 2019 21:07:49 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id a13sm956849pgh.6.2019.06.12.21.07.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 21:07:48 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v11 5/5] arm64: dts: mt8183: add scp node
Date: Thu, 13 Jun 2019 12:06:52 +0800
Message-Id: <20190613040708.97488-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190613040708.97488-1-pihsun@chromium.org>
References: <20190613040708.97488-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_210750_605289_6B163600 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Changes from v10:
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
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
