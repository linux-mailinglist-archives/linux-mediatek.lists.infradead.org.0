Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE33E1A8D5A
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 23:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVTf/TMQ1VfoiJ3Y7529TriKU/wXgI+MJaxBVdI6egQ=; b=s19EOcwG5j/gyZ
	XURNdCDK7BpRFWl4X93r1JZ30jvps+1GhlBq5MqJRvcykSdmdZIZDg/3TAvURJnGqioXyh/g2WZ8t
	8YIlku/tNrkvlvFx+U6BhM8HoMk7uaXbDD2peMRycZv3+I9VC9eX5k1Z9BEDvfdXKI210MRh65YFV
	4XTPEUSKbIdbO+zcH5oXG2zmK33m8k5dmnc0Eh6IwfIDWbkKmODdndH64K/mXIreNpo504CQh1659
	JH9ir44I2Qla4b+DdkRpyZZUE7qnbbdr889QHY6LDKPC6CeR7whMN+pcSHtmz+NK7Nwzsj7QOTx3j
	56AD/Gt1/8U04EskIpYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOSqL-0005Hj-WC; Tue, 14 Apr 2020 21:11:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOSqI-0005GL-HO
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 21:11:39 +0000
X-UUID: 4b79bdb1a5054f269cbece4a5268219d-20200414
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=2NtU9XJjT9BbahmByeTeE1WHgNy7AgGxqZOEqVbEgGQ=; 
 b=PHUFOvW5AZ4kOq+evd91O4Fxse4TUvyHjA2on1ZrVw1n00gRLlpc6zFv2oVuMJ0koxBJPUJhcoFnTqNFRmoWPBJnh15kT02ioz+YP/qRu9DlAYRIz/cCk2y3Z9jl8uDPgEqIO3SEBaSgleSq9Ab28RCaaWBhVQoE8pghHu7FK0I=;
X-UUID: 4b79bdb1a5054f269cbece4a5268219d-20200414
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1253866074; Tue, 14 Apr 2020 13:11:35 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 14:01:32 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 15 Apr 2020 05:01:22 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 15 Apr 2020 05:01:20 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v2 05/18] mt76: add HE phy modes and hardware queue
Date: Wed, 15 Apr 2020 05:01:03 +0800
Message-ID: <cf2fbf85884dbe026cf2a49799dd50240ab9ad64.1586895593.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1586895593.git.ryder.lee@mediatek.com>
References: <cover.1586895593.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_141138_583034_5C8164CE 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: YF Luo <yf.luo@mediatek.com>, Evelyn Tsai <evelyn.tsai@mediatek.com>,
 linux-wireless@vger.kernel.org, Sean
 Wang <sean.wang@mediatek.com>, Chih-Min Chen <chih-min.chen@mediatek.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This is a preliminary patch to support 11ax deivces.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/mt76.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h b/drivers/net/wireless/mediatek/mt76/mt76.h
index b26a90fa5d92..d1ad1f035426 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76.h
+++ b/drivers/net/wireless/mediatek/mt76/mt76.h
@@ -60,6 +60,7 @@ enum mt76_txq_id {
 	MT_TXQ_BK = IEEE80211_AC_BK,
 	MT_TXQ_PSD,
 	MT_TXQ_MCU,
+	MT_TXQ_MCU_WA,
 	MT_TXQ_BEACON,
 	MT_TXQ_CAB,
 	MT_TXQ_FWDL,
@@ -69,6 +70,7 @@ enum mt76_txq_id {
 enum mt76_rxq_id {
 	MT_RXQ_MAIN,
 	MT_RXQ_MCU,
+	MT_RXQ_MCU_WA,
 	__MT_RXQ_MAX
 };
 
@@ -577,6 +579,10 @@ enum mt76_phy_type {
 	MT_PHY_TYPE_HT,
 	MT_PHY_TYPE_HT_GF,
 	MT_PHY_TYPE_VHT,
+	MT_PHY_TYPE_HE_SU = 8,
+	MT_PHY_TYPE_HE_EXT_SU,
+	MT_PHY_TYPE_HE_TB,
+	MT_PHY_TYPE_HE_MU,
 };
 
 #define __mt76_rr(dev, ...)	(dev)->bus->rr((dev), __VA_ARGS__)
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
