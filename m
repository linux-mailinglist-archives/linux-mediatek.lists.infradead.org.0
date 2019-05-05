Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FB014289
	for <lists+linux-mediatek@lfdr.de>; Sun,  5 May 2019 23:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=02JLO1b1T6fi45Kw+ZrImfYiafeGM39LWzNz06ww3rA=; b=YUtfb95NfpF7Vy
	B13ssxtXzlZDFpGNw1TXLQkxPv/EJiBT6uOLEDjVX+9B1R4hapcshnT9O2njqqOQppDiErhEoJARx
	2Kuckocog3bu8nSv9MBa0sYUJnHY1rccVvpwgawK30FnIScGeOH+6jO9qkFH6DH6Kz4PXcW6bamVp
	20SzsGK0GKGCN5BcjLen1dfeXSd6ga9602XdApTP+GyN5APjmYNwbgVXKD200rhAVrod6CS8b9HHz
	gojDMRGavJSyIEjmpNRdW9scGJ5pzroHLDcNggaN6PXfsO5HcCvqC2cXcpaOyvrB5YbBcC116zkn1
	xpkjGA+hK2yTQkwY9KUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNOjj-0001Yt-J6; Sun, 05 May 2019 21:31:55 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNOjb-0001TM-H2; Sun, 05 May 2019 21:31:49 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hNOjQ-0007uz-Ax; Sun, 05 May 2019 21:31:36 +0000
From: Colin King <colin.king@canonical.com>
To: Felix Fietkau <nbd@nbd.name>, Roy Luo <royluo@google.com>,
 Kalle Valo <kvalo@codeaurora.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH][next] mt76: fix less than zero check on a u8 variable
Date: Sun,  5 May 2019 22:31:35 +0100
Message-Id: <20190505213135.3895-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_143147_702414_9F788890 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

The signed return from the call to get_omac_idx is being assigned to the
u8 variable mac_idx and then checked for a negative error condition
which is always going to be false. Fix this by assigning the return to
the int variable ret and checking this instead.

Addresses-Coverity: ("Unsigned compared against 0")
Fixes: 04b8e65922f6 ("mt76: add mac80211 driver for MT7615 PCIe-based chipsets")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/wireless/mediatek/mt76/mt7615/main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 80e6b211f60b..460d90d5ed6d 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -77,11 +77,12 @@ static int mt7615_add_interface(struct ieee80211_hw *hw,
 		goto out;
 	}
 
-	mvif->omac_idx = get_omac_idx(vif->type, dev->omac_mask);
-	if (mvif->omac_idx < 0) {
+	ret = get_omac_idx(vif->type, dev->omac_mask);
+	if (ret < 0) {
 		ret = -ENOSPC;
 		goto out;
 	}
+	mvif->omac_idx = ret;
 
 	/* TODO: DBDC support. Use band 0 and wmm 0 for now */
 	mvif->band_idx = 0;
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
