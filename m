Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9234F11514E
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Dec 2019 14:49:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qY5tFW+q7I4HbQ5nLyo5gdfPGwweq82dWpZAtS/myY=; b=IOn2l2TROLoRWT
	N4ehOnHnmT5DCDLt7ZuunJF9WBKiZ6oynR3k+dBo8My93yi7KAq7bLYZy0kN0Zj2TcPMXf4MST1DA
	U9VhKLgBof3GDURVdfwCRqB8hbFVq8I5hruUcFzZYUaGnQ02nFvr24IWp4MUsM4kg0eTRlocm6Br6
	M3SowhBxSnwqmHv4/xBWU7XGv3DFEueQ0z7008aiPCKEFzBcNRBVrcJ9uK5zkuUywHSv7PJYTDr7Q
	5f1VHklo/c5HsSCuYJIUdAS4BEFDA+ar+A0rkJav7RRanek+J0BHc9aXNky87gclwNW+32XfXvw5f
	XzCWsdN9YJVczdH9fbaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idDyj-0000Tb-GM; Fri, 06 Dec 2019 13:49:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idDyX-0000Jt-U3; Fri, 06 Dec 2019 13:48:55 +0000
X-UUID: 060561d8c13947a492de5c074935e3de-20191206
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=sNkHpXF8izKZUF7qsuSvErydtyfam/Pb0hpHXYo69zY=; 
 b=VbMInmLhpeaoXVO/KLH7Nedr6pfOWIT8Aea2SmyDELWae2WwNpKocp0mCC300trJQsJTQdeeMmybftDglQsQW+YyutWx/S7sqbMf/lgSYQW4OIOib/AwjYqbSAOqnvAMfjUNXy6T6bcPk6roA/RH8VeLkzq43qdSCQKR/pgb4Hk=;
X-UUID: 060561d8c13947a492de5c074935e3de-20191206
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 659333053; Fri, 06 Dec 2019 05:48:50 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 05:39:00 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 21:38:20 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 6 Dec 2019 21:38:00 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>
Subject: [PATCH v6 2/6] dt-bindings: mfd: Add compatible for the MediaTek
 MT6358 PMIC
Date: Fri, 6 Dec 2019 21:32:59 +0800
Message-ID: <1575639183-17606-3-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1575639183-17606-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1575639183-17606-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: A960AAB851E0F3AB78D124C4B94C52CE2F2DB9E07FD6C8593C1F7B2CF3FA17722000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_054853_978175_5AC92962 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alessandro
 Zummo <a.zummo@towertech.it>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This adds compatible for the MediaTek MT6358 PMIC.

Acked-for-mfd-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 Documentation/devicetree/bindings/mfd/mt6397.txt | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index a9b105a..0df4382 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -18,24 +18,30 @@ See the following for pwarp node definitions:
 This document describes the binding for MFD device and its sub module.
 
 Required properties:
-compatible: "mediatek,mt6397" or "mediatek,mt6323"
+compatible:
+	"mediatek,mt6323" for PMIC MT6323
+	"mediatek,mt6358" for PMIC MT6358
+	"mediatek,mt6397" for PMIC MT6397
 
 Optional subnodes:
 
 - rtc
 	Required properties: Should be one of follows
 		- compatible: "mediatek,mt6323-rtc"
+		- compatible: "mediatek,mt6358-rtc"
 		- compatible: "mediatek,mt6397-rtc"
 	For details, see ../rtc/rtc-mt6397.txt
 - regulators
 	Required properties:
-		- compatible: "mediatek,mt6397-regulator"
-	see ../regulator/mt6397-regulator.txt
 		- compatible: "mediatek,mt6323-regulator"
 	see ../regulator/mt6323-regulator.txt
+		- compatible: "mediatek,mt6358-regulator"
+	see ../regulator/mt6358-regulator.txt
+		- compatible: "mediatek,mt6397-regulator"
+	see ../regulator/mt6397-regulator.txt
 - codec
 	Required properties:
-		- compatible: "mediatek,mt6397-codec"
+		- compatible: "mediatek,mt6397-codec" or "mediatek,mt6358-sound"
 - clk
 	Required properties:
 		- compatible: "mediatek,mt6397-clk"
-- 
2.6.4
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
