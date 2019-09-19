Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614C3B739B
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Sep 2019 08:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5PZAVdSGpCOu/KY11TEQUpke+EPhLgwSpdwTEGTk57o=; b=iThuIkj07S8O/C
	IVUk4UYQugZIGS0BR5ReLRl6wViqpRKazzZ4ukeVILoIdZSuvEee3R+LQRd5M6oH24B+Lt8EE5VQt
	WEUu52p0EuE4F8TIqyV3NfLDozYCgvpYn0FEnF56Dlbm4ZS8v245UGHKGlylOXL9XoTMZoWx54uqG
	sCHr68bEFzoh3SWtYYyc/HumKpTnmcb1UoGXR5kCoHDQNlWoXTKrS6gSCzggvvVeqmtfHB+LXDxSc
	aarFbKTh7ppoiCNzfL/lyRA5c1lgvkoF609dl8yfhg+SrIOIyIiIhKF5ogR/TWtTvsDhW1J2iBnVF
	Pn8OWL6g9VnubqX1nc+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAqOa-0004lC-Rn; Thu, 19 Sep 2019 06:58:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAqOW-0004kJ-Fx
 for linux-mediatek@lists.infradead.org; Thu, 19 Sep 2019 06:58:26 +0000
X-UUID: c4103c5555734f2288e2637d6d60ae0e-20190918
X-UUID: c4103c5555734f2288e2637d6d60ae0e-20190918
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 28065844; Wed, 18 Sep 2019 22:58:16 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 23:58:16 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 19 Sep 2019 14:58:10 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Thu, 19 Sep 2019 14:58:09 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH v7 0/9] Support dsi for mt8183
Date: Thu, 19 Sep 2019 14:57:57 +0800
Message-ID: <20190919065806.111016-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: D62ABCF55B85138BF60811A1B649122AB907DE58EFCC9D9BE31F9CBE4AB89AD62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_235824_537879_5288A443 
X-CRM114-Status: UNSURE (   6.17  )
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, bibby.hsieh@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Changes since v6:
 - add dphy reset to avoid dphy fifo error after lines number setting
 - separate dsi cmd reg setting from "fixes CMDQ reg address of mt8173
   is different with mt2701"

Changes since v5:
 - fine tune dphy timing.

Changes since v4:
 - move mipi_dsi_host_unregiter() to .remove()
 - fine tune add frame size control coding style
 - change the data type of data_rate as u32, and add DIV_ROUND_UP_ULL
 - use div_u64 when 8000000000ULL / dsi->data_rate.

Changes since v3
 - add one more 'tab' for bitwise define.
 - add Tested-by: Ryan Case <ryandcase@chromium.org>
	and Reviewed-by: CK Hu <ck.hu@mediatek.com>.
 - remove compare da_hs_zero to da_hs_prepare.

Changes since v2:
 - change the video timing calc method
 - fine the dsi and mipitx init sequence
 - fine tune commit msg

Changes since v1:
 - separate frame size and reg commit control independent patches.
 - fix some return values in probe
 - remove DSI_CMDW0 in "CMDQ reg address of mt8173 is different with mt2701" 

Jitao Shi (9):
  drm/mediatek: move mipi_dsi_host_register to probe
  drm/mediatek: fixes CMDQ reg address of mt8173 is different with
    mt2701
  drm/mediatek: replace writeb() with mtk_dsi_mask()
  drm/mediatek: add dsi reg commit disable control
  drm/mediatek: add frame size control
  drm/mediatek: add mt8183 dsi driver support
  drm/mediatek: change the dsi phytiming calculate method
  drm: mediatek: adjust dsi and mipi_tx probe sequence
  drm/mediatek: add dphy reset after setting lanes number

 drivers/gpu/drm/mediatek/mtk_drm_drv.c |   2 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c     | 233 ++++++++++++++++++-------
 2 files changed, 170 insertions(+), 65 deletions(-)

-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
