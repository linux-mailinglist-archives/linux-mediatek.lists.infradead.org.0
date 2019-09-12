Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7E4B0C00
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 11:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RycR+HMycLbfYPfKT1HA3Paw9aMRAH+mZArlqrIt0dA=; b=GWPLF3IpCJQI1L
	yBTKRkkKs+LNcp9cN3q20eMEYqIqiNc39VrwLrxdJS9+BPTnuvO2uhDsFdoOw9kM27QiYZfnyLhdL
	POSd7+1Vz5avdSZhDPW4uanFE/S1TovH3CVhTHa/AG94PHGNQeR9N3CpRZJQlbBJWGmlcH87r+dgG
	sZGLKST1m7RtUuCk7fab6tx867daxDPoWyIWQhj7L4zgYZ5b8k+lL+mRitOY6Vui3xSxyWcQzn+HD
	y9V8Ci1PGQACi1p6FoYUqLWG7+WQtMmOEdFx7L+Fv6SzOmejrfSnIhewniHL4d2AQ7T2yg4fs1tIO
	0scBP9Q3oo13syu6Ijrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Lor-0007hQ-51; Thu, 12 Sep 2019 09:55:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Lon-0007gM-Kz
 for linux-mediatek@lists.infradead.org; Thu, 12 Sep 2019 09:55:14 +0000
X-UUID: 2b5818e1002942eba9434c201bd71ef0-20190912
X-UUID: 2b5818e1002942eba9434c201bd71ef0-20190912
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 780704557; Thu, 12 Sep 2019 01:55:05 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 02:55:03 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 17:55:02 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Sep 2019 17:55:01 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 0/2] ASoC: mt8183: fix audio playback slowly after playback
 during bootup
Date: Thu, 12 Sep 2019 17:54:54 +0800
Message-ID: <1568282096-13821-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_025513_689522_A74E4DE7 
X-CRM114-Status: UNSURE (   4.67  )
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

These two patches fix audio playack slowly after playbakc during bootup.
The patches are based on broonie tree "for-next" branch.

Jiaxin Yu (2):
  ASoC: dt-bingdings: mediatek: mt8183: add a property "medaitek,toprgu"
  ASoC: mt8183: fix audio playback slowly after playback during bootup

 .../bindings/sound/mt8183-afe-pcm.txt         |  2 ++
 sound/soc/mediatek/common/mtk-base-afe.h      |  1 +
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c    | 21 +++++++++++++++++++
 sound/soc/mediatek/mt8183/mt8183-reg.h        |  6 ++++++
 4 files changed, 30 insertions(+)

-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
