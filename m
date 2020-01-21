Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB12143B5F
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 Jan 2020 11:48:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8QyfHqE8mrZOFriwa2q7K3FqH8qqYpOo0OI3Z0wLHis=; b=t19GHSKMg+0Quv
	4Ux/+zHQApAU49cHwZU8wfPa8Aan/fry09n9jjZNcrRyi++wHiwnclsRdl4NbDZtZN9R+KtuXT6u7
	SnlVMYQSOs1TB+8SLmHmm6/OlpWbMBsA+3CzHFOFPxPcPyjZ6uqIF+KtOXimA95CvaRuJZPnQaUAk
	b+WXre4+rSu9D/w9rd4H2zbJHHNlvObdjs+4N6pFRhCm2AMK0JF8/JNDyv9NjxjgCbC2hQuclh4Ba
	VS3TJE3KAkBmiZ1tZnDFuXpee5nQT2uxZBwD+7XRFiSMKB0DIrsXd72rGUm136VD26PItBmSHgOM0
	WQK8klM9sqzJqlrr2G2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itr5K-0006SC-J1; Tue, 21 Jan 2020 10:48:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itr52-0006JQ-Vz; Tue, 21 Jan 2020 10:48:22 +0000
X-UUID: 9576e7342f854e55aa45ea100020b9be-20200121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=nrD/+39k4zqN28HCQYUHnInVNtyVGduO5k2QMQrSOxw=; 
 b=NKSCsxDy5MGyyxduMGB+olbe8/Rdjgb14wWL1dVqazsDql7+x5fRZih0udfkd/mlB3JDPqhSvBm2s8onF40uWloI9AgtFu8dXhFJcKdDCT53hymlA0Ge0CzO+J3sUdJqnso8LvAfMydueyXCStdV7bD1KYJ8kTVCBzvpTrnkGtQ=;
X-UUID: 9576e7342f854e55aa45ea100020b9be-20200121
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 311389966; Tue, 21 Jan 2020 02:48:14 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 02:48:13 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 18:48:50 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 21 Jan 2020 18:46:44 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Bin Liu <b-liu@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <Min.Guo@mediatek.com>, <Chunfeng.Yun@mediatek.com>
Subject: [PATCH] usb: musb: tusb6010: fix a possible missing data type
 replacement
Date: Tue, 21 Jan 2020 18:47:50 +0800
Message-ID: <1579603670-10970-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_024821_036446_68302106 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Replace "unsigned" to "u32" for checkpatch fix to tusb_writeb().

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/usb/musb/tusb6010.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/musb/tusb6010.c b/drivers/usb/musb/tusb6010.c
index 5d449089e3ad..99890d1bbfcb 100644
--- a/drivers/usb/musb/tusb6010.c
+++ b/drivers/usb/musb/tusb6010.c
@@ -156,7 +156,7 @@ static u8 tusb_readb(void __iomem *addr, u32 offset)
 	return val;
 }
 
-static void tusb_writeb(void __iomem *addr, unsigned offset, u8 data)
+static void tusb_writeb(void __iomem *addr, u32 offset, u8 data)
 {
 	u16 tmp;
 
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
