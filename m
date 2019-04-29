Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6636EE126
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 13:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g4JsUy+bPuBPAZMOfIC/AWZ2bGvy3pttcz7jyRl27QA=; b=PxQvSAa9htMRET
	T7KHa3c1U64tkCJBJMxgfbkzLWnmMDdcT4LCFc6OxlSRUYmZ/rWV4BKShcx0Hm8ItA5CEclIjDdP3
	JYpKKozlZXZP364dLAfRNWfs0qLindiMTFmIQyIElZT3M3lBAdoUPOKx39hwyKPZzRVYmNjRqNjRT
	k7MU7dTQzXYACXbMMUxXrJfWWKmks8VC5ioY+QQncJdZEwTqLTL8sP50CKCHA59LJhWalEpEvWxn2
	yGjOlXxQgwLpO93/9rRShhFgoDm14Yp5cgsdRtNwQDnTJrzZlOWioFAjPMIFMiotNcFe8qa1Kj3uc
	mtj+h20VfceEWIe2oTOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4Ij-0004s4-N3; Mon, 29 Apr 2019 11:18:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL4Ig-0004qR-A1
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 11:18:23 +0000
X-UUID: fca1b82d44bf4cbdba756a09397892d8-20190429
X-UUID: fca1b82d44bf4cbdba756a09397892d8-20190429
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 212863318; Mon, 29 Apr 2019 03:18:18 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 04:18:17 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 19:18:03 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 29 Apr 2019 19:18:03 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>
Subject: [PATCH] Add cpufreq DTS node to the mt8183 and mt8183-evb.
Date: Mon, 29 Apr 2019 19:17:53 +0800
Message-ID: <1556536674-27068-1-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_041822_360812_A6B85898 
X-CRM114-Status: UNSURE (   5.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-mediatek@lists.infradead.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>

Add cpufreq DTS node to the mt8183 and mt8183-evb.

Andrew-sh.Cheng (1):
  Add cpufreq DTS node to the mt8183 and mt8183-evb.

---
This patch is based on v5.1-rc1 and these patches:
https://patchwork.kernel.org/patch/10893519/
---

 arch/arm64/boot/dts/mediatek/mt8183-evb.dts |  35 ++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 244 ++++++++++++++++++++++++++++
 2 files changed, 279 insertions(+)

-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
