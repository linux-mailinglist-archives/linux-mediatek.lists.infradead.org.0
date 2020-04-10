Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A98301A442D
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Apr 2020 11:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tw1z/VNNuuk4EMUqiJhTSlWia1NGETrjRxM1V+kkitI=; b=bLJYg6U09I5EgJ
	DMZFjWjHeF33EfVzO3+d4xUcB+qF+2cR/fIuut1w7dRyQ59d0z0XE9eD0T/a5YdFRzNjNXagZs1Lb
	lwoumNe6B27pROmk4TTe6dkmv0rtvxpax2pORAiHbPvbm7g+aIYOMX/4tWn/kOPbgiOJ4wVzjQUh1
	Ss8lmpE+LkpltieEAU+/f61uMOKKaEQRm7we92Ids2pXgpAkmZ2k65+nHtuuRv9xR5fT0qmDtQcem
	yziORgRApHDEGC1FtwP6Lx3kswfP4ERCCkipDu4TYcYhluFJHW9auGR7t9pe54y/RME5UVwZAH2PD
	ajP0V6H5bpoxkR45koYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpbC-00083S-Ut; Fri, 10 Apr 2020 09:05:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpb8-000808-J8
 for linux-mediatek@lists.infradead.org; Fri, 10 Apr 2020 09:05:16 +0000
X-UUID: efc81f369fef48c495f471d04fb12b04-20200410
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Ule6ZRnhMKPLo6FIhuNTylSpJjFPBks7O1Nokyid12g=; 
 b=BJLB1ReM3iU5AIToF/kR5Y0nqq5J08twkeEN+usjBKi5vh9+dcrAjBkHmIYBFn/ZDMNgHsBvkhlt5kwL0FxVVa73Pkq8qRffb082y2WjL2YDDFtfK01VE7B6HbPJ6Qlv4cSFStZHM+Z1iH7DnNLBSVoy/wsPlk/1oosH0cYTgdw=;
X-UUID: efc81f369fef48c495f471d04fb12b04-20200410
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1655350806; Fri, 10 Apr 2020 01:05:06 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 01:55:05 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 16:54:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 10 Apr 2020 16:54:55 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 05/16] mt76: add HE phy modes and hardware queue
Date: Fri, 10 Apr 2020 16:54:42 +0800
Message-ID: <06ea71e149abb759dba19370591d313a8fd0021d.1586507878.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1586507878.git.ryder.lee@mediatek.com>
References: <cover.1586507878.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 85DADBE71E5E5566FB558A100B56833FFB7180E6982677C15F0FFA369E4ECF7D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_020514_696737_F3721639 
X-CRM114-Status: UNSURE (   6.91  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 97882b9306a2..68bacca4fae5 100644
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
