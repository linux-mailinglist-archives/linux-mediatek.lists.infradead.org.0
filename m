Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467F6D868A
	for <lists+linux-mediatek@lfdr.de>; Wed, 16 Oct 2019 05:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GNdReK6SdQwOXQWpCFmAXfcvyIwVw3pwtzeeJE0Xji0=; b=giymokmJHuDjEG
	nTlRwu1rvWJFUatf7IddzYi35HoaKIYqgG6n4CiWa1KUlAkwnB80eqmpX2ERlAOn9LsRo3+9R8Y3w
	WJHofaQwQkqxnDMw893y3bVm6keZnldGgOC4d2PCUuZQa6wy+7xznDWYYSG/LG07n5xLTPjS23ylo
	vCwJ0k7lgdjvVA9laa+Wc2W2/0uh25lQUwFTO3gk9kvfjL2ujuwWyqfdEX8xLpb1WLd29teCZEO2Z
	b/jcsyr3YyONk3YRffg6OMx668v0vhJDg30m8W8wrahm9GNPlARuWZJEZ3S0N7LTpVg/IaPLwAHiX
	/h3lNiKI609JisDPTLcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKa42-0005tg-KF; Wed, 16 Oct 2019 03:33:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKa3z-0005tF-TQ; Wed, 16 Oct 2019 03:33:29 +0000
X-UUID: 16b079a1906a47ddbfffc4581d414e4e-20191015
X-UUID: 16b079a1906a47ddbfffc4581d414e4e-20191015
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1975854913; Tue, 15 Oct 2019 19:33:08 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 15 Oct 2019 20:33:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 16 Oct 2019 11:33:17 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 16 Oct 2019 11:33:16 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v4 0/7] Improve tlb range flush
Date: Wed, 16 Oct 2019 11:33:05 +0800
Message-ID: <1571196792-12382-1-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_203327_951976_33D8ED56 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com, edison.hsieh@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patchset mainly fixes a tlb flush timeout issue and use the new
iommu_gather to re-implement the tlb flush flow. and several clean up
patches about the tlb_flush.

change note:

v4: 1. Add a new tlb_lock for tlb operations.
    2. Delete the pgtlock.
    3. Remove the "writel" patch.

v3: https://lore.kernel.org/linux-iommu/1571035101-4213-1-git-send-email-yong.wu@mediatek.com/T/#t
   1. Use the gather to implement the tlb_flush suggested from Tomasz.
   2. add some clean up patches.

v2:
https://lore.kernel.org/linux-iommu/1570627143-29441-1-git-send-email-yong.wu@mediatek.com/T/#t
   1. rebase on v5.4-rc1
   2. only split to several patches.

v1:
https://lore.kernel.org/linux-iommu/CAAFQd5C3U7pZo4SSUJ52Q7E+0FaUoORQFbQC5RhCHBhi=NFYTw@mail.gmail.com/T/#t

Yong Wu (7):
  iommu/mediatek: Correct the flush_iotlb_all callback
  iommu/mediatek: Add a new tlb_lock for tlb_flush
  iommu/mediatek: Use gather to achieve the tlb range flush
  iommu/mediatek: Delete the leaf in the tlb_flush
  iommu/mediatek: Move the tlb_sync into tlb_flush
  iommu/mediatek: Get rid of the pgtlock
  iommu/mediatek: Reduce the tlb flush timeout value

 drivers/iommu/mtk_iommu.c | 88 +++++++++++++++--------------------------------
 drivers/iommu/mtk_iommu.h |  2 +-
 2 files changed, 29 insertions(+), 61 deletions(-)

-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
