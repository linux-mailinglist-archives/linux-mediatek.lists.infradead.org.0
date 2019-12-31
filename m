Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1D212D5EE
	for <lists+linux-mediatek@lfdr.de>; Tue, 31 Dec 2019 04:19:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ic+HMowc6GMZQ+ucJK8rFCFW6Oa7gn0oPmvdjTmvxQE=; b=dlWcEpAXfkBpXb
	GH88JpFEIXInJaj+yeYo+8sj9w9/621G+q4Kx5KqyDv7rU0Ttt0xSSWkRqmYmlxxFp14jya/3877G
	a8iXHIPmAusCEKKDRvQj6DrmriL5i0wtYZNcJdjTxu8vcaEOTXPAhBJCk6r1US3mSTWfbflVCOd4j
	MBFr7wQr9jQOy9dAK+WnzjbN3bU8l7IEiFExwRPBlVzNqF8hdrtzaJXx9Si0DZ4jNhEsqzGiq+bgI
	iEDVG7nweB7OxthoWgYJlR+/KKTrcMQDkmhF/66IiUPDWj9EX1H944GyErtXu+jZmP5sxsS4oE1KH
	9kVAChVy6c+t71zCNvYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im83d-0007P2-KF; Tue, 31 Dec 2019 03:18:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im83Z-0007Ob-OB
 for linux-mediatek@lists.infradead.org; Tue, 31 Dec 2019 03:18:55 +0000
X-UUID: fcdb08028ea64b8c8d42b7881b5d64ca-20191230
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:Date:To:From:Subject:Message-ID;
 bh=KD18K732o3BxYczOblMAtlKYarxqLyLhgJR6AsUrreM=; 
 b=cF24K72UgUrKyk+Gfjqup9ukBImXidQmhnf3fS37hLwojMNI5NgFXLX0qnSjMlakxVd4lx6/jDO750HGw0NkHQp84XuNPB/CFDv5EsYZIFCOxz/yxcYfIcYxyUdUn99ZFRzJhmxIETLLSNbLmtwPZnUwH/NcL6AO8c/7LunaMBA=;
X-UUID: fcdb08028ea64b8c8d42b7881b5d64ca-20191230
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1439677512; Mon, 30 Dec 2019 19:18:47 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 19:19:04 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Dec 2019 11:17:36 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 31 Dec 2019 11:18:31 +0800
Message-ID: <1577762298.23194.2.camel@mtksdaap41>
Subject: [GIT PULL] mediatek drm fixes for 5.5
From: CK Hu <ck.hu@mediatek.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>, 
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Date: Tue, 31 Dec 2019 11:18:18 +0800
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F7F959314EB0687E68F0E2354F4BCCE119135D8125203D2E913DEBAD18F37FAD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_191853_794124_0E20BD58 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Dave, Daniel:

This include phy timing and plane index fixes.

Regards,
CK

The following changes since commit
e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/ckhu-mediatek/linux.git-tags.git
tags/mediatek-drm-fixes-5.5

for you to fetch changes up to e18e0f6b7c8f220774dd68965e8a9b046905acc8:

  drm/mediatek: reduce the hbp and hfp for phy timing (2019-12-17
10:23:43 +0800)

----------------------------------------------------------------
Mediatek DRM fixes for Linux 5.5

----------------------------------------------------------------
Jitao Shi (1):
      drm/mediatek: reduce the hbp and hfp for phy timing

Pi-Hsun Shih (1):
      drm/mediatek: Check return value of mtk_drm_ddp_comp_for_plane.

Yongqiang Niu (1):
      drm/mediatek: Fix can't get component for external display plane.

 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 18 ++++++---
 drivers/gpu/drm/mediatek/mtk_dsi.c      | 67
+++++++++++++++++++--------------
 2 files changed, 50 insertions(+), 35 deletions(-)
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
