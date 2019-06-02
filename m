Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABAA3215F
	for <lists+linux-mediatek@lfdr.de>; Sun,  2 Jun 2019 03:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znLn8aFRQtdzBOQgoW1B1ps8CdIZF6gRkHa/lvhqlMA=; b=uuPBzUHq89egrx
	STjpCVCz0L/PXvoo8Zidf5/KdZ+Mi7YiIacF/VD3u18d8d7mBb4B4zxV8i2CgGHr1uXzlDtza9sz1
	o3tn4NI+0qNPZKiPYP+Zr9I8gOb6VaHQ53cv+eKYZ53eYOBUnDl928jHGSVwmCV5W8xdTW7qji6B7
	hLsDoj/BwgycqjX7nAyLKiDadr1EHvq1FXp+oOtTFgk1qeyc/n0KXkfSBsTq0oVb/jfEp8mirhe2v
	IqrsnMIyB0UF9vgtqcNhkwAhJIvrJS7zKiYydg0ypZo4UgCgG/kPL3/80Eai9dhZe3vMuJEJGaRKL
	sRJJZED/iz1Xyao9U+1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXEvz-00026L-5m; Sun, 02 Jun 2019 01:05:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXEvi-0000jA-KK; Sun, 02 Jun 2019 01:05:00 +0000
X-UUID: 23decfbdf8ea457a8695db79ea6c22b3-20190601
X-UUID: 23decfbdf8ea457a8695db79ea6c22b3-20190601
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 979503609; Sat, 01 Jun 2019 17:04:25 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Jun 2019 18:04:23 -0700
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 2 Jun 2019 09:04:22 +0800
From: <sean.wang@mediatek.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <marcel@holtmann.org>,
 <johan.hedberg@gmail.com>
Subject: [PATCH v1 2/4] dt-bindings: net: bluetooth: add clock property to
 UART-based device
Date: Sun, 2 Jun 2019 09:04:15 +0800
Message-ID: <1559437457-26766-3-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559437457-26766-1-git-send-email-sean.wang@mediatek.com>
References: <1559437457-26766-1-git-send-email-sean.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_180458_695234_AB43452B 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Some board requires explicitily control external osscilator via GPIO.
So, add a clock property for an external oscillator for the device.

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 Documentation/devicetree/bindings/net/mediatek-bluetooth.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt b/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
index 14f23b354a6d..112011c51d5e 100644
--- a/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
+++ b/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
@@ -73,6 +73,10 @@ Optional properties:
 - reset-gpios:	GPIO used to reset the device whose initial state keeps low,
 		if the GPIO is missing, then board-level design should be
 		guaranteed.
+- clocks:	Should be the clock specifiers corresponding to the entry in
+		clock-names property. If the clock is missing, then board-level
+		design should be guaranteed.
+- clock-names:	Should contain "osc" entry for the external oscillator.
 - current-speed:  Current baud rate of the device whose defaults to 921600
 
 Example:
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
