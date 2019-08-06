Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFE3830A8
	for <lists+linux-mediatek@lfdr.de>; Tue,  6 Aug 2019 13:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x8CespvWWnPV+nzOpseZEAwusB+4Etlu1FEgSU1LY5w=; b=E/XgjRC44fFNTR
	2Bae+Qa2cBKAaG3KxXASaft+Ytb8IZEHa7j0VfKoXDClX2xZDrV8oe7AcdUV4GRPMo+Ph4IR34vmE
	c+fWzRGLxqVd9ePsH+AGC2fKYD40a0H+S2FOlbS0oOF9pcT7344YjuzKR2K94Km01kL/tO6NT/qx8
	woRrHkr/Rod3w08OwHBbNXnILQQgXq4b6P7mRJtpAutB42ITObV3ut2YgFWHRRZQQP8++pvT/6xky
	a/CCt9gQhDg7O7OzmocBqn6P2nNkwQ2TJXiql+3ZYDx1ohv+UpuiszMvg91bOrB8wXIQvmZEdO5Eq
	aYld2obNmTp/B1KkckzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxfQ-0006az-HU; Tue, 06 Aug 2019 11:30:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxfL-0005w2-Vq; Tue, 06 Aug 2019 11:30:09 +0000
X-UUID: 986e0643415a461996fda545f1cf4b8a-20190806
X-UUID: 986e0643415a461996fda545f1cf4b8a-20190806
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2111948725; Tue, 06 Aug 2019 03:29:52 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 04:29:50 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 19:29:49 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 6 Aug 2019 19:29:49 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>
Subject: [PATCH] arm64: mm: print hexadecimal EC value in mem_abort_decode()
Date: Tue, 6 Aug 2019 19:29:48 +0800
Message-ID: <20190806112948.4357-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_043008_037428_7072841B 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.rutland@arm.com>, wsd_upstream@mediatek.com, Anshuman
 Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This change prints the hexadecimal EC value in mem_abort_decode(),
which makes it easier to lookup the corresponding EC in
the ARM Architecture Reference Manual.

The commit 1f9b8936f36f ("arm64: Decode information from ESR upon mem
faults") prints useful information when memory abort occurs. It would
be easier to lookup "0x25" instead of "DABT" in the document. Then we
can check the corresponding ISS.

For example:
Current	info	  	Document
		  	EC	Exception class
"CP15 MCR/MRC"		0x3	"MCR or MRC access to CP15a..."
"ASIMD"			0x7	"Access to SIMD or floating-point..."
"DABT (current EL)" 	0x25	"Data Abort taken without..."
...

Before:
Unable to handle kernel paging request at virtual address 000000000000c000
Mem abort info:
  ESR = 0x96000046
  Exception class = DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
Data abort info:
  ISV = 0, ISS = 0x00000046
  CM = 0, WnR = 1

After:
Unable to handle kernel paging request at virtual address 000000000000c000
Mem abort info:
  ESR = 0x96000046
  EC = 0x25, Exception class = DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
Data abort info:
  ISV = 0, ISS = 0x00000046
  CM = 0, WnR = 1

Cc: Mark Rutland <Mark.rutland@arm.com>
Cc: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: James Morse <james.morse@arm.com>
Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 arch/arm64/mm/fault.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index cfd65b63f36f..afb6041e25e6 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -86,8 +86,8 @@ static void mem_abort_decode(unsigned int esr)
 	pr_alert("Mem abort info:\n");
 
 	pr_alert("  ESR = 0x%08x\n", esr);
-	pr_alert("  Exception class = %s, IL = %u bits\n",
-		 esr_get_class_string(esr),
+	pr_alert("  EC = 0x%lx, Exception class = %s, IL = %u bits\n",
+		 ESR_ELx_EC(esr), esr_get_class_string(esr),
 		 (esr & ESR_ELx_IL) ? 32 : 16);
 	pr_alert("  SET = %lu, FnV = %lu\n",
 		 (esr & ESR_ELx_SET_MASK) >> ESR_ELx_SET_SHIFT,
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
