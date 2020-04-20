Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7218D1B0988
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 Apr 2020 14:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u+/fCe/zdvQmQwVyn9XlnF4uStK2PyfXk8VWebWsAek=; b=YSBLJFPxeCbgNm
	TgRnXne+LIsBzj2a8otGxLM0tboFyke78OTyeHFqaGWoQyialaHqFj1aHN5qRW7zkZsAJU2GbNf0G
	ho+fazxqTTntmRNmiCX/huTuee8Ok1MJflbDjJo+oDFBtlWcQeEhjvAQ5H4RHHJ4Zix8gqxkMXY3F
	oG5lCb9fyDWDRZ3fzhIQkNceCcftF3qZwGPtHMa4+/JaRGtjrZ+bYjUR74SUClt53C/nUb8BsSiPI
	yS4VC+z1N+/fIHYbBRAotHTYBUzvimm4BB1QAIKbmVZaRwNOayUPYGmQrjtwPFEx6FxMOcWHEjSzZ
	zmMeIer4U9m1N1Gkr1Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVhp-0006No-GR; Mon, 20 Apr 2020 12:39:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVhm-0006MB-88
 for linux-mediatek@lists.infradead.org; Mon, 20 Apr 2020 12:39:19 +0000
Received: from localhost.localdomain.com (unknown [151.48.159.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90D95206D4;
 Mon, 20 Apr 2020 12:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587386357;
 bh=AHyKPZPTj6Ca5BKUIUvMXRp0TSB94uj4BbF5VIB1da0=;
 h=From:To:Cc:Subject:Date:From;
 b=zPF6gSrVsbuT3ZOEHBrFrIKVOiTUvgG0DPAmo1fHdZ3EX6t5xZG2PKKROUXD+9nbN
 XFZbtqdx3UOzn+5ZL1Je7txWPlrEGCX79PYxSlPefE7rt2W39QD/uifE2bCQTqkxOk
 nCDuYxZ/fUtt7Cm3T82DMfCcoaVqSkikVRfGyY1w=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: mt7615: fix max wtbl size for 7663
Date: Mon, 20 Apr 2020 14:39:02 +0200
Message-Id: <45500b45594b4c2e41938d9d31d4c6d060628b0f.1587386278.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_053918_312457_816C32A4 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org, lorenzo.bianconi@redhat.com,
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Current mt7663 offload firmware can support up to 32 wtbl entries

Fixes: f40ac0f3d3c0 ("mt76: mt7615: introduce mt7663e support")
Co-developed-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h | 11 ++++++++++-
 drivers/net/wireless/mediatek/mt76/util.c          |  2 +-
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index c9533282e7e3..ffb146840377 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -12,8 +12,9 @@
 
 #define MT7615_MAX_INTERFACES		4
 #define MT7615_MAX_WMM_SETS		4
+#define MT7663_WTBL_SIZE		32
 #define MT7615_WTBL_SIZE		128
-#define MT7615_WTBL_RESERVED		(MT7615_WTBL_SIZE - 1)
+#define MT7615_WTBL_RESERVED		(mt7615_wtbl_size(dev) - 1)
 #define MT7615_WTBL_STA			(MT7615_WTBL_RESERVED - \
 					 MT7615_MAX_INTERFACES)
 
@@ -424,6 +425,14 @@ static inline bool mt7615_firmware_offload(struct mt7615_dev *dev)
 	return dev->fw_ver > MT7615_FIRMWARE_V2;
 }
 
+static inline u16 mt7615_wtbl_size(struct mt7615_dev *dev)
+{
+	if (is_mt7663(&dev->mt76) && mt7615_firmware_offload(dev))
+		return MT7663_WTBL_SIZE;
+	else
+		return MT7615_WTBL_SIZE;
+}
+
 void mt7615_scan_work(struct work_struct *work);
 void mt7615_ps_work(struct work_struct *work);
 void mt7615_init_txpower(struct mt7615_dev *dev,
diff --git a/drivers/net/wireless/mediatek/mt76/util.c b/drivers/net/wireless/mediatek/mt76/util.c
index 8c60c450125a..07cf71242d9e 100644
--- a/drivers/net/wireless/mediatek/mt76/util.c
+++ b/drivers/net/wireless/mediatek/mt76/util.c
@@ -46,7 +46,7 @@ int mt76_wcid_alloc(unsigned long *mask, int size)
 {
 	int i, idx = 0, cur;
 
-	for (i = 0; i < size / BITS_PER_LONG; i++) {
+	for (i = 0; i < DIV_ROUND_UP(size, BITS_PER_LONG); i++) {
 		idx = ffs(~mask[i]);
 		if (!idx)
 			continue;
-- 
2.25.3


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
