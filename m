Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E4A1ADBE2
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Apr 2020 13:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsFP42/NjKFI+wbHWGE3GAnbAGFttbGIbInNZVYoOpA=; b=lm+ApYqiqzma+/
	esSjd0zh6HEJPzeE4NkIORPcHfwM/PeCov7jp/v6AMohNe8nfKs9HxwhLGx76yzH8ZhlFkpZkOnxR
	hGVAZnS+xmnEdQkLVQwYn8FC8MVQtwStq4bgqetLvXU6Hu3qABbwhxDPnVzqCjQVRpTQyDX9Oav5E
	4ITPALX2sOfTdTOn15NfDOMUoXDVsvNf6M2My3S8DpaNgXn1Zbcv2jWvJpZ2B/FipHylsFZ7RckWh
	JFjzq5uU9vzWuRd7iE3qvtzQGAh6IFVPX9dM52LnyyzBfn/K0C+Vv4ztBoYPjGRuj/KH4Nm5kemZ4
	D3IhyDrGB4DFRveq/f9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOtH-0006ef-38; Fri, 17 Apr 2020 11:10:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOtD-0006c3-3I
 for linux-mediatek@lists.infradead.org; Fri, 17 Apr 2020 11:10:32 +0000
Received: from lore-desk.lan (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AD79221F7;
 Fri, 17 Apr 2020 11:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587121830;
 bh=Z70chfJO6OSuyFZvWhBc+cZGaip+JVIOLAFo4lbB6Y4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yVf+8eapa5VLXcsCtsOE2csM3e63EQ+CFwCvaNQLD+Lxk95chLYRugFdIX6+oMDRw
 KBIrry7Z62tpVVnLume7G44tRwKchs1wzfpVXq6Vf/cBso3kCo6zal3CNC+oKxhs4O
 0R91FRygZeCBR+ZU1AxkCRVSatHoBKHoe4Z2a3M8=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 2/3] mt76: remove PS_NULLFUNC_STACK capability
Date: Fri, 17 Apr 2020 13:10:05 +0200
Message-Id: <b38bf2d8036b8e84f315423d2c7ac8aa5f7b4153.1587121517.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1587121517.git.lorenzo@kernel.org>
References: <cover.1587121517.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_041031_157754_C616F96C 
X-CRM114-Status: UNSURE (   7.67  )
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

remove IEEE80211_HW_PS_NULLFUNC_STACK capability from mt76_phy_init
routine since 802.11 ps is not currently supported by any devices and it
will conflict with mt7663 ps fw support

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mac80211.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mac80211.c b/drivers/net/wireless/mediatek/mt76/mac80211.c
index f44f99184c10..39abedc45e4a 100644
--- a/drivers/net/wireless/mediatek/mt76/mac80211.c
+++ b/drivers/net/wireless/mediatek/mt76/mac80211.c
@@ -294,7 +294,6 @@ mt76_phy_init(struct mt76_dev *dev, struct ieee80211_hw *hw)
 		hw->max_tx_fragments = 16;
 
 	ieee80211_hw_set(hw, SIGNAL_DBM);
-	ieee80211_hw_set(hw, PS_NULLFUNC_STACK);
 	ieee80211_hw_set(hw, AMPDU_AGGREGATION);
 	ieee80211_hw_set(hw, SUPPORTS_RC_TABLE);
 	ieee80211_hw_set(hw, SUPPORT_FAST_XMIT);
-- 
2.25.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
