Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECF7F354
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Apr 2019 11:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vI8T7D9dFzfsEDUiDKHmNs83tf8fV0FgzSZUioq9NWg=; b=Bx8YiCnYB2gUam
	Y56BbBkHeYkXUmRrsPQbqcUaeswj8yIWbqo4eegVrRvJI4dHPHP0DNey5mE+KJu/CyPCZhMIhOtau
	WxgB+8zFXm/k9EU5HsZlm21EZLZbju9ptyZsD5HaOWBijItSFtYc7rAKNhd2qO+kmT1SEQkZVTucH
	JCDFjRkcUlq2IwtZ6/1ZJcyr7a2TbooX9ZuvGT3+mAbTixnKpZJ4Jctdj3CV+2RMi5HYwx/vZ8N/l
	e5ea2AhH2tm1DMVh+VNjc/zgd84D00xnvsvoj0/n3p33C7za4ffFIKFtsmchVw0ocpXoHkXRpvFAL
	jfejIlfE3nEF9wEjO3FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPKj-0000cc-Jf; Tue, 30 Apr 2019 09:45:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPKL-000050-8L; Tue, 30 Apr 2019 09:45:30 +0000
X-UUID: cff18b7ac38d40f9bb6401b72b51a273-20190430
X-UUID: cff18b7ac38d40f9bb6401b72b51a273-20190430
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1263179399; Tue, 30 Apr 2019 01:45:23 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 02:45:21 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 17:45:20 +0800
Received: from mtkslt205.mediatek.inc (10.21.15.75) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 17:45:20 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>
Subject: [RFC V2 08/11] dt-bindings: interconnect: add MT8183 interconnect
 dt-bindings
Date: Tue, 30 Apr 2019 16:51:02 +0800
Message-ID: <1556614265-12745-9-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_024529_308304_A157973A 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Nicolas Boichat <drinkcat@google.com>, linux-kernel@vger.kernel.org, Henry
 Chen <henryc.chen@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add interconnect provider dt-bindings for MT8183.

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 .../bindings/interconnect/mtk,mt8183.txt           | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt

diff --git a/Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt b/Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt
new file mode 100644
index 0000000..1cf1841
--- /dev/null
+++ b/Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt
@@ -0,0 +1,24 @@
+Mediatek MT8183 interconnect binding
+
+MT8183 interconnect providers support dram bandwidth requirements. The provider
+is able to communicate with the DVFSRC and send the dram bandwidth to it.
+Provider nodes must reside within an DVFSRC device node.
+
+Required properties :
+- compatible : shall contain only one of the following:
+			"mediatek,mt8183-emi-icc"
+- #interconnect-cells : should contain 1
+
+Examples:
+
+dvfsrc@10012000 {
+	compatible = "mediatek,mt8183-dvfsrc";
+	reg = <0 0x10012000 0 0x1000>;
+	clocks = <&infracfg CLK_INFRA_DVFSRC>;
+	clock-names = "dvfsrc";
+	ddr_emi: interconnect {
+		compatible = "mediatek,mt8183-emi-icc";
+		#interconnect-cells = <1>;
+	};
+};
+
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
