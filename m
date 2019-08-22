Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F96898C1D
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 09:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcHqJd3FgDS4xO+ohkGSmGfbUaocLOYa91z+DvP2YFI=; b=SHWLl69USlICBH
	5AwILLNuNmXN2MZGh/3VP+HWz7hJsxQ7n1qwH/clUED8IA75G5z9nHMFYgTYHO5iswWamQe0sXccw
	qYwVCUNRGCG3fXExqKRPni+IAd2Mt3MhRoM9ASvmVuN3uvxZe1RylfhPxuRn25U9I/2i2s4J2syYu
	ormQgBpkIpFNB/zZP9jZBG8Mmx8GvzeiFU6s0K7QqUmDuT0a5yObrmMC8LslLCscvjXyjobb35Uz/
	tbTq2S3f2MlBVXMX4MdFR+onu1ZFnBfr/zh94uWoG6sIOACUMrStf+897x3pskIrFMJ5ZTo4toHsY
	PG/rsXR6xUrDfhrXAwew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h90-0004fM-F2; Thu, 22 Aug 2019 07:04:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h7Z-0004Hx-5X
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 07:02:59 +0000
X-UUID: 5cf88c8a3bbe412d85eb858f00ef9cc6-20190821
X-UUID: 5cf88c8a3bbe412d85eb858f00ef9cc6-20190821
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1881935755; Wed, 21 Aug 2019 23:02:25 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 00:02:23 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 15:02:22 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 22 Aug 2019 15:02:23 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v5 09/13] arm64: dts: mt7622: add a property "num-pwms" for PWM
Date: Thu, 22 Aug 2019 14:58:39 +0800
Message-ID: <1566457123-20791-10-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6BD5DC16D8B0361269CF5B8470E04D1506AF6155591386D93A8E813D15F8DFFA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_000257_974582_F2F99FEF 
X-CRM114-Status: UNSURE (   8.32  )
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

From: Ryder Lee <ryder.lee@mediatek.com>

This adds a property "num-pwms" for PWM controller.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt7622.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622.dtsi b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
index d1e13d340e26..9a043938881f 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
@@ -439,6 +439,7 @@
 			 <&pericfg CLK_PERI_PWM6_PD>;
 		clock-names = "top", "main", "pwm1", "pwm2", "pwm3", "pwm4",
 			      "pwm5", "pwm6";
+		num-pwms = <6>;
 		status = "disabled";
 	};
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
