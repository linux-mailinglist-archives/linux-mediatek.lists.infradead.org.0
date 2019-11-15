Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727C3FDBA7
	for <lists+linux-mediatek@lfdr.de>; Fri, 15 Nov 2019 11:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2e4tXj9wNWCM7p+iP+MfUgv//22vCVbF7KZg7Kq7xn0=; b=dTqIZc02U8wV7W
	GRCJePJNuQbXUdNLL6wcMMpJ+0f5uQLs96ZUcRT6lazJAOqVetawF63z2A2BAU0PAK3L1rXe8DKrX
	+zxhViabIn4/m36LXjw+b/GFNZ4DO5rHIdZVeYYK1fHkxpQZp3Fxx1UUgpfdlmBNJh7JXHvoOxFnP
	birtkeG2vFhWEN708hMy6UO9ftAjVEFE5kJwStOUcpT2ATyPMifRlkfI8ZwMjGuHCJq2O2I1yU8yZ
	bPLTR+U04WILXgat/z78wPG6DERlLs1dGMqj3xysjcJK164BsV9kmS1UN+GKfGfKJkG/RnKsDQvQ5
	l0y4iXxSO7qRTYk0If1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZ7v-0004jS-IO; Fri, 15 Nov 2019 10:46:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZ7r-0004ic-SF
 for linux-mediatek@lists.infradead.org; Fri, 15 Nov 2019 10:46:53 +0000
X-UUID: 165835cb1ca5461080a063f8c2e77d3f-20191115
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=XvSkp9xVpFWOB3NWQrX4rm3jnrQn3054pdByDxnuQzU=; 
 b=Kr1DaXRhpepMjBPTFzzkJ8Qqq4AmpHM8CVMR5I3IKYkkL+mM3+AFRh8RPaWzP8s6aQAtvMHMLj57UE+kEvGyU7Er2IVt4EoEir36yPnrKQ2c8OUHFJVim+NbNKnbjnoVxWyh7Q61Cu6MpesO+0eM8OfpLmR0929paDEe8X24TIw=;
X-UUID: 165835cb1ca5461080a063f8c2e77d3f-20191115
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <eason.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 869374266; Fri, 15 Nov 2019 02:46:48 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 15 Nov 2019 02:46:44 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 15 Nov 2019 18:46:29 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 15 Nov 2019 18:46:30 +0800
From: Eason Yen <eason.yen@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH v2 0/2] ASoC: mediatek: common: refine mtk_afe_fe_hw_params
Date: Fri, 15 Nov 2019 18:46:28 +0800
Message-ID: <1573814790-15057-1-git-send-email-eason.yen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0E10D15F3C201DB86376E220A1CD87BB91925424D676BEC5877C277BBC603FAA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_024652_126951_1D0FC16D 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, chipeng.chang@mediatek.com,
 jiaxin.yu@mediatek.com, linux-mediatek@lists.infradead.org,
 eason.yen@mediatek.com, matthias.bgg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch is to add more helpers to control mtk_memif dma_address/format/pbuf_size
And refine hw_params and hw_prepare by these helpers.

*** BLURB HERE ***
v2 changes:
  split patch v1 to two seprated patches for different purpose.

v1 changes:
  1. patchwork list:
     https://mailman.alsa-project.org/pipermail/alsa-devel/2019-November/158394.html

Eason Yen (2):
  ASoC: mediatek: common: add some helpers to control mtk_memif
  ASoC: mediatek: common: refine hw_params and hw_prepare

 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 359 +++++++++++++++++++++++------
 sound/soc/mediatek/common/mtk-afe-fe-dai.h |  16 ++
 sound/soc/mediatek/common/mtk-base-afe.h   |  28 ++-
 3 files changed, 336 insertions(+), 67 deletions(-)

-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
