Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6613E13C4AC
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Jan 2020 15:01:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fdi3g4QWgK1Hvlx7oI6b1bO3gne3Kg3fDaoiXZKxcCE=; b=ngsuN9ADSUmdlu
	QdFcfdzCbU9NdmhEpPfd5qkVVVJbUSwZGuXUU5YPT8tej6OQEoKBounj70FcJGrdoM4BgGZq0RkcL
	BlrTgbL+eLSXLHzOhwuheHx8H5UGetUFTeuvKrC2rjfaGrpzr9XkUoKBGPYylQAqulfYDJo43WiyT
	NQyZd0LNTwNEjqW7IVqk6tK9MUKxJYcnFK8+CyhfKqWKpl05mZrGpaM1z/9bHA6t+NQH5Lx8RwtdR
	YOq5/WCzmlT9gj/7xgTGi4+3DckOz2e6vulfYzKESpSIBBshV+1LphwlAJiub0cy9Aea/vvPVe7Nm
	5dbgyx5vsSxjYbs7/SfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjEJ-0003vw-3S; Wed, 15 Jan 2020 14:01:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjEC-0003uJ-3d
 for linux-mediatek@lists.infradead.org; Wed, 15 Jan 2020 14:01:04 +0000
X-UUID: 6e4504113bfd4d4086e494d218e60f56-20200115
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=iqI0/BExz5+Ja7rS3jk0iIZb9us1L2XdgWD3khlwGTc=; 
 b=LWjHoDhyXr0y9XU2gzGe72pGrxYp8ZrRRXLFa+62qWdBtL7esNLE/JgWYwEFgTWo0aIueIpiwqRTrVDFk4tnevdwnFecproMmHrTf4e+5JYiB/ETcw0Z7dB5IxbuVCk2A7RRfz5aU/HcGs3+q7NA/pFQZwSavkUIoMGhHvVBZNQ=;
X-UUID: 6e4504113bfd4d4086e494d218e60f56-20200115
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1271274059; Wed, 15 Jan 2020 06:00:52 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 Jan 2020 06:00:51 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 15 Jan 2020 22:01:15 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 15 Jan 2020 22:00:58 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg
 <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v8 0/8] add driver for "boe, tv101wum-nl6", "boe, tv101wum-n53",
 "auo, kd101n80-45na" and "auo, b101uan08.3" panels
Date: Wed, 15 Jan 2020 21:59:50 +0800
Message-ID: <20200115135958.126303-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: E5D42284C1FC6913D7CA8B057FD34836D64D46B9D57845A57AD5644DF877DD162000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_060100_156288_8F75F09B 
X-CRM114-Status: UNSURE (   9.10  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Changes since v7:
 - base drm-misc-next branch
 - fix document pass dt_binding_check
 - remove backlight from panel driver

Changes since v6:
 - fix boe_panel_init err uninit.
 - adjust the delay of backlight on.

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
  dt-bindings: display: panel: add AUO auo, b101uan08.3 panel
    documentation
  drm/panel: support for auo,b101uan08.3 wuxga dsi video mode panel

 .../display/panel/auo,b101uan08.3.yaml        |  74 ++
 .../display/panel/auo,kd101n80-45na.yaml      |  74 ++
 .../display/panel/boe,tv101wum-n53.yaml       |  74 ++
 .../display/panel/boe,tv101wum-nl6.yaml       |  74 ++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 854 ++++++++++++++++++
 7 files changed, 1160 insertions(+)
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
