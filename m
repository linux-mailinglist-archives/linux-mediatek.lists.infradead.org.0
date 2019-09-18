Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B17B630E
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 14:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ToEpQBhAp4Jo5IlP3j+XN7Z6GbXfTjkGD6nR/KQTpgE=; b=KxvJxXXk1B58b1
	uH2VVwjNMvFdHLGhMdXZo3EI+mtxBuG2l7dL65srYjnLBHA+y1r0HECwMk4fgk2ujsrX3QAr4iUyh
	xhUfziFAPpjD8Ec5J6XlPN4bndnEcoHMXkrXSfATrBQVw4djl15kfpTpB4SxOLP+zVPk+QaCFWnfR
	frOtG+3wrJxmROmrX/tH7OBGFas8N9bvcQeInSfvwnDmvRVYXWfn10F2I3oGxD9ArPQNd8JQZdTtm
	ainZNLtRqgCwQyu5DmTbSBJUMATHrQ0CWnNOKlk4gxEk0U5dvXKxA5w+l4moiiwBYugORVqhXjCrE
	hQU+74pkgGIozGoamHtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZ0n-000520-V6; Wed, 18 Sep 2019 12:24:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZ0j-00050m-Lv
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 12:24:43 +0000
X-UUID: 60d42dc780894e7582cb33072805b9ad-20190918
X-UUID: 60d42dc780894e7582cb33072805b9ad-20190918
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 945774554; Wed, 18 Sep 2019 04:24:28 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 05:24:28 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 18 Sep 2019 20:24:23 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 18 Sep 2019 20:24:22 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, "Daniel
 Vetter" <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 0/8] add driver for "boe, tv101wum-nl6", "boe, tv101wum-n53",
 "auo, kd101n80-45na" and "auo, b101uan08.3" panels
Date: Wed, 18 Sep 2019 20:24:14 +0800
Message-ID: <20190918122422.17339-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3D3638C9865A7E2EAAD19D70A1240530FBA96708D19439D0F3519DFF0DE5CAEA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_052441_722049_7EEBC0ED 
X-CRM114-Status: UNSURE (   8.21  )
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Changes since v5:
 - covert the documents to yaml
 - fine tune boe, tv101wum-n53 panel video timine

Changes since v4:
 - add auo,b101uan08.3 panel for this driver.
 - add boe,tv101wum-n53 panel for this driver.

Changes since v3:
 - remove check enable_gpio.
 - fine tune the auo,kd101n80-45na panel's power on timing.

Changes since v2:
 - correct the panel size
 - remove blank line in Kconfig
 - move auo,kd101n80-45na panel driver in this series.

Changes since v1:

 - update typo nl6 -> n16.
 - update new panel config and makefile are added in alphabetically order.
 - add the panel mode and panel info in driver data.
 - merge auo,kd101n80-45a and boe,tv101wum-nl6 in one driver

Jitao Shi (8):
  dt-bindings: display: panel: Add BOE tv101wum-n16 panel bindings
  drm/panel: support for BOE tv101wum-nl6 wuxga dsi video mode panel
  dt-bindings: display: panel: add auo kd101n80-45na panel bindings
  drm/panel: support for auo,kd101n80-45na wuxga dsi video mode panel
  dt-bindings: display: panel: add boe tv101wum-n53 panel documentation
  drm/panel: support for boe,tv101wum-n53 wuxga dsi video mode panel
  dt-bindings: display: panel: add AUO auo,b101uan08.3 panel
    documentation
  drm/panel: support for auo,b101uan08.3 wuxga dsi video mode panel

 .../display/panel/auo,b101uan08.3.yaml        |  67 ++
 .../display/panel/auo,kd101n80-45na.yaml      |  67 ++
 .../display/panel/boe,tv101wum-n53.yaml       |  67 ++
 .../display/panel/boe,tv101wum-nl6.yaml       |  67 ++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 876 ++++++++++++++++++
 7 files changed, 1154 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/auo,b101uan08.3.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/boe,tv101wum-n53.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c

-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
