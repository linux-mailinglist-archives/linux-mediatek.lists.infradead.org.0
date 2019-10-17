Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA90DB344
	for <lists+linux-mediatek@lfdr.de>; Thu, 17 Oct 2019 19:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4xUZeHKqIYgjZJj4Ki4SsrLaRz8Y2EvW4dFxPt2hv04=; b=jEpali8lwOFlWn
	3Iebg4H0MbXKQ0RzGK/EpM676UQ4jTW7/RN9wgizBpqyDhIBKi7bUD7RnJzqh5jRTKGeoBmYoibkX
	aYdr4BxtR5SP6c1fqRQgzpw0EKqqVssfvx0vXlVw0stWSVxQ7YWG2J+VsTNVDGtxjG7ZNKcRaRYoD
	xeRWBEuLPkWlUsh3Lezwi/asnZQOJhtAOqJV18/OOvRCbi6Kuc4HsoGjWjcCyun5Wc7QsJQdhf7Gm
	NRkNzZjz3v1zLkba987pt06W9qkrzHLiPsvMDlWxLsIMcjx0QIae+bsdav4hS8dP7iimWaWUSVRn+
	OnhFoYehg5N8R9DEzv6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9Yn-0003xb-9P; Thu, 17 Oct 2019 17:27:37 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9Yc-0003qV-Pn; Thu, 17 Oct 2019 17:27:29 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iL9YU-0005iY-Ei; Thu, 17 Oct 2019 18:27:18 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iL9YU-0008BR-0s; Thu, 17 Oct 2019 18:27:18 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] usb: mtu3: fix missing include of mtu3_dr.h
Date: Thu, 17 Oct 2019 18:27:17 +0100
Message-Id: <20191017172717.31409-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_102726_985247_2AF0F68C 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 linux-mediatek@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The declarations of ssusb_gadget_{init,exit} are
in the mtu3_dr.h file but the code does that implements
them does not include this. Add the include to fix the
following sparse warnigns:

drivers/usb/mtu3/mtu3_core.c:825:5: warning: symbol 'ssusb_gadget_init' was not declared. Should it be static?
drivers/usb/mtu3/mtu3_core.c:925:6: warning: symbol 'ssusb_gadget_exit' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/usb/mtu3/mtu3_core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/mtu3/mtu3_core.c b/drivers/usb/mtu3/mtu3_core.c
index c3d5c1206eec..9dd02160cca9 100644
--- a/drivers/usb/mtu3/mtu3_core.c
+++ b/drivers/usb/mtu3/mtu3_core.c
@@ -16,6 +16,7 @@
 #include <linux/platform_device.h>
 
 #include "mtu3.h"
+#include "mtu3_dr.h"
 #include "mtu3_debug.h"
 #include "mtu3_trace.h"
 
-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
