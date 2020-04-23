Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B591B51C9
	for <lists+linux-mediatek@lfdr.de>; Thu, 23 Apr 2020 03:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p1hIXEF0V8FoVj9i1qbphmq5jAvISV0KJW1PS5+ccws=; b=VlrDl5URP0vbw6
	JJb2oZCGA+rR/kOzKodOlNz4Fdi4YI0QsR80PZR/wQAIbCYdF3WBv1CVgIjB2CI1JlQwlOvRlb7bC
	xmyMLtOc2Dd++GZQJNVzin8/UQsTZRwXuQXqNC8GR7xJGxAJnRYhlelchWQ1Zj8M/X/jnlL/MFmuR
	i61E6UWNaWy6tJVpisv+D7nXopDkyRY3UQ7PSTcq0N5CNdXQXo6t/J16/YnBKRpjCa55gcDHqB5E3
	wdBONnZUIwLOfRdwwErEuvYOR8DKV55b7OMgydePOOKV7OAjT0nrRlhM9+PHd5/IrB+QSPiMCEio3
	GB6ukw/xM+2hGwURwl7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQbJ-00080w-JM; Thu, 23 Apr 2020 01:24:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQbG-0007zR-4w; Thu, 23 Apr 2020 01:24:23 +0000
X-UUID: 6290a55347df446bb5094e6942bd0e9b-20200422
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=n69err7fZ+dUEdayQQ/ds4lOY0vJ/aaYZuP0ALEneYI=; 
 b=sODo5jYW1KGP42KOk/BcU5+1EADLT/hogKmhIwSI4FCuzLtVEy33o+xsJy8dI42hnYpPl5gP8+pnvbHB6UUhaiSLvILJBMii1ByJh3QFXwPqMynC2F7dviDxKfMX84nd6vfqoiF2DkUFHPRyEtKQ8j5vDYPLksEogftU2laF2lw=;
X-UUID: 6290a55347df446bb5094e6942bd0e9b-20200422
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 947653832; Wed, 22 Apr 2020 17:24:06 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 22 Apr 2020 18:24:11 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 23 Apr 2020 09:24:05 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 23 Apr 2020 09:24:09 +0800
From: Fengping yu <fengping.yu@mediatek.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Marco Felsch <m.felsch@pengutronix.de>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: [PATCH v5] add mtk matrix keypad driver for keypad on MTK SoC 
Date: Thu, 23 Apr 2020 09:19:56 +0800
Message-ID: <20200423011958.30521-1-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: C4F198DFD9281E00ED4062512287613C53AF1CF5D317FAAF98071E88C786B0462000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_182422_197004_BC0F2510 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Change since v4:
- remove extra space and redundant lines
- remove disable_irq_nosync and enable_irq in irq handler
- put defconfig as a single patch
- unified device properties interface for ACPI and device trees
- fixed other issue according reviewer comments

fengping.yu (3):
  dt-bindings: add matrix keypad documentation
  arm64: configs: defconfig: enable mtk keypad config
  drivers: input: keyboard: add mtk keypad driver

 .../devicetree/bindings/input/mtk-kpd.txt     |  61 +++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/input/keyboard/Kconfig                |   9 +
 drivers/input/keyboard/Makefile               |   1 +
 drivers/input/keyboard/mtk-kpd.c              | 242 ++++++++++++++++++
 5 files changed, 314 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
 create mode 100644 drivers/input/keyboard/mtk-kpd.c

--
2.18.0

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
