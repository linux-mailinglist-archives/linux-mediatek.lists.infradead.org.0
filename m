Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CC419E877
	for <lists+linux-mediatek@lfdr.de>; Sun,  5 Apr 2020 04:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n2HMWlYt4/5sWZDZbwE7T+zKclBABhEeTO8iyfOcy68=; b=KjlR4Cs+bXEMvx
	RWOh6xcMF8QSL3tAkEu4ZxtJ+mZ8QisQwJUGXVso/UItC+KHMNtPwCB82acblWO9OsJfbE/Sj0c1x
	7o4XKTouYL6AcmWE2oAtFvQcnAse2q2vwDw2MuMT5NhAE2efSOiIk7364SY8iX0lI84WDvCqfxPTn
	9gue9BWm8wPTWsiiaPJW1WVFchomVEpKh0TDwvWrEIN6TSOZOmm/O67D7zYRa+9588T0A9UgXF6nG
	4u7au14q3f16u7JzBsrrF1gdPW0i/wCAvqMMxnQYu2DeljkvWWofsKaOeMc6NR4x5dFr04YSFCsx3
	ayJ0STtLdrDRelYv//cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKueV-0004By-6r; Sun, 05 Apr 2020 02:04:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKueS-0004BU-Vt
 for linux-mediatek@lists.infradead.org; Sun, 05 Apr 2020 02:04:46 +0000
X-UUID: 94687869bf804549ba6d8a09c3aea409-20200404
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=6C3FlHQGtBSdpwcN0CT4YS5wT7BtTafM/xlh39vjWCw=; 
 b=CDnjp3IVAFpw/2MnoqCmu/DqMax5bkp32pdHIiv8A8A88ldWdErkvPMCI2DOfaehqI1widqRazlyJRJ4DdUX8bzpzbc/SW85Fn8pBAoyImYn3O1CfDB4NpRo273GasplPM/lD4V7KFZ2yQ9wf0vV90LhlvzfFythaoOCKBpW9t0=;
X-UUID: 94687869bf804549ba6d8a09c3aea409-20200404
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1749151056; Sat, 04 Apr 2020 18:04:34 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 4 Apr 2020 19:04:32 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 5 Apr 2020 10:04:13 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sun, 5 Apr 2020 10:04:13 +0800
From: Fengping yu <fengping.yu@mediatek.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: [PATCH v3] Add support for MediaTek keypad 
Date: Sun, 5 Apr 2020 10:01:13 +0800
Message-ID: <20200405020114.14787-1-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_190445_028535_5CE0AE79 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


This patchset add support to MediaTek matrix keypad.

Change since V2:
- remove extra space and redundant lines
- update keypad devicetree document debounce time unit
- change to use devm_platform_ioremap_resource() to simplify resource management
- use bitmap to store and check keypad state

fengping.yu (2):
  add dt-binding document for MediaTek Keypad
  add MediaTek keypad driver

 .../devicetree/bindings/input/mtk-kpd.txt     |  61 +++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/input/keyboard/Kconfig                |   7 +
 drivers/input/keyboard/Makefile               |   1 +
 drivers/input/keyboard/mtk-kpd.c              | 258 ++++++++++++++++++
 5 files changed, 328 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
 create mode 100644 drivers/input/keyboard/mtk-kpd.c

--
2.18.0

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
