Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32495F5D6
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jul 2019 11:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fo+Ejqh9Tm0/A8LCfFVji7QOIBJHz/5IWTLOXwrCVOY=; b=DGub5kBkCmItgg
	3/fNtHlN0w4CiMFqDrswp/6XBwNqtZETy9s5fUOfRPMlJgV8KuMS/kwm2xDE2sHpX9Kg8BFylDzjJ
	gBG0vuA/ESpEKyR8TTu/tO5ktaYuKpwEa3aVf0WrJ5ARGD809PHAVh4jk/woCD+a9iiGRCOS3YMVS
	bSgFeafUcvRBx/kKPPkZkgE2Wa3qPPZmLQvyCjbvj/8hpe0wrbSfnwvd2If3Sdie2RioLNycFO9Fu
	KYurzH7G7g5e71W+Uo7aKoRMboohRJX/UhY7ME2xavCCPI5NliiDHr4BV7/dDhV+Hf/59K3tj6d0F
	JKspSMxR9Pvmhlm7/Fag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyEO-0000XR-Eq; Thu, 04 Jul 2019 09:40:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyEI-0000Tu-VX
 for linux-mediatek@lists.infradead.org; Thu, 04 Jul 2019 09:40:40 +0000
X-UUID: f9b62ff44bef40a38a6b1e5c2d728dc8-20190704
X-UUID: f9b62ff44bef40a38a6b1e5c2d728dc8-20190704
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 257802729; Thu, 04 Jul 2019 01:40:28 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 4 Jul 2019 02:40:27 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 4 Jul 2019 17:40:25 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 4 Jul 2019 17:40:25 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>
Subject: [PATCH v2] checkpatch: add several Kconfig default value tests
Date: Thu, 4 Jul 2019 17:40:24 +0800
Message-ID: <20190704094024.16162-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_024039_016728_E39C0B84 
X-CRM114-Status: UNSURE (   6.44  )
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
Cc: Yingjoe
 Chen <yingjoe.chen@mediatek.com>, Miles Chen <miles.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This change adds 3 Kconfig default value tests:

1. discourage default n cases:
e.g.,
default n

2. discourage default "[ynm]" cases:
e.g.,
arch/powerpc/Kconfig:   default "y" if PPC_POWERNV
arch/powerpc/Kconfig:   default "y" if PPC_POWERNV
arch/powerpc/Kconfig:   default "n"
drivers/auxdisplay/Kconfig:     default "n"
drivers/crypto/Kconfig: default "m"
drivers/rapidio/devices/Kconfig:        default "n"

3. discourage default \!?EXPERT cases:
e.g.,
drivers/hid/Kconfig:    default !EXPERT

tested cases:
default m
default n if ALPHA_EV5 || ALPHA_EV56 || (ALPHA_EV4 && !ALPHA_LCA)
default y if ALPHA_QEMU
default n if PPC_POWERNV
default n
default EXPERT
default !EXPERT
default "m"
default "n"
default "y" if EXPERT
default "y" if PPC_POWERNV

test result:
WARNING: 'default n' is the default value, no need to write it explicitly.
+       default n

WARNING: Avoid default turn on kernel configs by default !?EXPERT
+       default EXPERT

WARNING: Avoid default turn on kernel configs by default !?EXPERT
+       default !EXPERT

WARNING: Use default [ynm] instead of default "[ynm]"
+       default "m"

WARNING: Use default [ynm] instead of default "[ynm]"
+       default "n"

WARNING: Use default [ynm] instead of default "[ynm]"
+       default "y" if EXPERT

WARNING: Use default [ynm] instead of default "[ynm]"
+       default "y" if PPC_POWERNV

Change since v1:
discourage default n$
discourage default "[ynm]"
discourage default \!?EXPERT

Cc: Joe Perches <joe@perches.com>
Cc: Yingjoe Chen <yingjoe.chen@mediatek.com>
Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 scripts/checkpatch.pl | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 342c7c781ba5..c1de50202a18 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3005,6 +3005,27 @@ sub process {
 			     "Use of boolean is deprecated, please use bool instead.\n" . $herecurr);
 		}
 
+# discourage redundant 'default n'
+		if ($realfile =~ /Kconfig/ &&
+		    $line =~ /^\+\s*default n$/) {
+			WARN("DEFAULT_VALUE_STYLE",
+			     "'default n' is the default value, no need to write it explicitly.\n" . $herecurr);
+		}
+
+# discourage quote: use default [ynm], not default "[ynm]"
+		if ($realfile =~ /Kconfig/ &&
+		    $rawline =~ /^\+\s*default\s*"[ynm]"/) {
+			WARN("DEFAULT_VALUE_STYLE",
+			     "Use default [ynm] instead of default \"[ynm]\"\n" . $herecurr);
+		}
+
+# discourage default \!?EXPERT
+		if ($realfile =~ /Kconfig/ &&
+		    $line =~ /^\+\s*default \!?EXPERT/) {
+			WARN("DEFAULT_VALUE_STYLE",
+			     "Avoid default turn on kernel configs by default !?EXPERT\n" . $herecurr);
+		}
+
 		if (($realfile =~ /Makefile.*/ || $realfile =~ /Kbuild.*/) &&
 		    ($line =~ /\+(EXTRA_[A-Z]+FLAGS).*/)) {
 			my $flag = $1;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
