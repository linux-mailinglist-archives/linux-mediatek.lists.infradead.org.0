Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A70C916BADE
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Feb 2020 08:39:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OsuJ5i3D9aKagNk51P3afVHHc8AAvvju5h2T7yoiylQ=; b=U2aOfAK4843iEh
	G+fHKsqRAjD46LnLEDlrjPwuuYM9lOv5uUirRhfyn9sFQHqbAYqmsvegTJOuGDc+Xsfyzh125Dpr5
	ylgXs9++B0rzttdBS6zDAUH3rwzLMYNSVz41bNQxjZ54E0qwozL7d+ghqj79NGqxDDQ7loUw6jSh5
	2NK0Zw/2+ysrhpMh+nFQKnpiDIpjTDCpgjMl+CtINZ+lGnsSXWRRxKeMxQ0bF3qt/KUMlESsTRCoU
	TLLpWjbGYTjhUJyQ9vKTp3WCuQBotDVhLyndSwn6lAqp8ponlxJ1/dnU6gNuFOPxKxle/wXimHS6i
	I4xhyaMfqCTsEmAq50sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Uom-00020M-Nk; Tue, 25 Feb 2020 07:39:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Uo4-0001K4-FS
 for linux-mediatek@lists.infradead.org; Tue, 25 Feb 2020 07:39:06 +0000
X-UUID: 6c448f5009484c7b9b5dc3b25ddba562-20200224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=JOPFLx0c64QohXvIceHZUjk7yf6iTiPFaEfvoGNhpc0=; 
 b=mL+UYeipL+Rww3LkSnW+is6ZUJ+DpDAvT/XnKeKkpfMAvvpNcIl/Iqi8YdrymYDVZFfoyspOCII1now4TmMv0wFtK4yc28g6sVNB5wV91zsHOANgdNkLRMvMq+fqgzrDstagiX7T2CQCoAeHV3Z7vQUqbnUpc7qZ+EPoihHFiPc=;
X-UUID: 6c448f5009484c7b9b5dc3b25ddba562-20200224
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1152287943; Mon, 24 Feb 2020 23:39:01 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 24 Feb 2020 23:38:59 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 15:37:00 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 25 Feb 2020 15:39:04 +0800
From: <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Subject: [PATCH v3 0/2] pinctrl: make MediaTek pinctrl v2 driver and MT6765
 pinctrl driver ready for building loadable module
Date: Tue, 25 Feb 2020 15:38:49 +0800
Message-ID: <1582616331-7702-1-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_233904_530025_FBCF3370 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sean.wang@kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, Light Hsieh <light.hsieh@mediatek.com>,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Light Hsieh <light.hsieh@mediatek.com>

In the future we want to be able to build the MediaTek pinctrl driver,
based on paris, as kernel module. This patch allows pinctrl-paris.c, the
external interrupt controller mtk-eint.c, and pinctrl-mtk-common-v2.c to
be loadable as module.

The following is the rationale for determining whether mtk-eint.c,
pinctrl-mtk-common-v2.c, and pinctrl-paris.c are built as loadable module:

1. drivers/pinctrl/mediatek/Kconfig:
1.1 PINCTRL_MTXXXX: change from bool to tristate. It is specified in
        defconfig file. MTXXXX can only be the user of pinctrl-paris,
        which can MT6765 or MT8183. The patch for changing
        PINCTRL_MT6765 from bool to tristate will be given as the next
        patch of the patch series.
1.2 PINCTRL_MTK_PARIS: change from bool to tristate and select
        PINCTRL_MTK_V2. No need to specify in defconfig file.
      * PINCTRL_MTK_PARIS will be y if any PINCTRL_MTXXXX selecting
        PINCTRL_MTK_PARIS is y.
      * PINCTRL_MTK_PARIS will be n if all PINCTRL_MTXXXX selecting
        PINCTRL_MTK_PARIS is n.
      * PINCTRL_MTK_PARIS will be m if some PINCTRL_MTXXXX selecting
        PINCTRL_MTK_PARIS are m and other PINCTRL_MTXXXX selecting
        PINCTRL_MTK_PARIS are n.
1.3 PINCTRL_MTK_MOORE: select EINT_MTK and PINCTRL_MTK_V2. It is make
        to be ready for building as loadable kernel module because it
        is not used on Android kernel.        
1.4 PINCTRL_MTK_V2: add this tristate config which depends on
        PINCTRL_MTK_PARIS and PINCTRL_MTK_MOORE. No need to specify in 
        defconfig file.
      * PINCTRL_MTK_V2 will be y if either PINCTRL_MTK_PARIS or
        PINCTRL_MTK_MOORE is y.
      * PINCTRL_MTK_V2 will be n if both PINCTRL_MTK_PARIS and
        PINCTRL_MTK_MOORE are n.
      * PINCTRL_MTK_V2 will be m if PINCTRL_MTK_PARIS is m and
        PINCTRL_MTK_MOORE is n.
1.5 EINT_MTK: change from bool to tristate and add rule for default.
        No need to specify in defconfig file.
      * First rule: determine if EINT_MTK is y or n according to 
        selection of PINCTRL_MTK or PINCTRL_MTK_MORE.
      * Second rule: determine if EINT_MTK is y, m, or n according to
        selection of PINCTRL_MTK_PARIS.

2. drivers/pinctrl/mediatek/Makefile: Use PINCTRL_MTK_V2 to determine
        if pinctrl-mtk-common-v2.c is built as loadable module or
        built-in.

Light Hsieh (2):
  pinctrl: make MediaTek pinctrl v2 driver ready for buidling loadable
    module
  pinctrl: make MediaTek MT6765 pinctrl ready for buidling loadable
    module

 drivers/pinctrl/mediatek/Kconfig                 | 15 ++++++++++++---
 drivers/pinctrl/mediatek/Makefile                |  5 +++--
 drivers/pinctrl/mediatek/mtk-eint.c              |  9 +++++++++
 drivers/pinctrl/mediatek/pinctrl-mt6765.c        |  4 ++++
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 24 ++++++++++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-paris.c         |  5 +++++
 drivers/pinctrl/pinconf-generic.c                |  1 +
 7 files changed, 58 insertions(+), 5 deletions(-)

-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
