Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135D09BBCD
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 06:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iEWR0M/QK77QNTOWcw3BsIpJNqNSRTxWyjyGGHkT3/E=; b=doV6EQSzFc5i4M
	lzEvJdfEAHbndU6XGgKmmgcjBxchK9s8REJKF4gNC4FBcIbJUd+8x5imokHxDdcuAZUFEzH0csoVW
	BuiTxTyacB4W4yKLL7TtVqXuFl/+vEiFGt+n4Y5y9l9dVFZIKtCwQLnt609sqjgKqNUkBgT1DVrlW
	N5/+Go3FB67t6eacBaPTQxnn2yOojShUtfg+4weF+Brrh8dxzRb/IV0SX1KxzAh63xmtywTMqonUK
	ya5+jA9r0E9B8i+R+GC6KsLUK1A1lT0ynblo8zw5K0rURjZK0vylLzfjQk6MXvMApmqy1tV1z45z5
	zk+ae3uJqnHVdzewjUXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1NtC-0007fv-KE; Sat, 24 Aug 2019 04:42:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Nt8-0007fT-Oa
 for linux-mediatek@lists.infradead.org; Sat, 24 Aug 2019 04:42:56 +0000
X-UUID: 378f75ddc0c3408cada11fa1ba9db987-20190823
X-UUID: 378f75ddc0c3408cada11fa1ba9db987-20190823
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1970629985; Fri, 23 Aug 2019 20:42:37 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 21:40:57 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 24 Aug 2019 12:39:03 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 24 Aug 2019 12:37:45 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH v2 0/3] ASoC: mediatek: mt8183: fix mt8183-mt6358 tdm out
 issues 
Date: Sat, 24 Aug 2019 12:37:22 +0800
Message-ID: <1566621445-26989-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_214254_807955_16521069 
X-CRM114-Status: UNSURE (   5.74  )
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com, jiaxin.yu@mediatek.com,
 perex@perex.cz, tzungbi@google.com, linux-mediatek@lists.infradead.org,
 eason.yen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


v2: 
	1. Base on branch asoc-next that merged branch 'asoc-5.4'.
	2. Split the PATCH 2/2 that in v1 into three patches.

v1: 
	1. Base on branch asoc-next that merged branch 'asoc-5.3'.
	2. Mark suggest the patch would be split up into separate patches,
	   each fixing single issue.
	3. PATCH 1/2 has been applied to the asoc tree 'asoc-5.4'.

Jiaxin Yu (3):
  ASoC: mediatek: mt8183: fix tdm out data align issue
  ASoC: mediatek: mt8183: tdm hw support tdm out and 8ch i2s out
  ASoC: mediatek: mt8183: fix tdm out data is valid on rising edge

 sound/soc/mediatek/common/mtk-afe-fe-dai.c    |   3 +-
 sound/soc/mediatek/mt8183/mt8183-dai-tdm.c    | 177 ++++++++++++++----
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c   |   3 +
 sound/soc/mediatek/mt8183/mt8183-reg.h        |   8 +-
 4 files changed, 152 insertions(+), 39 deletions(-)

-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
