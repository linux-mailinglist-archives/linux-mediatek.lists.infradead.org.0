Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB32DAB234
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Sep 2019 08:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RZ/Ef/4Szh5AGelUMH+Xw3lyTjgRm4N/aXn0c7yVeZo=; b=q3hZWQrYj4GVEe
	5Pn+N9AWhXajpNQeL4l1eun/T1KKM8hn4DZ2ysaYF93YVd4FTGjWgkOvO/9dk0NTeKcs1oqtR3tuN
	BZatqYxMpyImygA9SRNec61j5DtneXJ+32uhkmCjc2KpilWRkYaRDiXmkInsVxxf48+Tggoye7RLF
	fqWKs4DmW9ymJPyn1p0FmIIQ6iuI7juQ3JQclSm3BRnHZv5sjFNg5FcQ/52OpWGfOuI/iru0zATRm
	tlb2+oyg8I8NcObPsF66UnXK19O9isRMQvkjCUDXLvFiYUoowARq5ik25yUf47zsdDCr/n2/qZ31a
	qjjf4qOj2rvFCO5PWtwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67Jc-0005sN-Di; Fri, 06 Sep 2019 06:01:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67JZ-0005s0-Ia; Fri, 06 Sep 2019 06:01:46 +0000
X-UUID: 4abd6e27ed744027a7453885ec125f70-20190905
X-UUID: 4abd6e27ed744027a7453885ec125f70-20190905
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <mark-pk.tsai@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 401149852; Thu, 05 Sep 2019 22:01:34 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 23:01:32 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 14:01:31 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 6 Sep 2019 14:01:31 +0800
From: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <matthias.bgg@gmail.com>
Subject: [PATCH] perf/hw_breakpoint: Fix arch_hw_breakpoint
 use-before-initialization
Date: Fri, 6 Sep 2019 14:01:16 +0800
Message-ID: <20190906060115.9460-1-mark-pk.tsai@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_230145_622514_33FF0E70 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Alix Wu <alix.wu@mediatek.com>, YJ Chiang <yj.chiang@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

If we disable the compiler's auto-initialization feature
(-fplugin-arg-structleak_plugin-byref or -ftrivial-auto-var-init=pattern)
is disabled, arch_hw_breakpoint may be used before initialization after
the change 9a4903dde2c86.
(perf/hw_breakpoint: Split attribute parse and commit)

On our arm platform, the struct step_ctrl in arch_hw_breakpoint, which
used to be zero-initialized by kzalloc, may be used in
arch_install_hw_breakpoint without initialization.

Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Cc: YJ Chiang <yj.chiang@mediatek.com>
Cc: Alix Wu <alix.wu@mediatek.com>
---
 kernel/events/hw_breakpoint.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/events/hw_breakpoint.c b/kernel/events/hw_breakpoint.c
index c5cd852fe86b..8fb842394924 100644
--- a/kernel/events/hw_breakpoint.c
+++ b/kernel/events/hw_breakpoint.c
@@ -413,7 +413,7 @@ static int hw_breakpoint_parse(struct perf_event *bp,

 int register_perf_hw_breakpoint(struct perf_event *bp)
 {
-	struct arch_hw_breakpoint hw;
+	struct arch_hw_breakpoint hw = {0};
 	int err;

 	err = reserve_bp_slot(bp);
@@ -461,7 +461,7 @@ int
 modify_user_hw_breakpoint_check(struct perf_event *bp, struct perf_event_attr *attr,
 			        bool check)
 {
-	struct arch_hw_breakpoint hw;
+	struct arch_hw_breakpoint hw = {0};
 	int err;

 	err = hw_breakpoint_parse(bp, attr, &hw);
--
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
