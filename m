Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43A211A448
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Dec 2019 07:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14TQnpgReUTX9ieFXNEGaSurykDWQjapGS1SfWd47V8=; b=KlmZHEB6rorcQ2
	u1uTxQlXFKT66aw4Gwd0t8u1M3dfiCXI5JllDUQLmgC5rTFtEwvmj4ZJOTkg3xwlG13BGAvBMWa9L
	dDx44U5YRD54JTVjpCQVP/H7n/zJd8pZDv5LXhJn3Jemo1bulLqJyuDqT/HHs9P5/cd0IDeMBqq1X
	4kzXEbdEk0GN7yeQ+uI25v/L0HBn5cg1XM/fTl8kjDNoXGtFD4QyhCOFtXDEfazjIfKHMDtC0Ll9T
	tScO5uGuXqCwe/UqQGlqGnLq7ucKTAWQwn7vL4kXdHICzOw8lxKbUlov8Av01ZOOALAA9fbTFHD9Q
	ncWuTNDYvQIj/cJ7zIFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iev89-0005gE-Dm; Wed, 11 Dec 2019 06:05:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iev7H-0003e0-ME; Wed, 11 Dec 2019 06:04:57 +0000
X-UUID: 9ab1394afef04861b3ce095d62f1314e-20191210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=LJDVcR2SAcZk3iqycmeYvlBCWvpND3jjXyNcWGnWUEM=; 
 b=Nf8cKdLgDxIAth9HXEypWFFNjMVkJsUVUYHw0l1J10GZ0ppGgX9Nqp7ubq2kyTgT9jIL2np2Ojrh6Msqa78dVugUeL0kUTtF9WWYCqNH3tyQp7Dhga4m8LtXl899nrfFYryz94Vb5oBezm/WvFCOnrcP0s24Wm4cZpBc5bDzvYg=;
X-UUID: 9ab1394afef04861b3ce095d62f1314e-20191210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1239864979; Tue, 10 Dec 2019 22:04:51 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 21:55:55 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 13:54:35 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Dec 2019 13:54:41 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v5 04/11] dt-bindings: phy-mtk-tphy: add a new reference clock
Date: Wed, 11 Dec 2019 13:54:16 +0800
Message-ID: <1576043663-14240-4-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1576043663-14240-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1576043663-14240-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5EA98D63D6E1B44A954B71921064B906453A20D26BA268F81B4087B7B640843D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_220455_756437_C0EB6A5C 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Usually the digital and analog phys use the same reference clock,
but on some platforms, they are separated, so add another optional
clock to support it.
In order to keep the clock names consistent with PHY IP's, use
the da_ref for analog phy and ref clock for digital phy.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Acked-by: Rob Herring <robh@kernel.org>
---
v4~v5: no changes

v3: add acked-by Rob

v2: fix typo of analog and needed
---
 Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
index 48bc1a2e9299..a859b0db4051 100644
--- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
@@ -41,9 +41,12 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
 - clocks	: a list of phandle + clock-specifier pairs, one for each
 		  entry in clock-names
 - clock-names	: may contain
-		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
-			reference clock for SuperSpeed anolog phy, sometimes is
+		  "ref": 48M reference clock for HighSpeed (digital) phy; and 26M
+			reference clock for SuperSpeed (digital) phy, sometimes is
 			24M, 25M or 27M, depended on platform.
+		  "da_ref": the reference clock of analog phy, used if the clocks
+			of analog and digital phys are separated, otherwise uses
+			"ref" clock only if needed.
 
 - mediatek,eye-src	: u32, the value of slew rate calibrate
 - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
-- 
2.24.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
