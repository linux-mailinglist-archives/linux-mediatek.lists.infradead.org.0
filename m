Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3EB1166CD
	for <lists+linux-mediatek@lfdr.de>; Mon,  9 Dec 2019 07:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoD8hFqSybAPR6BOyQ/tGwSYj4q7a9XB6RYD0mdGgKE=; b=RNlbn3DzV/8tla
	aVhe+6ceo1s0BLkDvfYBFoH8e+ynaNWZY64M2JypUnY6COiAXVHVnfNtxFI1xBk/exd0IfBlEAH+h
	4TJLcH4KTnebVU5h5LrAFsXGTYnYIOX5XLzW7lMTYNNEw/MZUuDXixxCSMu8zA+QIXO7b5DLKQEbY
	PnpG2VZxzZFcW39fyCTNbSjQXWd34ta2cKbG1hUe0Oev0tYC9O+hDRw/76NswhVvErgvItqrWzRw3
	la+QZgnovGjyxBBheGPTYtNxIVOXsInzK9GXKFAKZHPZe5+uqFcHoggYqnzhE+FXjIKDYi1MDq7Uc
	0ddN/fQoRbKrajCU88QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieCQG-0006lG-Ae; Mon, 09 Dec 2019 06:21:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieCPI-0005mN-4c; Mon, 09 Dec 2019 06:20:33 +0000
X-UUID: aad314daccbd4aa9888d2a87b626f983-20191208
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=oJ3nyvNQJTsh/vc7Bk6COSatobmBzCxtpcpC/pj/BJk=; 
 b=OirkM0+Fb51r2Z9Ay3kw4UFf7THvfp/3o3by4tUzHhWM80MWlr27YBCObabl5DcFDkDv7Ex2GEXS+BIbBfyH9OX6CbIMD3LGtJhIyMXNgwCfODZDnbGzw7vwSjvNxWzEjLFCtWIB63zV4KUtkVxvpcJkyswAk00sJsglhYMyBBQ=;
X-UUID: aad314daccbd4aa9888d2a87b626f983-20191208
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ming-fan.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1862492166; Sun, 08 Dec 2019 22:20:21 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Dec 2019 22:20:35 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 14:20:05 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 9 Dec 2019 14:20:11 +0800
From: Ming-Fan Chen <ming-fan.chen@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: mediatek: Add binding for MT6779 SMI
Date: Mon, 9 Dec 2019 14:19:30 +0800
Message-ID: <1575872371-671-3-git-send-email-ming-fan.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1575872371-671-1-git-send-email-ming-fan.chen@mediatek.com>
References: <1575872371-671-1-git-send-email-ming-fan.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_222032_194441_0C0D55BA 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Joerg
 Roedel <jroedel@suse.de>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>, Ming-Fan
 Chen <ming-fan.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch add description for MT6779 SMI.

Signed-off-by: Ming-Fan Chen <ming-fan.chen@mediatek.com>
---
 .../memory-controllers/mediatek,smi-common.txt     |    5 +++--
 .../memory-controllers/mediatek,smi-larb.txt       |    3 ++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
index b478ade..b645736 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
@@ -5,7 +5,7 @@ The hardware block diagram please check bindings/iommu/mediatek,iommu.txt
 Mediatek SMI have two generations of HW architecture, here is the list
 which generation the SoCs use:
 generation 1: mt2701 and mt7623.
-generation 2: mt2712, mt8173 and mt8183.
+generation 2: mt2712, mt6779, mt8173 and mt8183.
 
 There's slight differences between the two SMI, for generation 2, the
 register which control the iommu port is at each larb's register base. But
@@ -18,6 +18,7 @@ Required properties:
 - compatible : must be one of :
 	"mediatek,mt2701-smi-common"
 	"mediatek,mt2712-smi-common"
+	"mediatek,mt6779-smi-common"
 	"mediatek,mt7623-smi-common", "mediatek,mt2701-smi-common"
 	"mediatek,mt8173-smi-common"
 	"mediatek,mt8183-smi-common"
@@ -35,7 +36,7 @@ Required properties:
   and these 2 option clocks for generation 2 smi HW:
   - "gals0": the path0 clock of GALS(Global Async Local Sync).
   - "gals1": the path1 clock of GALS(Global Async Local Sync).
-  Here is the list which has this GALS: mt8183.
+  Here is the list which has this GALS: mt6779 and mt8183.
 
 Example:
 	smi_common: smi@14022000 {
diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
index 4b369b3..8f19dfe 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
@@ -6,6 +6,7 @@ Required properties:
 - compatible : must be one of :
 		"mediatek,mt2701-smi-larb"
 		"mediatek,mt2712-smi-larb"
+		"mediatek,mt6779-smi-larb"
 		"mediatek,mt7623-smi-larb", "mediatek,mt2701-smi-larb"
 		"mediatek,mt8173-smi-larb"
 		"mediatek,mt8183-smi-larb"
@@ -21,7 +22,7 @@ Required properties:
   - "gals": the clock for GALS(Global Async Local Sync).
   Here is the list which has this GALS: mt8183.
 
-Required property for mt2701, mt2712 and mt7623:
+Required property for mt2701, mt2712, mt6779 and mt7623:
 - mediatek,larb-id :the hardware id of this larb.
 
 Example:
-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
