Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED388E56C
	for <lists+linux-mediatek@lfdr.de>; Thu, 15 Aug 2019 09:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYBSts90VxvQ4a2GSz6HvqWzUUhQzvKjYnXE9vu79MU=; b=QYTm8KSNCQTE7A
	DouDje1UFxeFO0hTYr+XLwg3u7zKFk91lnmY3Eo0Pj7chw6RvwyfXKdzQo+dkyrZwWI9MtyyVJJIX
	WgkjEybR2AMuthyXcdA7uV0GsknfefVgWd/e4ET1RAuwPE56n7QkhU4DU4/cIlpu4b1PLHtH19YYm
	bISuHvr23G/bJkYN7+fOzrYOz464HjRfoaEKQlq8ntg4n5po4Tn+BeRYS71XIQOHxbQHIZXI6K/Pj
	Q4HquTwhF6tR6clpC4+Y4TfFkTBo8dfKGwqHcTumcjK9Fk+aZyW6uHDfRM3WkCgNOBRjbqz3qJYNj
	lXSN67EvcVaEf2b371cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyA21-0006BT-NR; Thu, 15 Aug 2019 07:18:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyA0K-0004rF-1k
 for linux-mediatek@lists.infradead.org; Thu, 15 Aug 2019 07:17:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id o70so937039pfg.5
 for <linux-mediatek@lists.infradead.org>; Thu, 15 Aug 2019 00:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FbCBYSU1nfsHewNHQ4KTvWY4A7SNrbqlgoUU3L19JX8=;
 b=IxZwHeqpp9zQVfhMHP7FAyb64pb90U2hrlKJLMwF1tO8f3c1V/fwyliKqpRh1XVpQ+
 yskXJlRbxmnw3DVlWpxnE7cT8cFVhHtAq0FPvJC7iMXKSUQEYJVJIUaM33axRaJ0mJ8m
 faaw1WLv4b1ykDDYFxq6CaejK3m4c0GUfxiRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FbCBYSU1nfsHewNHQ4KTvWY4A7SNrbqlgoUU3L19JX8=;
 b=loVbANUQaXA23lODP2kEWqRlFCeSM41TJXtrjIa0aXekI8KcwNivznGbL9pddBJ8w3
 22YnGOrYko3Vivkn/VcZB/qJLlI0w6FSJTupoESjHeb3fUZ+laczvAssJ7ajde4KlxpL
 3nl3KgzqYO6Hm7V7viNu/u+cTqcaCfDbBZLhkperQblt6w8jh5lKl4j13VMGbuCYdt7+
 aU3cbEhpfOaY3vFtnaF7nqDDtZ8s0foqVMHKuUhn2pPfx0GVQFW/iB3PpkRK9DeqHH3f
 jV7qvZopFENJqgUvDkb9G/g6bHTpDAb7Tcpvw41eZsj8/rsO+KOm/ezYCJOr1/8lxex9
 HC+w==
X-Gm-Message-State: APjAAAVuGVVKmT9tTHPVIxnlaWsKR5mx8tx8xg1GMQO0IQKb9WRaoGte
 PayEZmmtN1TzTpP/9T4Cqk5REg==
X-Google-Smtp-Source: APXvYqwun6YIKdichg14vWTQWHLP/MYNMqelFCbz1cqJZWSpnJ542WlL0eGe1uMKSI2tcciOCWBaAQ==
X-Received: by 2002:a63:195f:: with SMTP id 31mr2476394pgz.225.1565853419431; 
 Thu, 15 Aug 2019 00:16:59 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id v6sm1768727pff.78.2019.08.15.00.16.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 15 Aug 2019 00:16:58 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v16 5/5] arm64: dts: mt8183: add scp node
Date: Thu, 15 Aug 2019 15:16:29 +0800
Message-Id: <20190815071635.168671-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
In-Reply-To: <20190815071635.168671-1-pihsun@chromium.org>
References: <20190815071635.168671-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_001700_121379_51C4169B 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Changes from v15, v14:
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
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
