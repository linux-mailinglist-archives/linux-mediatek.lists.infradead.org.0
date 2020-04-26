Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 692B01B90F0
	for <lists+linux-mediatek@lfdr.de>; Sun, 26 Apr 2020 16:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EoV9tfbEbilJX/dgM0nuVeRbHgkPEraG5Crk2vczP2E=; b=s1G09hQLqX0rEp
	0a6C23HV19NlkHTA1M5Z9gMASMCbVHDJWiII6mNZerclXlAk7jdGbS7iEClXKZQ/0NJvuCPeHF+GZ
	m2LCR60wZAVmZ3eRMQkT5yk3cVJX8vVxs7grYnj2qXkIKTwQ+Yj1LwyPhaG5SE0tUt2B0XkmReKLt
	vwpicRXpGFPI/ZC/iN/4EGNxrBbrkdCtOiN4Au2RvkYZBF+XS0XAsHluTAXvFdIhex28yc+KPLx3K
	tbr3Gim1TPpK1tA2Lrr21MdvVtOgZvCBBcqNe6WPFkr6/wr0KKoJIQyRKPxco8uyQFmaHSpczwJ10
	eHT/SAoOmRfZIoNblfqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSiUn-00040Y-HV; Sun, 26 Apr 2020 14:43:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSiUk-0003zw-QD
 for linux-mediatek@lists.infradead.org; Sun, 26 Apr 2020 14:42:59 +0000
Received: from lore-desk.lan (unknown [151.66.196.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D926F2070A;
 Sun, 26 Apr 2020 14:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587912178;
 bh=NXYM3L+3ZO9mSO7fCqAAA0UGT7d1mpBH/cItSd4rtRQ=;
 h=From:To:Cc:Subject:Date:From;
 b=shxz4H1rYWhSta5+14M/u2jHbPrlKhBK0At09zNV4EEDmXcFuoqPzV16gW+N24NlR
 GpNt0rGQZF06RA8WVkwtNwtuiQLxoB1Qqu3cOfmJXehaE8pQie02pyDnzZsjm7Miwu
 ePZGh4c9JAtmCBx9VTcZQ+KU1OAqOnGCmf2KuML8=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: mt7663: remove check in mt7663_load_n9
Date: Sun, 26 Apr 2020 16:42:52 +0200
Message-Id: <0fe3daeeb4ab8721697bc799fd4a02dca9925b50.1587912071.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_074258_867966_8725EC56 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Get rid of useless check in mt7663_load_n9 since it is used only for
mt7663 devices

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mcu.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 2e6ffe5afeeb..a438f30778d5 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -2000,7 +2000,7 @@ int mt7615_mcu_fw_log_2_host(struct mt7615_dev *dev, u8 ctrl)
 
 static int mt7663_load_n9(struct mt7615_dev *dev, const char *name)
 {
-	u32 offset = 0, override_addr = 0, flag = 0;
+	u32 offset = 0, override_addr = 0, flag = FW_START_DLYCAL;
 	const struct mt7663_fw_trailer *hdr;
 	const struct mt7663_fw_buf *buf;
 	const struct firmware *fw;
@@ -2056,14 +2056,11 @@ static int mt7663_load_n9(struct mt7615_dev *dev, const char *name)
 		}
 	}
 
-	if (is_mt7663(&dev->mt76)) {
-		flag |= FW_START_DLYCAL;
-		if (override_addr)
-			flag |= FW_START_OVERRIDE;
+	if (override_addr)
+		flag |= FW_START_OVERRIDE;
 
-		dev_info(dev->mt76.dev, "override_addr = 0x%08x, option = %d\n",
-			 override_addr, flag);
-	}
+	dev_info(dev->mt76.dev, "override_addr = 0x%08x, option = %d\n",
+		 override_addr, flag);
 
 	ret = mt7615_mcu_start_firmware(dev, override_addr, flag);
 	if (ret) {
-- 
2.25.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
