Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC23BD9C52
	for <lists+linux-mediatek@lfdr.de>; Wed, 16 Oct 2019 23:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l85pZEh6U6X2+eyz2B3c12dI7c7qKsd4shcjMctjA1g=; b=jxoyRp4i0arRRn
	MjwmxNigYLEKrfJeNy6CrqX4tgILhrn8TEVSE30Iw72vCtJFyJjPzA1xpjqEcuwSlSc0NTctA1GOC
	5X3p4bX5b3MqBJxgh+B8uBn8o9CNt1BQ8kg0cqYLPh8wbtRc0d4mdDUvoXhFdc1h6cCuc2fhTSosL
	GzF3rXjz1Zzq44jmWo60OiBk3Pt31oS6RauxRam3Z7nxFBgF+xzGTvQq1UHpJZ7UXjPLFQIqNhpwN
	iHWcV3CK4HZdqFFmrTOfECkBEx7lmwnF7tCX2zcqCCMQJKvVpy62KTDgAeV0/HYuqctGKS+6faJPY
	AAKU5oESSB+tGUeMO/Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKqcx-0001Rd-P9; Wed, 16 Oct 2019 21:14:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKqct-0001R5-Uk
 for linux-mediatek@lists.infradead.org; Wed, 16 Oct 2019 21:14:37 +0000
X-UUID: bcd342a50286437fbeae47b1e102454d-20191016
X-UUID: bcd342a50286437fbeae47b1e102454d-20191016
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 466824508; Wed, 16 Oct 2019 13:14:31 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 16 Oct 2019 14:14:23 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 05:14:08 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 17 Oct 2019 05:14:09 +0800
From: <sean.wang@mediatek.com>
To: <davem@davemloft.net>
Subject: [PATCH net-next] net: Update address for MediaTek ethernet driver in
 MAINTAINERS
Date: Thu, 17 Oct 2019 05:14:08 +0800
Message-ID: <fc0692002216a32b045a69f910e95c83c1ff559c.1571260085.git.sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7C6ADE6E34B7E473A3934605950146B500CBE6C8027DA7036AD9E205285D4E242000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_141435_996387_E773F24C 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nbd@openwrt.org, netdev@vger.kernel.org, Sean
 Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org,
 Mark Lee <Mark-MC.Lee@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Update maintainers for MediaTek ethernet driver with Mark Lee.
He is familiar with MediaTek mt762x series ethernet devices and
will keep following maintenance from the vendor side.

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Mark Lee <Mark-MC.Lee@mediatek.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index b431e6d5f43f..97027098899a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10258,7 +10258,7 @@ MEDIATEK ETHERNET DRIVER
 M:	Felix Fietkau <nbd@openwrt.org>
 M:	John Crispin <john@phrozen.org>
 M:	Sean Wang <sean.wang@mediatek.com>
-M:	Nelson Chang <nelson.chang@mediatek.com>
+M:	Mark Lee <Mark-MC.Lee@mediatek.com>
 L:	netdev@vger.kernel.org
 S:	Maintained
 F:	drivers/net/ethernet/mediatek/
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
