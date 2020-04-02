Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C8E19C1C6
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Apr 2020 15:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYGCDd02XBGy1x6OX3llK7lBS4mZNpjdin7D9D8J7Z8=; b=KbX8XcPuaSN7Ae
	gXqMZq76mClqzUICxAXQPO3Y2ietCfJrB8UAVOxjrVUeI+v2MyT/rnH9baaL+sQHzKXKI+JbbLxYh
	IyNodu4lvgX6Gn2PHBdN51aivqNNs1QIo8vmR3jkCXQwNoQCrehB6aDhKIxhjTZxDUdN8TXwPt0VR
	HfOtbHy81GgjATmpzaUuDtiVR575QC3ZUIaZfGw4BQfpEdbthtD/n02vCB4sZtUXqWGTAN/4MYWFy
	+B+uHXdMfYjLikCcdAjfL11ZlIQbyoZWj/G5KQH3MBka38svVUXIBifUGliSFZzLzK1TBrCImrDdo
	XthA3aTHS1ImO1/ji5kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJzZu-0005Fz-Us; Thu, 02 Apr 2020 13:08:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJzZr-0005C9-KY
 for linux-mediatek@lists.infradead.org; Thu, 02 Apr 2020 13:08:12 +0000
Received: from localhost.localdomain.com (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E440020678;
 Thu,  2 Apr 2020 13:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585832891;
 bh=yPX4IuwqHA9Lbu17ttmIVQKFbFHxaiHTbKg2XP0pdac=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fRCzPkogRaeqEbgQtp3JM08PG2P4wtRx9uNQYHMr5S/gfXv326pqlKG+lVfJHmJUO
 hLU+P24UaQRpD6UdUzMj+6SEMtxijEtQurXm9/Ak0xciCynqhTozs2eWbAe1BxzPBY
 yBOizwEgxKvX+yNFta48K3OzvLQe1sQTYcNzwkmo=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 12/12] mt76: mt7615: remove unnecessary register operations
Date: Thu,  2 Apr 2020 15:06:42 +0200
Message-Id: <786c751acbec509cefe9e3c0c3014b7555190f42.1585832459.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1585832458.git.lorenzo@kernel.org>
References: <cover.1585832458.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_060811_695301_55535023 
X-CRM114-Status: UNSURE (   9.35  )
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

From: Sean Wang <sean.wang@mediatek.com>

Remove mt76_wr(dev, MT_CSR(0x010), 0x8208) that would cause
MT_PCIE_IRQ_ENABLE to be disabled; MT_PCIE_IRQ_ENABLE should always keep
on enabled when the driver is running.

0x44064 is a not existing address

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/init.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
index f4775945e3d7..be0f3a77e22f 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
@@ -117,8 +117,6 @@ static void mt7615_mac_init(struct mt7615_dev *dev)
 		FIELD_PREP(MT_DMA_DCR0_MAX_RX_LEN, 3072) |
 		MT_DMA_DCR0_RX_VEC_DROP);
 	if (is_mt7663(&dev->mt76)) {
-		mt76_wr(dev, MT_CSR(0x010), 0x8208);
-		mt76_wr(dev, 0x44064, 0x2000000);
 		mt76_wr(dev, MT_WF_AGG(0x160), 0x5c341c02);
 		mt76_wr(dev, MT_WF_AGG(0x164), 0x70708040);
 	} else {
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
