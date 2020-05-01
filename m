Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 724DA1C10EE
	for <lists+linux-mediatek@lfdr.de>; Fri,  1 May 2020 12:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rn9MJ4Fe0tJWpp1umSc5bTHGvjF91nXRVkIkM7FNZFo=; b=Eg0ipvIqTPsYnC
	z7NHC+X/SSBlWlEP+V3TvVwBJiDOKmvEAvRvbXZfGFwAcodUkVLu21E5ospywMzwQLJ3Z+ycCUVeN
	or15snbZcEt62pooTe1t3eh2DAJJ0hlOwXARy83DpnfQ37kXvTFyzRB0TYuGYGR3mEJH+TfisvdaV
	mKgOyzwxZXJGGd8Osg/ds1FfWfkrElt1OQp9fgAfHmjIzZFUrwYF7jNui3iQOWqthbTey+ka5x2rq
	ZDwjZNvqH5D23qPEOew/yp+i4MfHmgbBLmlXxTmg4Z833lDgkZtyYG8whbDkFt/AUDxbytC+4q+YB
	Kk07zADlX+31qZ4W8I+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUT2E-0004Rs-UT; Fri, 01 May 2020 10:36:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUT2A-0004OQ-VN
 for linux-mediatek@lists.infradead.org; Fri, 01 May 2020 10:36:44 +0000
Received: from lore-desk.lan (unknown [151.48.155.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62338206B8;
 Fri,  1 May 2020 10:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588329402;
 bh=xx8u5L1X+0NoyS147oh30fBvdi8e0a66RQ09atUkKBY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sGhxLAnaZWnoEM+5KA0kGO61+eFMOCk1j/UDyBuwHPAq4CNjDnb34vcnZAaJY259y
 1p50LqjZwn4XEoWI2n26Jtf8wjlc3PF8Nuz8DFwp02kz02r2n5iD+OUe84y1i6wNun
 h65/GMS8Q32XzSR69KhzHUnfsKp5FJgoQr916nNo=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 4/7] mt76: mt7663u: introduce suspend/resume to mt7663u
Date: Fri,  1 May 2020 12:36:14 +0200
Message-Id: <1f86bd7a7db73139504571065a87c986d888796d.1588329170.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <cover.1588329170.git.lorenzo@kernel.org>
References: <cover.1588329170.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_033643_032066_DAB71347 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org,
 soul.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Tested on Chromebok by "echo mem to /sys/power/state" to suspend and
then waked up by keyboard keystrokes to resume system.

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt76.h     |  1 +
 .../net/wireless/mediatek/mt76/mt7615/usb.c   | 43 ++++++++++++++++---
 2 files changed, 38 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h b/drivers/net/wireless/mediatek/mt76/mt76.h
index f1c9116b6ab4..728a2fb8b14d 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76.h
+++ b/drivers/net/wireless/mediatek/mt76/mt76.h
@@ -381,6 +381,7 @@ enum mt_vendor_req {
 	MT_VEND_READ_CFG =	0x47,
 	MT_VEND_READ_EXT =	0x63,
 	MT_VEND_WRITE_EXT =	0x66,
+	MT_VEND_FEATURE_SET =	0x91,
 };
 
 enum mt76u_in_ep {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/usb.c b/drivers/net/wireless/mediatek/mt76/mt7615/usb.c
index 9353175b139b..5ed83500541c 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/usb.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/usb.c
@@ -372,17 +372,48 @@ static void mt7663u_disconnect(struct usb_interface *usb_intf)
 	ieee80211_free_hw(dev->mt76.hw);
 }
 
-static int __maybe_unused
-mt7663u_suspend(struct usb_interface *intf,
-		pm_message_t state)
+static int __maybe_unused mt7663u_suspend(struct usb_interface *intf,
+					  pm_message_t state)
 {
+	struct mt7615_dev *dev = usb_get_intfdata(intf);
+
+	if (!test_bit(MT76_STATE_SUSPEND, &dev->mphy.state) &&
+	    mt7615_firmware_offload(dev)) {
+		int err;
+
+		err = mt7615_mcu_set_hif_suspend(dev, true);
+		if (err < 0)
+			return err;
+	}
+
+	mt76u_stop_rx(&dev->mt76);
+
+	mt76u_stop_tx(&dev->mt76);
+	tasklet_kill(&dev->mt76.tx_tasklet);
+
 	return 0;
 }
 
-static int __maybe_unused
-mt7663u_resume(struct usb_interface *intf)
+static int __maybe_unused mt7663u_resume(struct usb_interface *intf)
 {
-	return 0;
+	struct mt7615_dev *dev = usb_get_intfdata(intf);
+	int err;
+
+	err = mt76u_vendor_request(&dev->mt76, MT_VEND_FEATURE_SET,
+				   USB_DIR_OUT | USB_TYPE_VENDOR,
+				   0x5, 0x0, NULL, 0);
+	if (err)
+		return err;
+
+	err = mt76u_resume_rx(&dev->mt76);
+	if (err < 0)
+		return err;
+
+	if (!test_bit(MT76_STATE_SUSPEND, &dev->mphy.state) &&
+	    mt7615_firmware_offload(dev))
+		err = mt7615_mcu_set_hif_suspend(dev, false);
+
+	return err;
 }
 
 MODULE_DEVICE_TABLE(usb, mt7615_device_table);
-- 
2.25.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
