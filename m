Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E5F1D29AB
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 10:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gDVN3tXDjDsM9Grz6gpOKNLvnBRBb+qWlRuwB08wXw4=; b=EVQa41BGvfPO4v
	VvEalI7bObghInlRpVqx+/jCw6lqBIvCfhFZG8/Xus1b+wXbGKMSDQy0UpTRO84QA30nlBM2keQTg
	CRCHWtAuDlmBNLYZLqtXI7sZkbb4YYLnDOtsiMDdV7yj/lHO4o8QI+M16g+HVOOFKUubRZHHv8rQI
	4rujzlCuKCStA8ONTsn8BO2oge0mtrCdrTzSdZOGoGxEnhOfMxzesTRg2ll1zepZpqlY89m0+1k7v
	veoRo7h7xh0t6eWFF/5kdLLPPRfj4a+J6wa3pV9lWboRH0/2owtuQLSL8MDE7bRFWTsHRCYBTMedI
	oXW4e+eDMyLmXugAEyGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8tL-0003Fu-0D; Thu, 14 May 2020 08:06:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8t9-00037n-Pc; Thu, 14 May 2020 08:06:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=mrYggCzs9Es3fAAe5f56aAmDrVDKZRIo+656NWVNAmE=; b=KaJb2VJ4hnbwYT85m4GyIwxhu0
 7DtBDcQb+1g2cR/+jqc+fgQl5VPFX7XAaWf7eZ9tu1zrDDv7AGUZ5vvqGc8UU7JvOaz0SMPV5SkSN
 1Ve2lopgvfbShiGL9scBMzQI9V9pxlEWDsYWvVpK+HFIZRixBF8xTPQeXGOVE+6+mppRV2QWIIiW9
 tIY0Q2hUexFv9xl/8sN7iqmpmJIlSiLR/08gLucAAJSfm3pQ1DVRPL2MzFrVKhF+edZbDQw/UyOIf
 MSe9wRfK0vAQSQAAuBxbYFHpVSzYQFc1BBCTYJgb+pz63VTH+gvSVrSF4Ib4FD+BtRXUE8so/esTm
 +U1JDREA==;
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8t4-0006ol-W5; Thu, 14 May 2020 08:06:42 +0000
X-UUID: 771406d5acdf404ea80643361c820bcf-20200514
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=mrYggCzs9Es3fAAe5f56aAmDrVDKZRIo+656NWVNAmE=; 
 b=CGMHCk55cK2/bNG2A2iILno5IFMf1/qKxfzHDDUHO3mt0jR6l1CHH28XrZiZmfmOxDxULeY8nySjQBq62pfmXOVmCE+P5bdXDOmaNaCmJ6INFE18KxOOaYUezH11YXjl+oImim/sO9CUhnlSd91qMt6Yk38ucUYkHOLb1vqy20U=;
X-UUID: 771406d5acdf404ea80643361c820bcf-20200514
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1551782415; Thu, 14 May 2020 00:05:06 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 01:05:01 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 16:05:01 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 14 May 2020 16:05:01 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Felipe Balbi <balbi@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>, "Sergey
 Organov" <sorganov@gmail.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH] usb: gadget: u_serial: fix coverity warning: negative index
 at array
Date: Thu, 14 May 2020 16:05:00 +0800
Message-ID: <1589443500-3990-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_090639_536572_AC09BAE6 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.7 MIME_BASE64_TEXT       RAW: Message text disguised using base64
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
Cc: Stan Lu <stan.lu@mediatek.com>, Macpaul Lin <macpaul.lin@gmail.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This issue has been reported by coverity scanner.
Replace "int portnum" by "unsigned int", this void negative index at
array.

Signed-off-by: Stan Lu <stan.lu@mediatek.com>
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/usb/gadget/function/u_serial.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/function/u_serial.c b/drivers/usb/gadget/function/u_serial.c
index 8167d37..53951f2 100644
--- a/drivers/usb/gadget/function/u_serial.c
+++ b/drivers/usb/gadget/function/u_serial.c
@@ -587,7 +587,7 @@ static int gs_start_io(struct gs_port *port)
  */
 static int gs_open(struct tty_struct *tty, struct file *file)
 {
-	int		port_num = tty->index;
+	unsigned int	port_num = tty->index;
 	struct gs_port	*port;
 	int		status = 0;
 
@@ -1211,7 +1211,7 @@ int gserial_alloc_line_no_console(unsigned char *line_num)
 	struct gs_port			*port;
 	struct device			*tty_dev;
 	int				ret;
-	int				port_num;
+	unsigned int			port_num;
 
 	coding.dwDTERate = cpu_to_le32(9600);
 	coding.bCharFormat = 8;
-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
