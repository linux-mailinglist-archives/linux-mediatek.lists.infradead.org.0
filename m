Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72732189C1F
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Mar 2020 13:41:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMI1GIjp+v4VTSoLfWG0IYh9gdURzgXlukjDPLyx9+8=; b=GSIBxeI+BQT8Iv
	MpMb/QLbg4pLNHnazT0Cfmvxrjry8s/2JIwjQFSyRZC48BCh6kVvrJO2+0tZoFuVAv/ScB3YPLUqr
	zSS1pyiSjj1czngohx+XmTAwLVPCoJ8jKtnMD/uzjuDAzERX97/VUN+KwxtdeMZ5dfyH7x/5bwz6u
	NdqkoIyB2Kc7nLCAVHpzNei38zLvbDIZ8j+co5V+BWVLQGY6QnhOC5Oqs0gkumpd/36OvczoCH0Dd
	GHsUAGp1IKHeEo6kv45XO2+/op2p74rfinaxpfXSc01cYkCJHneYm9ZqKC3XrVTeNd1OvFR662kzn
	jTZ1+c4XE+qkM5JZ6NnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEY12-0004fQ-Kq; Wed, 18 Mar 2020 12:41:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEY0z-0004dd-S1
 for linux-mediatek@lists.infradead.org; Wed, 18 Mar 2020 12:41:43 +0000
Received: from lore-desk-wlan.redhat.com (unknown [151.48.128.122])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BEC32076E;
 Wed, 18 Mar 2020 12:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584535301;
 bh=tP+u4ybkKs8jDbO/sPn25phauZi0VKfegPje63qy7Mg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=s8Z66ysB7BEys739CfNE5DU4j+aLPJJEBH6BxdXcKNT/YxaeQ/7jyiMKQbZwOPpZe
 KGaTgZbvgBmwSplWw/1w121u0jxXdwKBJtakNwz52F9snP47Yd6GBwfs5/wVeVdAdm
 jsRqhyAi0uLXt3bySAzmOs8eB+ohP3tfuW4Kn/LY=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: kvalo@codeaurora.org
Subject: [PATCH 3/3] mt76: mt7615: add missing declaration in mt7615.h
Date: Wed, 18 Mar 2020 13:41:05 +0100
Message-Id: <d341335a636b6ccd088dd2cfeec2d296eb4dc8c7.1584534454.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1584534454.git.lorenzo@kernel.org>
References: <cover.1584534454.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_054141_929503_356568BF 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ryder.lee@mediatek.com, sean.wang@mediatek.com,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 lorenzo.bianconi@redhat.com, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add mt7615_mcu_wait_response declaration in mt7615.h since it will be
reused adding usb support to mt7615 driver

Reported-by: kbuild test robot <lkp@intel.com>
Fixes: 044a43256a35 ("mt76: mt7615: introduce mt7615_mcu_wait_response")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index 8b3d95a2d7b2..676ca622c35a 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -383,6 +383,7 @@ int mt7615_mac_wtbl_set_key(struct mt7615_dev *dev, struct mt76_wcid *wcid,
 			    enum set_key_cmd cmd);
 void mt7615_mac_reset_work(struct work_struct *work);
 
+int mt7615_mcu_wait_response(struct mt7615_dev *dev, int cmd, int seq);
 int mt7615_mcu_set_dbdc(struct mt7615_dev *dev);
 int mt7615_mcu_set_eeprom(struct mt7615_dev *dev);
 int mt7615_mcu_set_mac_enable(struct mt7615_dev *dev, int band, bool enable);
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
