Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8B51FE162
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jun 2020 03:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfzL/pI2BHKSbLQhrsHCRlmeFJbWKJHxlHWX2pF0zJU=; b=s6alVBovByiojr
	jpWb5+DF0XIBdMv9C+T8LwXJPhMobB8X6iMDn+fmOuvhoOgl3lLTqTmTnWCrzwo9pBCVJ8N2QGGfe
	OzZzHO2ws7LZkba1ownWertdBPXFPNQCR0b/c6YPiumgParSfLo15U1g19kNyDmA1aakZPmaElhb5
	BDrRBwAB09WIAVQ4lnhP+fozmK5w+/jdI30sLj8B6bK0NMiDvQnhDXetRWKUjvdMnzGrTtgFcMZBN
	s5OdZwqpl1x/60h1aWuxhPUQzHH/ACjTCHQp9iySt2CGw9gPpahUozRJU1uB8r7uUscVsoe6XaWO7
	yeYOcAB/ftV9RcCwdESQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljl9-0005jL-Bb; Thu, 18 Jun 2020 01:54:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljGW-0006Ky-2c; Thu, 18 Jun 2020 01:22:57 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A066020B1F;
 Thu, 18 Jun 2020 01:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443370;
 bh=Eq1DcpXNBEZu/BqwZzcK+uB2YIFarNYs5ivrXYLr4uU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ESi6GQCCQBMA/Crc6rCGnoKGZO/PQsOupHh42boP8MfuWeVhEyN0U3awrkRFt6vnZ
 /fx4NxDfTFg9y5sJqfRIgVKjVgKwz0PFglKmFFAnzMrfqvM2LeLkJPPZsapHA89+Ej
 uAf45wkj0e16cTKMIw3YKM/vvxyX17Yumu4kq/W4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 024/172] serial: 8250: Fix max baud limit in
 generic 8250 port
Date: Wed, 17 Jun 2020 21:19:50 -0400
Message-Id: <20200618012218.607130-24-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_182252_253842_26DB2B0F 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
 "accounts suspended", "account credited", "account verification"
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Long Cheng <long.cheng@mediatek.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Serge Semin <Sergey.Semin@baikalelectronics.ru>

[ Upstream commit 7b668c064ec33f3d687c3a413d05e355172e6c92 ]

Standard 8250 UART ports are designed in a way so they can communicate
with baud rates up to 1/16 of a reference frequency. It's expected from
most of the currently supported UART controllers. That's why the former
version of serial8250_get_baud_rate() method called uart_get_baud_rate()
with min and max baud rates passed as (port->uartclk / 16 / UART_DIV_MAX)
and ((port->uartclk + tolerance) / 16) respectively. Doing otherwise, like
it was suggested in commit ("serial: 8250_mtk: support big baud rate."),
caused acceptance of bauds, which was higher than the normal UART
controllers actually supported. As a result if some user-space program
requested to set a baud greater than (uartclk / 16) it would have been
permitted without truncation, but then serial8250_get_divisor(baud)
(which calls uart_get_divisor() to get the reference clock divisor) would
have returned a zero divisor. Setting zero divisor will cause an
unpredictable effect varying from chip to chip. In case of DW APB UART the
communications just stop.

Lets fix this problem by getting back the limitation of (uartclk +
tolerance) / 16 maximum baud supported by the generic 8250 port. Mediatek
8250 UART ports driver developer shouldn't have touched it in the first
place  notably seeing he already provided a custom version of set_termios()
callback in that glue-driver which took into account the extended baud
rate values and accordingly updated the standard and vendor-specific
divisor latch registers anyway.

Fixes: 81bb549fdf14 ("serial: 8250_mtk: support big baud rate.")
Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Paul Burton <paulburton@kernel.org>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Long Cheng <long.cheng@mediatek.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Link: https://lore.kernel.org/r/20200506233136.11842-2-Sergey.Semin@baikalelectronics.ru
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/tty/serial/8250/8250_port.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250/8250_port.c
index 5a04d4ddca73..20b799219826 100644
--- a/drivers/tty/serial/8250/8250_port.c
+++ b/drivers/tty/serial/8250/8250_port.c
@@ -2628,6 +2628,8 @@ static unsigned int serial8250_get_baud_rate(struct uart_port *port,
 					     struct ktermios *termios,
 					     struct ktermios *old)
 {
+	unsigned int tolerance = port->uartclk / 100;
+
 	/*
 	 * Ask the core to calculate the divisor for us.
 	 * Allow 1% tolerance at the upper limit so uart clks marginally
@@ -2636,7 +2638,7 @@ static unsigned int serial8250_get_baud_rate(struct uart_port *port,
 	 */
 	return uart_get_baud_rate(port, termios, old,
 				  port->uartclk / 16 / UART_DIV_MAX,
-				  port->uartclk);
+				  (port->uartclk + tolerance) / 16);
 }
 
 void
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
