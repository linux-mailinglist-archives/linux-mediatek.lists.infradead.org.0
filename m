Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB691FB115
	for <lists+linux-mediatek@lfdr.de>; Tue, 16 Jun 2020 14:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ImSQ0VbpKoTyF/nH0avEvjmJV+Ln/bWLx6G5P8pZvA4=; b=kir7xlGn4sPPgH
	HuMr41O9mB7a0bDVN/rG9Z9Obbi+VLGRzFwQ912o1gwDnor3jDr3sbhpm6I1E/p9HiDmAfrN0yM40
	SxIbEYE08tVP5pJpCPHQEYzpFs5c9Imnmjzt9wZqGJks79LuYe25B5KmUJZ4odLzsBLOpt1NV/abT
	Q/+PSFEnFYEp0jugbtJx+bJ7hvr1H509nrCUBe2tvD7ypMXR6wQuTbSw4iIXbvIlSKRBSHWuO/46f
	0jb690NVT454Fh8R/WdQ1pBWAevSCXbVBkHTXj3IWZ2kDb9pJPXD0WScPAxePmKSJxv6S09xCq7S5
	irI0LRqOwdbHITgLLTtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAzR-0007h4-6X; Tue, 16 Jun 2020 12:46:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAzO-0007gd-9I
 for linux-mediatek@lists.infradead.org; Tue, 16 Jun 2020 12:46:55 +0000
X-UUID: 1c8117dd0c684cc48aeea3dc6c38b463-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=0zUnaVwf7NdA/yxdczKheQ3t79GOtZpyyLqwBUW4cDQ=; 
 b=eVT3ivPdcv/5LzJaK5A6lCIiDzfBF+GbdLrQGwzRxSJi3mBODXCsDmVOXU+THReKkCwBvxQXdLXtjmG/rD7wAUdHGPmzdj0apRxlLB+z5SCyREHgGDpG13OnvAF+7CY3QKUBDihZoWbZxXy/dsPQNT1Us5voWdRbe2aMq80yruk=;
X-UUID: 1c8117dd0c684cc48aeea3dc6c38b463-20200616
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <shayne.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 860106946; Tue, 16 Jun 2020 04:46:37 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 05:46:44 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 20:46:43 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 16 Jun 2020 20:46:43 +0800
From: Shayne Chen <shayne.chen@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>
Subject: [PATCH 1/4] dt-bindings: net: wireless: mt76: add ru property in
 power-limits node
Date: Tue, 16 Jun 2020 20:46:10 +0800
Message-ID: <9ae2b6233284b60206e3513f7bf2eb03d2fbd724.1592276165.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_054654_330858_1DEA34F6 
X-CRM114-Status: UNSURE (   8.55  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>, Evelyn
 Tsai <evelyn.tsai@mediatek.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 linux-mediatek <linux-mediatek@lists.infradead.org>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This new property of power-limits node can be used to set per-rate
tx power limits for 802.11ax rates.

Cc: devicetree@vger.kernel.org
Tested-by: Evelyn Tsai <evelyn.tsai@mediatek.com>
Signed-off-by: Shayne Chen <shayne.chen@mediatek.com>
---
The series is based on Felix's https://patchwork.kernel.org/project/linux-wireless/list/?series=295809
---
 .../devicetree/bindings/net/wireless/mediatek,mt76.txt | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/mediatek,mt76.txt b/Documentation/devicetree/bindings/net/wireless/mediatek,mt76.txt
index 9d9ace0cfbf9..aefe880d36ff 100644
--- a/Documentation/devicetree/bindings/net/wireless/mediatek,mt76.txt
+++ b/Documentation/devicetree/bindings/net/wireless/mediatek,mt76.txt
@@ -101,6 +101,13 @@ Properties:
 	which the rate set applies, followed by either 8 (MT7603/MT7628) or
 	10 (all other chips) power limit values.
 	The order of the channel bandwidth settings is: 20, 40, 80, 160 MHz.
+- ru:
+	sets of per-rate power limit values for 802.11ax rates for multiple
+	channel bandwidth or resource unit settings.
+	Each set starts with the number of channel bandwidth or resource unit
+	settings for which the rate set applies, followed by 12 power limit
+	values. The order of the channel resource unit settings is:
+	RU26, RU52, RU106, RU242/SU20, RU484/SU40, RU996/SU80, RU2x996/SU160.
 
 
 power-limit example:
@@ -114,11 +121,14 @@ power-limits {
 				ofdm = <23 23 23 23 23 23 23 23>;
 				mcs = <1 23 23 23 23 23 23 23 23 23 23>,
 					  <3 22 22 22 22 22 22 22 22 22 22>;
+				ru = <3 22 22 22 22 22 22 22 22 22 22 22 22>,
+					  <4 20 20 20 20 20 20 20 20 20 20 20 20>;
 			};
 			r2 {
 				channels = <100 181>;
 				ofdm = <14 14 14 14 14 14 14 14>;
 				mcs = <4 14 14 14 14 14 14 14 14 14 14>;
+				ru = <7 14 14 14 14 14 14 14 14 14 14 14 14>;
 			};
 		};
 	};
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
