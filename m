Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6C41338F0
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 03:02:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F5ecazHtZjD/KwbrMCPEzd1HmMHtUleUHEGY5TIzAZU=; b=C3hWvoWMDWeZuR
	LcrEeFumj8Eb2GnaEQBER3RTnMIrQbCLD65jV9fxCAqSYophTnRiDWFiAU2kGff3PYSoQ32H+BCDm
	u5q84xD+ZDAR92fdI1fVVSh7EVkc0lR/2RHbW88u5x0MUQTDGyXJANvTI9O8JfYsMyrYrmPEOGKHb
	Rel5ftolpnHxHXLNRkVYLWEpJLE9rImC9e5T+6OKEioUp2Y+iPxO93MWp1YDbY2Y4TfWSXwCMrgPB
	8tZrMTCQm8RdkdG3uhmuW9Ho28MN2LELPNohuhYyXLHw6Q+L/xDy6qf0tM90yrr7HeS9btuEmvc0L
	8I4fQuoVXUbOssBUUGDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip0fk-0001Og-EQ; Wed, 08 Jan 2020 02:02:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip0ek-0000In-8n; Wed, 08 Jan 2020 02:01:11 +0000
X-UUID: 90c684595c2b4175a1b3021969ab2661-20200107
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=8qhhdoDqZ+CygTdbYi8g0Gw9RSr1TQM9pKMrc5q2zEY=; 
 b=r0Ra852KID0fiJZkI+FioUo91ePEKaes3Pxf1UAfeDqCQ+/EVCSwR8RYTe9C9hZxeNp3Bczfd2trciWXwtO77OD8GML2JTB6E8PHOa9hRPJtGrbqTQDUP+BeU02Cx+TG7Xm3Zj0ZLoE8vWHKX9N+L4e1vts1lDtnD1qfAShyMG8=;
X-UUID: 90c684595c2b4175a1b3021969ab2661-20200107
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2044906677; Tue, 07 Jan 2020 18:01:02 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 17:53:00 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 09:51:47 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 Jan 2020 09:52:56 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [RESEND PATCH v5 01/11] dt-bindings: phy-mtk-tphy: add two optional
 properties for u2phy
Date: Wed, 8 Jan 2020 09:51:56 +0800
Message-ID: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: AE60D5760CD9F0D4BC52BF08A0193871E03F54A712E21FCC77450FF9408ABF492000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_180110_361032_3DB85B03 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add two optional properties, one for tuning J-K voltage by INTR,
another for disconnect threshold, both of them are related with
connect detection

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Acked-by: Rob Herring <robh@kernel.org>
---
v5: add acked-by Rob

v4: no changes

v3: change commit log

v2: change description
---
 Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
index a5f7a4f0dbc1..ce6abfbdfbe1 100644
--- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
@@ -52,6 +52,8 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
 - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
 - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage
 - mediatek,bc12	: bool, enable BC12 of u2phy if support it
+- mediatek,discth	: u32, the selection of disconnect threshold
+- mediatek,intr	: u32, the selection of internal R (resistance)
 
 Example:
 
-- 
2.24.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
