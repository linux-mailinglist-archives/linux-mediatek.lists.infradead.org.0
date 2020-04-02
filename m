Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA7119C8B4
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Apr 2020 20:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tw9BsyHtGL20OAPWMz5d26r/XyIw6iIhfpu3xUdxoh4=; b=YSj6qsAjZwxOTT
	0SM4lYRrCRcFJnoQIXXP/CUV8BoiFbbGVj+6KfEnxDllwGpT/R9FwDt7EUZwYvQtDrG6QPABV4WZ5
	UPNmJ2VAvbUIVTRl2mbZDMFi9O+ZvdEeWx7iupzmDrK+pdFIpj5NuBcuJ610D1dGz5omeAvZ2Cvuk
	SCjPDDzkLAsVo9SOubhG501NSEIMeQ8htSj1+jauTkGVJU/dc2SQJYc1f/0hyvcI28uNTM6kTRdbp
	oI0TJJpGFjRydaMs/Joy+s827xHW6njP08v22sILbNTWw2YFKhtzKLkTf4e4R0qkiE+um1VDB0GJ9
	v+e+mtx43JfI3/pceMdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK4RC-0000va-8d; Thu, 02 Apr 2020 18:19:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK4R5-0000nq-Mt
 for linux-mediatek@lists.infradead.org; Thu, 02 Apr 2020 18:19:29 +0000
Received: from localhost.localdomain.com (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0324020BED;
 Thu,  2 Apr 2020 18:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585851567;
 bh=cgadFpj6F9DWfBCLRSNBDY3c5hZQkzUcEfymNRsHvJw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B0lpHmD3pGbolkzx/ebfMXGZfm7fCkek1Q365PLS3UoC6i6phFWBuPzNqRKL2tiqg
 eOs40bJW+If1stxWLTXVKk4xKT9FB9NMqzDep0yiBhU2MnXHeiieG4+3FdUCzKQNoc
 pQ1AC2joI3maTDr+06lhDximbo5eMZvSi9mlBP+w=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 8/9] mt76: mt7615: introduce mt7615_wtbl_desc data structure
Date: Thu,  2 Apr 2020 20:18:55 +0200
Message-Id: <caec62c349f28d5aa6ce7925666c29e3be513e26.1585851049.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1585851049.git.lorenzo@kernel.org>
References: <cover.1585851049.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_111927_809914_A3C4B0FA 
X-CRM114-Status: UNSURE (   9.67  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org, ryder.lee@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Generalize mt7615_rate_desc introducing mt7615_wtbl_desc and
mt7615_key_desc data structures in order to configure the hw wtbl
in a non-atomic context for usb devices

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../net/wireless/mediatek/mt76/mt7615/mac.c   |  1 -
 .../wireless/mediatek/mt76/mt7615/mt7615.h    | 29 ++++++++++++++++---
 2 files changed, 25 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index 86e7c1c1b61e..7b8873002441 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -893,7 +893,6 @@ mt7615_mac_update_rate_desc(struct mt7615_phy *phy, struct mt7615_sta *sta,
 		rd->bw_idx = 7;
 
 	rd->rateset = rateset;
-	rd->sta = sta;
 	rd->bw = bw;
 }
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index 588cc38bfac0..bd5967f5b4b7 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -92,10 +92,6 @@ struct mt7615_rate_set {
 };
 
 struct mt7615_rate_desc {
-	struct list_head node;
-
-	struct mt7615_sta *sta;
-
 	bool rateset;
 	u16 probe_val;
 	u16 val[4];
@@ -103,6 +99,31 @@ struct mt7615_rate_desc {
 	u8 bw;
 };
 
+enum mt7615_wtbl_desc_type {
+	MT7615_WTBL_RATE_DESC,
+	MT7615_WTBL_KEY_DESC
+};
+
+struct mt7615_key_desc {
+	enum set_key_cmd cmd;
+	u32 cipher;
+	s8 keyidx;
+	u8 keylen;
+	u8 *key;
+};
+
+struct mt7615_wtbl_desc {
+	struct list_head node;
+
+	enum mt7615_wtbl_desc_type type;
+	struct mt7615_sta *sta;
+
+	union {
+		struct mt7615_rate_desc rate;
+		struct mt7615_key_desc key;
+	};
+};
+
 struct mt7615_sta {
 	struct mt76_wcid wcid; /* must be first */
 
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
