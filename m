Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756051A3128
	for <lists+linux-mediatek@lfdr.de>; Thu,  9 Apr 2020 10:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MrGZ6miY5f4IJ4D3yi0rXypxMRrJqVmc4K95fuphr9Q=; b=lyHVnfa6beFmx1
	fZ5xwq1wWtyyAd7SwUbBZcTu+QHf2L0su3sxRTDlozUBnN99BWctynJzbDONYkpXPhKubu1xdIUsD
	0hnprdmAdH4QlE+nn3SCmQJF6ZzcSNW0G5/mRlAzAq1byzB/ihZmiZLIXnMrN+usOLp9eo3aJsPrI
	FFM2ZO1LsqTjmWy/mJSW8E6G37cILTEMgUlea7B7o+tk8zlAspS7z835CUer/FanwksRYGcq4oWCm
	RLfWyXiS0iEenK839YklrP16wYoMjkeVF2CJ4ISHNiivk4iyI5E8+ltGzfQZWIwRMnAGkRHwpxxe3
	zRftDWlN5KlICM6iSklA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMSpq-0000B3-62; Thu, 09 Apr 2020 08:46:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSpn-0000AE-Gh
 for linux-mediatek@lists.infradead.org; Thu, 09 Apr 2020 08:46:52 +0000
Received: from lore-desk-wlan.redhat.com (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC72722202;
 Thu,  9 Apr 2020 08:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586422008;
 bh=jUfOmsLoGW71+bDFRzM3/lCI73zV3FaDo2M0AMpwE9E=;
 h=From:To:Cc:Subject:Date:From;
 b=J9cqC0piK2BIhOYYuXh5X0RUcjG9/HL/qaPq1ieiFVa//UN/eutlFBehlVPLCiZ8j
 AoYhYxwz7z0otj9BKCXZrZ7BTY1BlfnvOWEMmHzxTci7deXX0WjJhPDjneOZrxpl1z
 tqu0WcGt2m/ucCx5epCo7Yb/5RI9S8pGtNrlFWJ4=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 0/2] fix TXP DMA unmap for mt7622/mt7623
Date: Thu,  9 Apr 2020 10:46:37 +0200
Message-Id: <cover.1586421673.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_014651_597593_94691626 
X-CRM114-Status: UNSURE (   5.77  )
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
Cc: ryder.lee@mediatek.com, sean.wang@mediatek.com,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 soul.huang@mediatek.com, lorenzo.bianconi@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fix a possible data corruption unmapping hw txp from DMA engine

Lorenzo Bianconi (2):
  mt76: mt7622: fix DMA unmap length
  mt76: mt7663: fix DMA unmap length

 drivers/net/wireless/mediatek/mt76/mt7615/mac.c | 17 +++++++++++++----
 drivers/net/wireless/mediatek/mt76/mt7615/mac.h |  3 +++
 .../net/wireless/mediatek/mt76/mt7615/pci_mac.c | 16 ++++++++++++----
 3 files changed, 28 insertions(+), 8 deletions(-)

-- 
2.25.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
