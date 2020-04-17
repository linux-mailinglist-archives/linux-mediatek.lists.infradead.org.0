Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4661ADBFC
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Apr 2020 13:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LiyQhKckQytDhsiPR5cdhW6QZw91OsD2+ZAxYuix35g=; b=psIquDyvvvfnQF
	Ea3kzpnz9/3LCtDvDN+vgB/tPWu+ykYDTFXELtIYMYTDdq8zxmiA3/DwYqiM01Lyrmkpue04zzjCB
	l3IOzyDyB9eBGt+LeB+5SeThthupB2gT7Dcv+z+3XcQpMM7iE8WNzz5DFJaiQ4yDDyKZAnWC9Umlm
	lTmxSGR2MNk/qOVah8PmjHEG777bX32yRyqUVch3AhCcqFvfb1ZCqtuQ1D/x03ukOuG8zdbhzEBRg
	jZOw4t4kFHgRZHe4WYZQU1Q+Q7zEZXCIHZVLmSrx0lDU0M4+GZVmBY0JmD+fq55jxYHkSZObVIklK
	+8KM6KYzkJ0kn/qvc+aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOwT-000763-C9; Fri, 17 Apr 2020 11:13:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOwQ-00075U-4N
 for linux-mediatek@lists.infradead.org; Fri, 17 Apr 2020 11:13:51 +0000
Received: from lore-desk.lan (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A08A12076D;
 Fri, 17 Apr 2020 11:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587122029;
 bh=a71vWzTErF3OJFiK+9Grr/5TzM8WpjEOvfq3xprAfcg=;
 h=From:To:Cc:Subject:Date:From;
 b=bSvuUGl2L0fUFI44c1lbrgqtXN5OxdUrCJBA90519rBDOCnDFKx/3bm4x12GhrMjc
 IHjmoRo3BWOhtKTe+OBX0dmoEVoBHbVFndq6ySrZNvRfVeKvVcKwwbOR0/POK9f+Zb
 CQ3WntxW9k3v+SDf5CUvodNZDgtZ4Ats/OqM4uxA=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: mt7615: make Kconfig entry obvious for MT7663E
Date: Fri, 17 Apr 2020 13:13:28 +0200
Message-Id: <ecb3b93924ca5159ae0fbb56ad884d3d453ff6e6.1587121960.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_041350_195701_9D2D14EE 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Make Kconfig entry obvious for MT7663E

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig b/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
index a84317fb856f..e25db1135eda 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
@@ -5,7 +5,7 @@ config MT7615_COMMON
 	select MT76_CORE
 
 config MT7615E
-	tristate "MediaTek MT7615E (PCIe) support"
+	tristate "MediaTek MT7615E and MT7663E (PCIe) support"
 	select MT7615_COMMON
 	depends on MAC80211
 	depends on PCI
-- 
2.25.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
