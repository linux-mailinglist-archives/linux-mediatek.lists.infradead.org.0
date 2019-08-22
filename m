Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ED699439
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 14:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hk7acgimUoLBVxOQeDQMUXwcqWfRZAAThE1C0v67dLE=; b=eXeRcXZAc8GxI8
	JFRQ2M+dUtoa5Cp7irQDYQGzNMGsNeLpufAwf2bWmtIZ2QMpdH+jn3noV7KgwzMy8Swq5YtJ46nuj
	QqyYaR09CfL4KfBe/CVF9WmslraipSsuJBn3UBgKcL9O9H1ro8b8GGnriSPwR2IAgYROhLpcJj+Yv
	N22ws6RLpJieow2dHgzneuW4LS/YxrecwSf66pH14RKvGbW1MOqz0u4rWBjRTsSu8puyGO+RGCgUD
	Whup90i2wxsMnqre+tJiN7SbStP5zPWBzgQGr82PXj6X0mdDOynVOuRgXIzxsjQh/WANeHCPrWm+W
	/MK9cq4Y7bOaEcLaMWaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mYj-0002vS-D2; Thu, 22 Aug 2019 12:51:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mYg-0002us-IP
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 12:51:19 +0000
X-UUID: d9dc2177aca74dc8a377d9dd8c814a45-20190822
X-UUID: d9dc2177aca74dc8a377d9dd8c814a45-20190822
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 847027465; Thu, 22 Aug 2019 04:51:09 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 05:51:07 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 20:51:06 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 20:50:59 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH 0/2] ASoC: MediaTek: fix mt8183-mt6358 tdm out issues 
Date: Thu, 22 Aug 2019 20:50:59 +0800
Message-ID: <1566478261-13464-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_055118_615912_0F805C16 
X-CRM114-Status: UNSURE (   5.09  )
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
Cc: alsa-devel@alsa-project.org, ck.hu@medaitek.com, lgirdwood@gmail.com,
 jiaxin.yu@mediatek.com, perex@perex.cz, tzungbi@google.com,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

These two patches are used to fix several issues related to TDM OUT.
The patches are based on broonie tre "for-next" branch.

Jiaxin Yu (2):
  ASoC: mediatek: mt8183: switch tdm pins gpio function when playback on
    or off
  ASoC: mediatek: mt8183: fix tdm out issue

 sound/soc/mediatek/common/mtk-afe-fe-dai.c         |   3 +-
 sound/soc/mediatek/mt8183/mt8183-dai-tdm.c         | 177 +++++++++++++++++----
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c        | 118 +++++++++++++-
 sound/soc/mediatek/mt8183/mt8183-reg.h             |   8 +-
 4 files changed, 261 insertions(+), 45 deletions(-)

-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
