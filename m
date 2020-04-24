Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADD01B6F66
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 Apr 2020 09:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zo3J2cFVVRarmqLTmsnzbqvcYiIYKo72HZrkzsmxez0=; b=EgpGsIJy27S7T8
	7lm/6xAcGplreB+s6j9em2npQzA1QxY59v0nLKxMls6r1+8K4YNMIKV9up1e7YGkN2TnqbUOdO3Qy
	HSR1lpDzBn3qvOwD5a0PJBahkbgMO2LHQm12FycQKvCp45KelxwEwMMFJzB8M0kdpZO2iFQDA1WXH
	Melxt5plLCl0UUWQmcljMv0vEEDPh+1XiEXQXf/j3EgBe/AfTxjMoAQxuS2IaIcsnZ6T/lAtEP3VN
	SAUPWiuTzcQITuJ4Xv/+7taIf9VZIKQr8ycq+EwJ781ub34pOPkk5WCP838ZcEl5nK3zfrsKRndYY
	OvzWbKqHtfK5DYG6rEtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRt6H-0002yT-2X; Fri, 24 Apr 2020 07:50:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRt6E-0002xy-Ap; Fri, 24 Apr 2020 07:50:15 +0000
X-UUID: 8fa0dcd16a4e4822ba2d8d4e5d1047b3-20200423
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=TGTl6pQNQgkA/N1LJ9tQCq0BeEV1GoiphNNPW0tMqhM=; 
 b=mBIGmXaGn7DNbs+CdEYFFVdoacHrZrzgN14Zdeq1MggFG2x3DSHhL22LnNtTFoLpd7rWxtqg5xLSJCZLYBVevakXumwRDDl3fwy3yk3ab5fmeX9Ht+fyE78558yfrGFBoNcTYsBHcHrGzmNc5TQNOR59qq/VamhsU+NDSpiYl6Y=;
X-UUID: 8fa0dcd16a4e4822ba2d8d4e5d1047b3-20200423
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 925678265; Thu, 23 Apr 2020 23:49:58 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 24 Apr 2020 00:46:17 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 24 Apr 2020 15:46:15 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 24 Apr 2020 15:46:15 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>
Subject: [PATCH] arm64: dts: mt8173: fix cooling device range
Date: Fri, 24 Apr 2020 15:46:15 +0800
Message-ID: <20200424074615.2835-1-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_005014_382286_AD2E3CEF 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Michael Kao <michael.kao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

When thermal reaches target temperature,it would be pinned to state 0
(max frequency and power).
Fix the throttling range to no limit.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index ccb8e88a60c5..11b1bd55ba9b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -294,14 +294,18 @@
 			cooling-maps {
 				map@0 {
 					trip = <&target>;
-					cooling-device = <&cpu0 0 0>,
-							 <&cpu1 0 0>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT
+							  THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT
+							  THERMAL_NO_LIMIT>;
 					contribution = <3072>;
 				};
 				map@1 {
 					trip = <&target>;
-					cooling-device = <&cpu2 0 0>,
-							 <&cpu3 0 0>;
+					cooling-device = <&cpu2 THERMAL_NO_LIMIT
+							  THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT
+							  THERMAL_NO_LIMIT>;
 					contribution = <1024>;
 				};
 			};
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
