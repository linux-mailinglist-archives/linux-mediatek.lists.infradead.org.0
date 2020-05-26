Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D28D1DA8D8
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 05:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L33r0F0LoBHD9Wbj0BFQKlYwbLygKskNmnFWAlFO0Co=; b=O5G34uS7HTEEpk
	xx/SefiAMPj3vlCxkRDRMcK1G0Jw9q8ouvIw3+6dUuXUslpRQOzRZSGgJQbkM4jVw9ouZ5Yjvid7x
	Pdc6qI4gxdO/inz5pUI5Yjbv5/ZpzoCtEFS7D2DMu8xCqDtZDYILIyvQE9Htaa2vNFANdHBtNz4Aw
	bCIOOGZnMealUT8LYx1ASSTRlDtwJavM87ZT/RwZp0/trBXhxWKUKQ/JIgsu3o7O7aJC4uw+eO6Dc
	KMZuh4Twsvx3U4fRQo0NKChopcny8M4/y+1wZ+GPSbLh41yQNqE7sDx3abXq7r6DupQRXlaaJQb4d
	t21nxcSJWkIBPSR/Rmww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFpQ-0004G5-Ko; Wed, 20 May 2020 03:55:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFnc-0000B7-9R; Wed, 20 May 2020 03:53:46 +0000
X-UUID: b2334899588b46a483debbb35c8ddc08-20200519
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=y7mxMo/fxWxVlrLMLUvvJRO0VnhIxtxEKBkDUMS0F+Y=; 
 b=AM+yTtYwygDhXIO7qSyrid9QKCeDON/uvtPbXc7b3B1fzP0q6awz+3j1AXa6zWThCQNfts+DKgSZdhhgxercGTObe3zJOHJD/1i4Rv+/sFetnGSDNvlToev66TTflNHwg4eqsUPiFC+KWfSHcKYMh0Nrf7zbRRryVIQr00uD6NA=;
X-UUID: b2334899588b46a483debbb35c8ddc08-20200519
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 613967798; Tue, 19 May 2020 19:53:37 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 20:43:35 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 11:43:34 +0800
Received: from mtkslt209.mediatek.inc (10.21.15.96) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 11:43:34 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH 10/12] opp: Modify opp API, dev_pm_opp_get_freq(),
 find freq in opp, even it is disabled
Date: Wed, 20 May 2020 11:43:05 +0800
Message-ID: <20200520034307.20435-11-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 2.12.5
In-Reply-To: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_205344_490192_46BCFC43 
X-CRM114-Status: GOOD (  11.00  )
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
Cc: devicetree@vger.kernel.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Modify dev_pm_opp_get_freq() to return freqeuncy
even this opp item is not available.
So that we can get the information of disable opp items.

Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
---
 drivers/opp/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 284b01223831..04d9171604c5 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -118,7 +118,7 @@ EXPORT_SYMBOL_GPL(dev_pm_opp_get_voltage);
  */
 unsigned long dev_pm_opp_get_freq(struct dev_pm_opp *opp)
 {
-	if (IS_ERR_OR_NULL(opp) || !opp->available) {
+	if (IS_ERR_OR_NULL(opp)) {
 		pr_err("%s: Invalid parameters\n", __func__);
 		return 0;
 	}
-- 
2.12.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
