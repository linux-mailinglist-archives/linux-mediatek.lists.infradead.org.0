Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00C01C2127
	for <lists+linux-mediatek@lfdr.de>; Sat,  2 May 2020 01:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jkk2+c/OlW9AqA5LnMc9EWABihAXOkQkcGW9Ac2n0WI=; b=W0Sg4SctibXLOX
	E82CrogmHPDB98gIlFCrQxcuyyhPyb1gBxJQ8wpe/sYBF5zb4ef2HaXMhocwzPB4Wp5rKR9YuyX3r
	5V9FSKwNkekXSFbScPDJHb8krUpU2UWOeYm6MScWfJvquQ0wbbtxRQc2QuKHH/RNPTNR8pfT2wkAQ
	cl2uwYsPyeLmPpfX/d+W2E3eZXlzcofuxpAi+BtQqDJQtRKocC/VXc8Eb4nlLPaOwo0jhZvNj0Ku6
	9WmXSCFrimKMNmqevhR0/T5hDPKzG+hcUEkXxChxbqJwazM8OJhIh/LSGLuwro4A4lYBsNWjTr0vU
	d8IFNehz9d5/iuQPj4aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUetS-0000gV-2H; Fri, 01 May 2020 23:16:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUetP-0000fo-Qd
 for linux-mediatek@lists.infradead.org; Fri, 01 May 2020 23:16:29 +0000
Received: from lore-desk.lan (unknown [151.48.155.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 493082166E;
 Fri,  1 May 2020 23:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588374987;
 bh=JHOG9KXVITuJTdpFdkSLOpp47cYOYsV+QxiylIY+xKw=;
 h=From:To:Cc:Subject:Date:From;
 b=I9SbjvATWIH8jx0N85OZ4wZL5di1wR5F8TINRQNB5/7LFfVt8657J/x3bdkW+/qeM
 qV2LrlgNFEBNwop4pZAtIpF9nQTorne2FQCDx8hPVilL1rCkCeJSjGHSSNYpTQ9O0C
 mAPg487HF7mEVPwzVLQ3zU+8Bl8/QLGbgWUEAvNA=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: mt7615: check return value of
 mt7615_eeprom_get_power_index
Date: Sat,  2 May 2020 01:16:10 +0200
Message-Id: <9f2e5027dec463c32c29b6047eb3250e20389d1f.1588374866.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_161627_884768_98832AE8 
X-CRM114-Status: UNSURE (   7.42  )
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
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

mt7615_eeprom_get_power_index can return negative error value.
Check mt7615_eeprom_get_power_index return value before using it

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/init.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
index 81294bb2b06b..d831d647d237 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
@@ -247,6 +247,9 @@ void mt7615_init_txpower(struct mt7615_dev *dev,
 			int index;
 
 			index = mt7615_eeprom_get_power_index(dev, chan, j);
+			if (index < 0)
+				continue;
+
 			target_power = max(target_power, eep[index]);
 		}
 
-- 
2.25.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
