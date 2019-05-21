Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAED624B8B
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 11:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mksT4rOSXnTUiMYA6TmQDSX0HIs/xtyGREPhG4QGssE=; b=YiNO4dmdiSYY3Y
	ee5Umn5Fr+FYa4wN3b53eb1xAIf9b1QPYjoPZsGMworUnOkX9PdSLXb35HZfXxM8EpNMpaDt42wu/
	+Q+Xp1xoBx4XKdbSY5sabYeDD6n1Exapo0vK8ypDvcbBKq9aTQ0O6cF8Kvh1/Pa7fftwYnREtkqdD
	NgoIiYA35iVZyyvmolvoXmtIRXygz4vb7ixnqcBqhQ06H100XhsoA0XfjO314a9bMNdjVqwQHPuM3
	8mdQ2moMc4c0bds5ekB/miZpdELte+BMDxP/9osdtRA0U7kyF2WQMZTVtlGiVxYUBQ29CljVCLbmN
	mLKsJ7Z0fSh9UCrd9tHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT16K-0004pJ-4e; Tue, 21 May 2019 09:30:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT16H-0004of-LW
 for linux-mediatek@lists.infradead.org; Tue, 21 May 2019 09:30:26 +0000
X-UUID: 8f28fedef2994cff9fe18b8dae754199-20190521
X-UUID: 8f28fedef2994cff9fe18b8dae754199-20190521
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 13081902; Tue, 21 May 2019 01:30:00 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 02:29:58 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 17:29:44 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 21 May 2019 17:29:43 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>
Subject: [PATCH 1/2] ASoC: Mediatek: MT8183: fix compile error
Date: Tue, 21 May 2019 17:29:37 +0800
Message-ID: <1558430978-2440-2-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1558430978-2440-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1558430978-2440-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6041E3935DF2EB47530DCC13BC892BD73048309CBC0EE37183E313E98AE0528C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_023025_720566_4E59EEE4 
X-CRM114-Status: UNSURE (   8.98  )
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

mtk_regmap_update_bits() has been changed from four
parameters to five parameters.

Fixes: 1628fc3f4771 ("ASoC: Mediatek: MT8183: add memory interface data align")

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
---
Hi,
	This patch is based on for-5.3 branch.
	And tested pass on kukui board locally.
---
 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.c b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
index 19048c3..d165634 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.c
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
@@ -266,8 +266,7 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 			       1, hd_audio, memif->data->hd_shift);
 
 	mtk_regmap_update_bits(afe->regmap, memif->data->hd_align_reg,
-			       memif->data->hd_align_mshift,
-			       hd_align ? memif->data->hd_align_mshift : 0);
+			       1, hd_align, memif->data->hd_align_mshift);
 
 	return 0;
 }
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
