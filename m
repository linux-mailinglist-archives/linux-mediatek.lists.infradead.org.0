Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02E824B88
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 11:30:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l9Jhhtnl5A5KG5XcI/O5IkbxsOlMEl2nw7t+cJw+zfo=; b=OcXhKlqx2zNkfQ
	Cc8UlOsHJZ+1XLomE+YKGG1er0APDJcyIK55IMrubJlYSafLX/+fm7/g4n1cc9uI2OhZYxOtFokdq
	38H5dkcHT0kzxq542CAJmfS+n9f83Qu3x1d9J8mDc8f2iNQeWvr8ZzHI+gWOy9EkzASuR03acD2cX
	DDTx4Xjq0jkgTWvVHvpsb8bZrdZJuZr8VCdT85f28N1HqX9LkT47r7+Spji3sLItyKxaigRXEEYT+
	4Bgetkyp0HFFq2Bn3v8lEwFPXio8955dCuPOBF+5vYbXnOAWm96fmQ45nGLHDVcvkJB2UNiYoQa0l
	jnRXte2lvSRGBwNEfztA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT15p-0003Yu-EK; Tue, 21 May 2019 09:29:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT15l-0003Xz-TM
 for linux-mediatek@lists.infradead.org; Tue, 21 May 2019 09:29:55 +0000
X-UUID: a1de8d6a9178411eae9d24fa22fd34b4-20190521
X-UUID: a1de8d6a9178411eae9d24fa22fd34b4-20190521
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 118384799; Tue, 21 May 2019 01:29:45 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 02:29:44 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 17:29:42 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 21 May 2019 17:29:42 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH 0/2] ASoC: Mediatek: MT8183: fix compile error
Date: Tue, 21 May 2019 17:29:36 +0800
Message-ID: <1558430978-2440-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_022953_957960_F7EF33D6 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, wsd_upstream@mediatek.com,
 garlic.tseng@mediatek.com, Jiaxin
 Yu <jiaxin.yu@mediatek.com>, tzungbi@google.com,
 linux-mediatek@lists.infradead.org, kaichieh.chuang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch fixed the compile error which patches for support S32_LE 
and S24_LE.
The patch is based on broonie "for-5.3" branch.

Jiaxin Yu (2):
  ASoC: Mediatek: MT8183: fix compile error
  ASoC: Mediatek: MT8183: fix compile error

 sound/soc/mediatek/common/mtk-afe-fe-dai.c |  3 +--
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 18 +++++++++---------
 2 files changed, 10 insertions(+), 11 deletions(-)

-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
