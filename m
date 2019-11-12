Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97602F8922
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 Nov 2019 07:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BWmOYKOqzzS1qXsH/aLXMDTfKkSxTB57bAC7a+4OAS4=; b=tKR2MoMKt1Bb3O
	3jVgr1KCabQgGIOSNi8ctDBdL651WQNXcuEbYx0t2C1ZI7OBNGfd7PgZzAPi47B8YTfT2Idai1890
	FW+DNNxlkPqDYOg6stqFohuDOHW9jRZuPcEvRzGMsFKGl61Ujmef4bdJAJ+VTSMgXA7mVjbHcA1SN
	MU0LgY0/AmgfEYavXTGzKIcwG1Sq8HqnjYy4SeIkExx3HVXU21UgwuKc9Xl7X/+d+G3rE8ugligfT
	cfjWQRb3Rf90P9fslBY8MRgkSh55HjaH9hRCx8qJkt4f0/64ewRs0u7crTmaA8VHLXts7qQeulpKG
	r1HR/lLdDKKeVr0FTteQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQ5H-0006sF-J0; Tue, 12 Nov 2019 06:55:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQ2V-00037G-8a; Tue, 12 Nov 2019 06:52:37 +0000
X-UUID: 89aca546d7934a43b7478ebba615a1ab-20191111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=wdSA5MhsOB9Ng3BYMmOZcpPo2w0m19TKE7PUEysk4/I=; 
 b=SkP0IbH/QLcjU2jsExzjgYU1k9VtsALKCJE6i0+bOJ8il7W+JBAO8INgUqhoW5yd2xMYC9HyydvrOQ/MwMsEC7auD6Kw6wxkn7bcxQnEBO7aOPvbrFEqjQsqEl2xZYVHAhBCOgPGhwJxn49M3rbWF5sSUqJbNc10PDUuIHpE8eM=;
X-UUID: 89aca546d7934a43b7478ebba615a1ab-20191111
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 577759287; Mon, 11 Nov 2019 22:52:29 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 22:52:27 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 14:52:25 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 12 Nov 2019 14:52:26 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH v4 0/2] fix the missing underflow in memory operation function
Date: Tue, 12 Nov 2019 14:52:25 +0800
Message-ID: <20191112065225.6971-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_225235_332463_58D71915 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patchsets help to produce KASAN report when size is negative numbers
in memory operation function. It is helpful for programmer to solve the 
undefined behavior issue. Patch 1 based on Dmitry's review and
suggestion, patch 2 is a test in order to verify the patch 1. 

[1]https://bugzilla.kernel.org/show_bug.cgi?id=199341 
[2]https://lore.kernel.org/linux-arm-kernel/20190927034338.15813-1-walter-zh.wu@mediatek.com/ 

Walter Wu (2): 
kasan: detect negative size in memory operation function 
kasan: add test for invalid size in memmove
---
Changes in v2:
fix the indentation, thanks for the reminder Matthew.

Changes in v3:
Add a confition for memory operation function, need to
avoid the false alarm when KASAN un-initialized.

Changes in v4:
modify negative size condition
modify comments
modify the fixed code about early stages of boot
---
 include/linux/kasan.h     |  2 +-
 lib/test_kasan.c          | 18 ------------------
 mm/kasan/common.c         | 25 +++++++------------------
 mm/kasan/generic.c        |  9 ++++-----
 mm/kasan/generic_report.c | 11 -----------
 mm/kasan/kasan.h          |  2 +-
 mm/kasan/report.c         |  5 ++++-
 mm/kasan/tags.c           |  9 ++++-----
 mm/kasan/tags_report.c    | 11 -----------
 9 files changed, 21 insertions(+), 71 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
