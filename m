Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362DB95356
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 03:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aqWB6kG8dqQcXeJ0tXJ8hhq//AClnJ2FNlAztSA8Eqc=; b=QXi0cNAdqIlDts
	X7tCPFuGiAAJtsG4+RZhbLm5rG0cqsAzDOLsK2Is2EQJMINEEzmZEV0pWfzbwFFzdY/h23efGOk0g
	hNt9YLOk8lCM2Yd2y4FbkpkUrvlcY8wu86VdS2SQjm4sFfW+T4VQAU5cW9dNj/4pKb3hKaqLbQxv2
	jvjiksdbeRoM5CqdAQ2JAcAT/fniX/C+SlPfH9IQmV9bLSa9GvE8rDMX46LJFl+OPH6zmYpHuZBnI
	LgNTmRpo7OrGsW/5nlRcoRShcaMDndmJ1+EcIJwCZZgTvbDQwT+4G1ybfLQ64DOxNXHMIVvJ/Eih7
	dfbD+WRSQZ9AbhozFfZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzstV-0001Ok-2Z; Tue, 20 Aug 2019 01:25:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzstP-0001KV-JI
 for linux-mediatek@lists.infradead.org; Tue, 20 Aug 2019 01:25:01 +0000
X-UUID: 322afb15883b4cc58580c3ad7e7f6237-20190819
X-UUID: 322afb15883b4cc58580c3ad7e7f6237-20190819
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 540733252; Mon, 19 Aug 2019 17:24:32 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 18:24:31 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 20 Aug 2019 09:24:30 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 20 Aug 2019 09:24:29 +0800
Message-ID: <1566264270.30493.4.camel@mtksdaap41>
Subject: [GIT PULL] mediatek drm fixes for 5.3
From: CK Hu <ck.hu@mediatek.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>, 
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Date: Tue, 20 Aug 2019 09:24:30 +0800
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 23F0EE08CDB5C7F7271977C097F1F055DAC535E422A77928DA182112381D41192000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_182459_639098_328F233A 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Alexandre Courbot <acourbot@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Dave, Daniel:

This include PRIME buffer and of_node fixes.

Regards,
CK

The following changes since commit
5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://github.com/ckhu-mediatek/linux.git-tags
tags/mediatek-drm-fixes-5.3

for you to fetch changes up to 165d42c012be69900f0e2f8545626cb9e7d4a832:

  drm/mediatek: mtk_drm_drv.c: Add of_node_put() before goto (2019-08-19
07:09:29 +0800)

----------------------------------------------------------------
Mediatek drm fixes for Linux 5.3

----------------------------------------------------------------
Alexandre Courbot (2):
      drm/mediatek: use correct device to import PRIME buffers
      drm/mediatek: set DMA max segment size

Nishka Dasgupta (1):
      drm/mediatek: mtk_drm_drv.c: Add of_node_put() before goto

 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 54
+++++++++++++++++++++++++++++++---
 drivers/gpu/drm/mediatek/mtk_drm_drv.h |  2 ++
 2 files changed, 52 insertions(+), 4 deletions(-)



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
