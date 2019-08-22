Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807C498C1B
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 09:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TXdLoPflgLNDJjZOEGfcYgS7x89cNXknDcZHP6bHU8=; b=d1cuxDw9rpPzvZ
	1XYMgbyelDiA7tQdsP6izmJsHUH6MmtYz6OwjgbSl3wIR6XkiyOEeDLmowCsvQ6O2a4WKQkEaKo+2
	QfLT6EoDs/ix23ZsmmQfGe8Us4i4GPr4NwVlsh9ilmVy8muLu1FIwyp4qoLqLnRpdI9jI/L6h47DS
	DyP5Q+Nx95lDtHpphqMdGoM+zE0Cz7/n0DNxZ0IDMfAFMKc0fAB61s3eH+7UeGJ4y1p6JacKy6TIL
	HGhRZ4pA5tZXDyTAZ9hG/jQ/TQfxEjEl8x+BzpOGxFcFbBzKHCbHdEkKi89kKfMEWw2nSmEkLDNmH
	CcJJZ7dfUS7JSa1t610Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h8m-0004Zg-Jc; Thu, 22 Aug 2019 07:04:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h7W-0004HX-0X
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 07:02:56 +0000
X-UUID: a1c3d762d27c44fc93dbfa0ce52681f0-20190821
X-UUID: a1c3d762d27c44fc93dbfa0ce52681f0-20190821
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 76514764; Wed, 21 Aug 2019 23:02:13 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 00:02:11 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 15:02:09 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 22 Aug 2019 15:02:10 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v5 08/13] dt-bindings: pwm: update bindings for MT7628 SoC
Date: Thu, 22 Aug 2019 14:58:38 +0800
Message-ID: <1566457123-20791-9-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 537761E6CC7A8FDED15EE22D21D068B748F25756D1A2E9A01BCF3458085770732000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_000254_844673_021B32FD 
X-CRM114-Status: UNSURE (   8.10  )
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
Cc: linux-pwm@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 devicetree@vger.kernel.org, Sam
 Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This updates bindings for MT7628 pwm controller.

Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
 Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
index ea95b490a913..93980e3da261 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
+++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
@@ -21,6 +21,10 @@ Required properties:
    See pinctrl/pinctrl-bindings.txt for details of the property values.
  - num-pwms: the number of PWM channels.
+
+ Optional properties:
+ - clock-frequency: fix clock frequency, this is only used in MT7628 SoC
+                    for period calculation. This SoC has no complex clock tree.
 
 Example:
 	pwm0: pwm@11006000 {
 		compatible = "mediatek,mt7623-pwm";
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
