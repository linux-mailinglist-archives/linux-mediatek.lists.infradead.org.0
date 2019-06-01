Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7F83188C
	for <lists+linux-mediatek@lfdr.de>; Sat,  1 Jun 2019 02:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64AqKaq1gGNRdeCDGn7zS+EE23QGEYJjW+6kBzavg6c=; b=PiCR3SEm7wDHtX
	OgXKo6aGMCBmNMYDezgjIPAW2GZ1avx7FO2bI9CAMH5OWpfu1H1l2EKyaz7/XfaE5OsuoQk/3CfvD
	LMqMHRSIMaoVh9h6g3sYb+nJTwpCLwb/y7XOb+L+3NPcG8cjfLkAPbmamy5PU6DW8WCf8/BnPqDj9
	609GCXv9DBWM0rP068gFpo3bNDpElISUzPw+nYChkng/nX0cKWnWgoUbLTo1rMS9vmdZhGkCdzbYn
	TfXU3HXv2jAM4/ULOnplVGtEzKmFo/EZS1G6CXf1G2a353pcWVF7C7xuN5wI3OGOTEqFAlzo1pWaW
	R97KFITd9wCguY/paysQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWrUn-0000sE-3j; Sat, 01 Jun 2019 00:03:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWrUf-0000nG-Uy
 for linux-mediatek@lists.infradead.org; Sat, 01 Jun 2019 00:03:31 +0000
X-UUID: ad06c383ea4145df8aa34e284050d974-20190531
X-UUID: ad06c383ea4145df8aa34e284050d974-20190531
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 671795375; Fri, 31 May 2019 16:03:22 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 17:03:21 -0700
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 1 Jun 2019 08:03:19 +0800
From: <sean.wang@mediatek.com>
To: <john@phrozen.org>, <davem@davemloft.net>
Subject: [PATCH net-next v1 1/6] dt-bindings: clock: mediatek: Add an extra
 required property to sgmiisys
Date: Sat, 1 Jun 2019 08:03:10 +0800
Message-ID: <1559347395-14058-2-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559347395-14058-1-git-send-email-sean.wang@mediatek.com>
References: <1559347395-14058-1-git-send-email-sean.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_170329_992647_78214D9D 
X-CRM114-Status: UNSURE (   7.33  )
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
Cc: netdev@vger.kernel.org, nbd@openwrt.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

add an extra required property "mediatek,physpeed" to sgmiisys to determine
link speed to match up the capability of the target PHY.

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 .../devicetree/bindings/arm/mediatek/mediatek,sgmiisys.txt      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,sgmiisys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,sgmiisys.txt
index 30cb645c0e54..f5518f26a914 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,sgmiisys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,sgmiisys.txt
@@ -9,6 +9,8 @@ Required Properties:
 	- "mediatek,mt7622-sgmiisys", "syscon"
 	- "mediatek,mt7629-sgmiisys", "syscon"
 - #clock-cells: Must be 1
+- mediatek,physpeed: Should be one of "auto", "1000" or "2500" to match up
+		     the capability of the target PHY.
 
 The SGMIISYS controller uses the common clk binding from
 Documentation/devicetree/bindings/clock/clock-bindings.txt
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
