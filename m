Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736D519C1B6
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Apr 2020 15:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cmWrMnRbxVhid6tBmgTIFlyd39qgUb/fs1nAVnd4H0Y=; b=iYm4lRvbUGjiKy
	GELo/BVH8f36GNU74Dw8EQZ0GCj9DLLRk6P/vQ5zMS4PvEc4ALmfR+vX9tjqOZnYp3EY3i214EpFL
	ofPFl4eVaYM2zSoEaKGHmVBtlTWiNikPzKZQchxXBtMz2vL7xHaCCqWxP5JI4nbjTAWoyCpRdZQmv
	jUZbS3es7ohyVFF8HJapU8elmC6Pm7gRqOy3478Dls4CA+AOz3mqqMhmu2DYP/uAZ2s2LtL+/XT7i
	Du9hrV5FO8nkMuKjYI6SO5fK9CduW7WBkkFui39vBlW9992aOcntnAxyNJ/w9TBBc7OtLHV3IwsC5
	v7mvTcLfmyhIDMWyOXVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJzZ6-0004i0-F3; Thu, 02 Apr 2020 13:07:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJzZ3-0004hG-Gt
 for linux-mediatek@lists.infradead.org; Thu, 02 Apr 2020 13:07:22 +0000
Received: from localhost.localdomain.com (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A48DA20678;
 Thu,  2 Apr 2020 13:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585832840;
 bh=XwkzWyQAHMPvEqxV6v3rSr8+Yfh2Z51AJtPO4jEazP4=;
 h=From:To:Cc:Subject:Date:From;
 b=2mbtA3ZPBQeR+CQisUDPvIUOmQEQzECgZX63i6x7bYsPhjaH1I2OjgPUUniRN6rzv
 CM6N0B5Zp5Ov+4VUkGONqAOq+xMOi0vsQzmeVwKWClMSwUD35Exaaj8WgIrjP9g0wc
 KYXpWu5lCENUuRBk9uiXCrpMfzGDHH+sjgZQ+f78=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 00/12] mt7663 driver update
Date: Thu,  2 Apr 2020 15:06:30 +0200
Message-Id: <cover.1585832458.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_060721_581415_0ED16E3E 
X-CRM114-Status: UNSURE (   6.42  )
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

This series add the following new features to mt7663e driver:
- hw scan
- scheduled scan
- noise floor estimation

Moreover it fixes some hw configuration issues

Lorenzo Bianconi (9):
  mt76: mt7663: fix mt7615_mac_cca_stats_reset routine
  mt76: mt7663: enable nf estimation
  mt76: mt7615: make scs configurable per chain
  mt76: mt7663: disable RDD commands
  mt76: mt7615: add ethool support to mt7663 driver
  mt76: mt7615: introduce mt7615_mcu_set_channel_domain mcu command
  mt76: mt7615: introduce hw scan support
  mt76: mt7615: introduce scheduled scan support
  mt76: mt7615: introduce rlm tlv in bss_info mcu command

Sean Wang (3):
  mt76: mt7663: keep Rx filters as the default
  mt76: mt7615: introduce BSS absence event
  mt76: mt7615: removing unnecessary register operations

 drivers/net/wireless/mediatek/mt76/mt76.h     |   2 +
 .../wireless/mediatek/mt76/mt7615/debugfs.c   |   8 +-
 .../net/wireless/mediatek/mt76/mt7615/init.c  |  45 +-
 .../net/wireless/mediatek/mt76/mt7615/mac.c   |  76 +--
 .../net/wireless/mediatek/mt76/mt7615/main.c  |  86 +++-
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 434 +++++++++++++++++-
 .../net/wireless/mediatek/mt76/mt7615/mcu.h   | 143 +++++-
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |  36 +-
 .../net/wireless/mediatek/mt76/mt7615/regs.h  |   3 +
 9 files changed, 767 insertions(+), 66 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
