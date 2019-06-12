Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AACB41E3E
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 09:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1m2613MM2flFAOB0R0kCCm0NdruOzXbpy9uRsugNaDQ=; b=bQUVvy0WCwyF3h
	QAPjPYNCOQ/9rTFLXs661hi9PqeyelWWV2UY/Gwiju3rE5e36zJ6JoTN4y3cxuIJ+tOzoikcZVLIN
	YocpPC4X60LxUNkRKn8JfhV0RJpIg7F+t1C03sowK+T1WWEV09mNrDJq753FLnx1E4BTeg5rR35/K
	aDJmeJ+Ky1NyxLFFFzUrkw+67wC0ePVNlKsHvGEnzudlsVd2sVI9RdbPwpf72TAzZr4r6XJudoHxL
	dwamSwelRDOxNwFJgb+LvjAMXjeM6tMUThjYKQDG+Bdb0Y41iXFOWTXyavVFFdGglFwb1YBGp63Ct
	tstTm70P6U7cuO5gndmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hay2b-0004Us-Js; Wed, 12 Jun 2019 07:51:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hay2X-0004UO-OS
 for linux-mediatek@lists.infradead.org; Wed, 12 Jun 2019 07:51:27 +0000
X-UUID: 4c20c77ea5e3483087f355ec321d6afc-20190611
X-UUID: 4c20c77ea5e3483087f355ec321d6afc-20190611
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 70139095; Tue, 11 Jun 2019 23:51:12 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 00:51:10 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 15:51:08 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Jun 2019 15:51:08 +0800
Message-ID: <1560325868.3259.6.camel@mtksdaap41>
Subject: [GIT,PULL] mediatek drm fixes for 5.2
From: CK Hu <ck.hu@mediatek.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>, 
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Date: Wed, 12 Jun 2019 15:51:08 +0800
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_005125_809094_B49BF0E7 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Yongqiang Niu <yongqiang.niu@mediatek.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Dave, Daniel:

This include unbind error fix, clock control flow refinement, and PRIME
mmap with page offset.

Regards,
CK

The following changes since commit
a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/ckhu-mediatek/linux.git-tags.git
mediatek-drm-fixes-5.2

for you to fetch changes up to 2458d9d6d94be982b917e93c61a89b4426f32e31:

  drm/mediatek: call mtk_dsi_stop() after mtk_drm_crtc_atomic_disable()
(2019-06-04 09:54:42 +0800)

----------------------------------------------------------------
Hsin-Yi Wang (5):
      drm/mediatek: fix unbind functions
      drm/mediatek: unbind components in mtk_drm_unbind()
      drm/mediatek: call drm_atomic_helper_shutdown() when unbinding
driver
      drm/mediatek: clear num_pipes when unbind driver
      drm/mediatek: call mtk_dsi_stop() after
mtk_drm_crtc_atomic_disable()

Yongqiang Niu (2):
      drm/mediatek: adjust ddp clock control flow
      drm/mediatek: respect page offset for PRIME mmap calls

 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 30
++++++------------------------
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  8 +++-----
 drivers/gpu/drm/mediatek/mtk_drm_gem.c  |  7 ++++++-
 drivers/gpu/drm/mediatek/mtk_dsi.c      | 12 +++++++++++-
 4 files changed, 26 insertions(+), 31 deletions(-)


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
