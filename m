Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7EE1F8A1D
	for <lists+linux-mediatek@lfdr.de>; Sun, 14 Jun 2020 20:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uP5Gd9i+XacIqFbNC2zCuA6SegslLqXe+5B+W/X9RsQ=; b=MlrODGa0Dg4Bh4
	yceAA/Wnu9UJqxezeFuyh/Ddit3ZYBexa7W9rsAHzMg0BprD26hQdl+5ISJBVgIXFMqPDXL8bJQs6
	2wU47/UMohUHBQdd+byH5lJ8ivky/BIYfzHLLGdhcw00Gem08NKzZaV0flON1iuMTaK4rDb+YVwhR
	vJL3RGL/uxYbpOHJpJY8B90I1gho2CP+0bj47GUQikhmryHgCELfs3wGGCPPLXAgG4oiJM0hgSvrF
	hZ+QlHKzvxBFP5U8mQB5w3n6r8F2zw0IIYnogwhciXoRq/1jd+TOdz90CECBxPYjDYKDjP/cqlaDp
	R7vlI/ndNLAQ0X3njW6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkXRy-0002IH-CK; Sun, 14 Jun 2020 18:33:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkXRu-0002H6-U8
 for linux-mediatek@lists.infradead.org; Sun, 14 Jun 2020 18:33:44 +0000
X-UUID: 78a5bbe637ab4ea9867681d090f1bd94-20200614
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=DR/QwOiy7DR8h4Z/9L2Jab/8wPEsmQ3UrzfyTt+17nU=; 
 b=L3f1Ua0KaEkjpD0GCoPfD63Gvs3LFMr8HryVSTR3qfGXJt/VIsaaWw+Ie1nTBg/8l6BQ5evwjfyKecKo/1FTiEQBqvMlstFIm8n9/XRUEp1wsu+t0ILVlOVVdnq2d2m5Z92GUfbf67hET1vRXdPrWyOKs2i0vcvvRUSDCpqhrxg=;
X-UUID: 78a5bbe637ab4ea9867681d090f1bd94-20200614
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1412186952; Sun, 14 Jun 2020 10:33:23 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 14 Jun 2020 11:23:35 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 02:23:37 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 15 Jun 2020 02:23:34 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v3 1/4] mt76: mt7915: add missing CONFIG_MAC80211_DEBUGFS
Date: Mon, 15 Jun 2020 02:23:33 +0800
Message-ID: <2863c9a7e14c791202738597184f4a6b75d5bc07.1592158312.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1592158312.git.ryder.lee@mediatek.com>
References: <cover.1592158312.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_113342_977621_587668B9 
X-CRM114-Status: UNSURE (   5.77  )
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
Cc: linux-mediatek@lists.infradead.org, Sean Wang <sean.wang@mediatek.com>,
 linux-wireless@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add CONFIG_MAC80211_DEBUGFS to fix a reported warning.

Fixes: ec9742a ("mt76: mt7915: add .sta_add_debugfs support")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c b/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
index 5278bee812f1..7e48f56b5b08 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
@@ -384,6 +384,7 @@ int mt7915_init_debugfs(struct mt7915_dev *dev)
 	return 0;
 }
 
+#ifdef CONFIG_MAC80211_DEBUGFS
 /** per-station debugfs **/
 
 /* usage: <tx mode> <ldpc> <stbc> <bw> <gi> <nss> <mcs> */
@@ -461,3 +462,4 @@ void mt7915_sta_add_debugfs(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 	debugfs_create_file("fixed_rate", 0600, dir, sta, &fops_fixed_rate);
 	debugfs_create_file("stats", 0400, dir, sta, &fops_sta_stats);
 }
+#endif
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
