Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC34B1ADBE0
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Apr 2020 13:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UoQX3DL2sh53JB7/hXCHyaGUSouKwu4cQdRUDm03K+M=; b=DU/VMVgTz/rUBk
	sf5ufGZ/MLgeCiuEdztAMY7P9iOK1ed/vCvOIRFIMXVMIrfSipjl1lpDZum0Vaz9ETwV+pwSydnju
	ODy+aHZiY7hAccM7Sq4g1F2nviYXn6t0f/7h5BDCLOtHGxtIRONKijWS9t+BqYpfJA5Z2t7QrOl5R
	Aw1+ndBQf7/uGXOjbKCXXiC+GvBQVqW/AOGyqQFUWHdDRc/OSt4r0d79czWFaphz0R0/FeOtksFRb
	lgZ2zsBhe6sv32gHWLIyBKDAh8KHfq/C46FP463+qob7fvN+dtWSnryUmzccx28UGSrgrNU9RaKCr
	Xc1q/xz5RMWkhwSPnd9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOtB-0006ak-Af; Fri, 17 Apr 2020 11:10:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOt8-0006aD-FB
 for linux-mediatek@lists.infradead.org; Fri, 17 Apr 2020 11:10:27 +0000
Received: from lore-desk.lan (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4F4521D95;
 Fri, 17 Apr 2020 11:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587121826;
 bh=4936VAXG2ihnvrFd3w/Jj8vJA1l/7HTejQkxrR8U5rg=;
 h=From:To:Cc:Subject:Date:From;
 b=RHv6VAP3GA7e+iBaiaQkQiKctIKqB65S2P5vsb8ljaYdnTcFiSPAP4qWg7msSb8b3
 EAU6dt9iviDa/qEiT4tfw/KxpxBR5XBNjNNAjq6nwm8ZO6/GXhaXXHcyTLKanYsYAW
 koOwdBApeRGAu/S2QzZFhYVqPNGTnCHFsTjAMMmo=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 0/3] add 802.11 ps support to mt7663 driver
Date: Fri, 17 Apr 2020 13:10:03 +0200
Message-Id: <cover.1587121517.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_041026_526595_4CDDDA30 
X-CRM114-Status: UNSURE (   7.47  )
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

Introduce 802.11 power-save support for mt7663 station mode
enabling ps firmware support

Lorenzo Bianconi (3):
  mt76: mt7615: provide aid info to the mcu
  mt76: remove PS_NULLFUNC_STACK capability
  mt76: mt7663: introduce 802.11 PS support in sta mode

 drivers/net/wireless/mediatek/mt76/mac80211.c |  1 -
 drivers/net/wireless/mediatek/mt76/mt76.h     |  1 +
 .../net/wireless/mediatek/mt76/mt7615/init.c  |  4 +++
 .../net/wireless/mediatek/mt76/mt7615/mac.c   |  7 ++++--
 .../net/wireless/mediatek/mt76/mt7615/main.c  | 23 +++++++++++++++++
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 25 ++++++++++++++++++-
 .../net/wireless/mediatek/mt76/mt7615/mcu.h   |  1 +
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |  4 +++
 .../wireless/mediatek/mt76/mt7615/pci_init.c  |  8 ++++--
 .../wireless/mediatek/mt76/mt7615/usb_init.c  |  3 +++
 10 files changed, 71 insertions(+), 6 deletions(-)

-- 
2.25.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
