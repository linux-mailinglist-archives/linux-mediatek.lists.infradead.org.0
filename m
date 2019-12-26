Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0701212AA20
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Dec 2019 05:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raqoGEPfyPelWUDFxxmaKX0wG0Gb2kL1vO4wIzi6Tww=; b=ajOuITeZaRK9T0
	YgjT657mdNtWY0iNsdELfe7hwkSfTCnk6tVL6lxsMuNmkGiFWYKYmmnzWek2/3uz0zW3jnwKT82l6
	uPO9zq66gENSna0ewLJYzCLxLmuVm/kkSkuAgPj6O1U2aFaPs1GxoYAebTwKQ9UzGwArPoFu0OGFM
	f3sR9jiS0rdJqMiazwAVIUgCyLSHfRZHxRdR8l4bbmxFm2hRN1lVp54bFLKv8XUkXMYav5Ne92jHM
	7XhJyN4qNbVKaj0oYKcXZZEwg6u9rparcEfe4o9rjKb9CeW0iCnnpyVIhSLqSOuRK5e3pX0H076h5
	3bD+faljBnQvOwC9ZHzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikKL2-00046Z-2o; Thu, 26 Dec 2019 04:01:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikKKx-000462-VU
 for linux-mediatek@lists.infradead.org; Thu, 26 Dec 2019 04:01:25 +0000
X-UUID: 50f7c5697c55462fbdb3cd8385dd00d3-20191225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=SOFsA6XoDQBIw637BsIfztzTRDRPnBhAyPLmANxVkxc=; 
 b=byBjXLMOx4RGQl+0mmjFyHddsPhZtRtybLd6njGLzBT3ZP8mBkaLB0eLFc6qaruw5vIya506WUd/W2fF55Q1k6gxb2dV+AErQSBNONHSSX6JB5+wQ34AJ7XxbTMfBBnL9XfuOrtD6XKq1vhrkVYncpusw8unia2nuT32qF1yt6g=;
X-UUID: 50f7c5697c55462fbdb3cd8385dd00d3-20191225
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2095694480; Wed, 25 Dec 2019 20:01:19 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Dec 2019 20:01:44 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Dec 2019 12:01:16 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 26 Dec 2019 12:00:10 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] mm/page_owner: print largest memory consumer when OOM
 panic occurs
Date: Thu, 26 Dec 2019 12:01:14 +0800
Message-ID: <20191226040114.8123-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <1806FE86&#45;9508&#45;43BC&#45;8E2F&#45;3620CD243B14@lca.pw>
References: <1806FE86&#45;9508&#45;43BC&#45;8E2F&#45;3620CD243B14@lca.pw>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_200124_019987_06EC6D48 
X-CRM114-Status: UNSURE (   6.49  )
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
Cc: Michal Hocko <mhocko@suse.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> Not sure if you have code that can share but I can't imagine there are many places that would have a single call site in the driver doing alloc_pages() over and over again. For example, there is only two alloc_pages() in intel-iommu.c with one is only in the cold path, so even if alloc_pgtable_page() one do leaking, it is still up to there air if your patch will catch it because it may not a single call site and it needs to leak significant amount of memory to be the greatest consumer where it is just not so realistic. 

That is what the patch does -- targeting on the memory leakage which causes an OOM kernel panic, so the greatest consumer information helps (the amount of leakage is big enough to cause an OOM kernel panic)

I've posted the number of real problems since 2019/5 I solved by this approach.

  Miles
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
