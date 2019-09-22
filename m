Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB458BA30B
	for <lists+linux-mediatek@lfdr.de>; Sun, 22 Sep 2019 18:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZfDzHlOWXuPtM+zmd0Im9YcTGEXH6KmOJWBBMcEhRs=; b=rnoWBo4aYPlPr5
	XtHm6arBQIekuMa96rz+weYDg68htn3Q+YXqFcpE4bJ6WxYQF7VyXmg6vs1oDFDKP8tK/yE+MXvMT
	Vk42+Dwx4CpV+gBMxIsADt7b97Qc3yatoSPZXsg3qO+2aZYsXXNl6f5FBC7lZIJwD0EHp9Fyloy3e
	bgkgYZwrXgwN6dGQRdr4clUNgceB/3KGniGJdrib6EIRk1Bc0M3gUb+F1iTeMSuO5kYZfxVNlKvmn
	ED7pmJfDZUB5qqTl0I6jyYpHAxOkPPiujXQMlGNU4cN56eKDWHLzCv1Opo7GYrTZ7deNVsgTcsJKp
	Tr2kX8W2QJnKQqvIsuxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC4NL-0000PF-QL; Sun, 22 Sep 2019 16:06:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC4NG-0000O9-UH
 for linux-mediatek@lists.infradead.org; Sun, 22 Sep 2019 16:06:13 +0000
X-UUID: 067882ddf8034a98bb0049039416715c-20190922
X-UUID: 067882ddf8034a98bb0049039416715c-20190922
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1973836716; Sun, 22 Sep 2019 08:05:59 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 22 Sep 2019 09:05:57 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Sep 2019 00:05:56 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 23 Sep 2019 00:05:56 +0800
Message-ID: <1569168360.9436.17.camel@mtkswgap22>
Subject: Re: [PATCH] mm: slub: print_hex_dump() with DUMP_PREFIX_OFFSET
From: Miles Chen <miles.chen@mediatek.com>
To: David Rientjes <rientjes@google.com>
Date: Mon, 23 Sep 2019 00:06:00 +0800
In-Reply-To: <alpine.DEB.2.21.1909210207240.259613@chino.kir.corp.google.com>
References: <20190920104849.32504-1-miles.chen@mediatek.com>
 <alpine.DEB.2.21.1909210207240.259613@chino.kir.corp.google.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_090610_984993_BDB21D7B 
X-CRM114-Status: GOOD (  14.28  )
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
Cc: Andrew Morton <akpm@linux-foundation.org>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Pekka Enberg <penberg@kernel.org>,
 linux-mm@kvack.org, linux-mediatek@lists.infradead.org,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


On Sat, 2019-09-21 at 02:08 -0700, David Rientjes wrote:
> On Fri, 20 Sep 2019, Miles Chen wrote:
> 
> > Since commit ad67b74d2469d9b8 ("printk: hash addresses printed with %p"),
> > The use DUMP_PREFIX_OFFSET instead of DUMP_PREFIX_ADDRESS with
> > print_hex_dump() can generate more useful messages.
> > 
> > In the following example, it's easier get the offset of incorrect poison
> > value with DUMP_PREFIX_OFFSET.
> > 
> > Before:
> > Object 00000000e817b73b: 00 00 00 00 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000000816f4601: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000000169d2bb8: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000000f4c38716: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000000917e3491: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000000c0e33738: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 000000001755ddd1: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > 
> > After:
> > Object 00000000: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000010: 63 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000020: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000030: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b a5
> > 
> > I think it might be worth to convert all DUMP_PREFIX_ADDRESS to
> > DUMP_PREFIX_OFFSET for the whole Linux kernel.
> > 
> 
> I agree it looks nicer for poisoning, I'm not sure that every caller of 
> print_section() is the same, however.  For example trace() seems better 
> off as DUMP_PREFIX_ADDRESS since it already specifies the address of the 
> object being allocated or freed and offset here wouldn't really be useful, 
> no?

Thanks for the reply. I agree not all caller of print_section() is the
same case. Converting all of them is not a good idea.

For mm/slub.c, let me explain with the following example.

The offset is useful for use-after-free debugging. I often trace the
"free track" and find the data structure used and compare the data
structure with the offset of the incorrect poison value and see if the
incorrect poison value matches some member of that data structure.


Assume we have a data structure "something" and it has a member called
"m", offset = 780.

        struct something *p; // sizeof(struct something) is 1024

        p = kmalloc(sizeof(struct something), GFP_KERNEL);
        kfree(p);

        (p->m) = 'c'; // assume p->member is at offset=780


When we see the log: (using DUMP_PREFIX_ADDRESS)
We have to "count" the offset.

INFO: Slab 0x(____ptrval____) objects=21 used=21 fp=0x(____ptrval____)
flags=0x10200
INFO: Object 0x(____ptrval____) @offset=7808 fp=0x(____ptrval____)

Redzone ____ptrval____: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone ____ptrval____: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone ____ptrval____: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone ____ptrval____: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone ____ptrval____: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone ____ptrval____: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone ____ptrval____: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone ____ptrval____: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
...
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 63 6b 6b 6b
kkkkkkkkkkkkckkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object ____ptrval____: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk


The log of using DUMP_PREFIX_OFFSET:
We still have to "count", but it is easier.

INFO: Slab 0x(____ptrval____) objects=21 used=21 fp=0x(____ptrval____)
flags=0x10200
INFO: Object 0x(____ptrval____) @offset=7808 fp=0x(____ptrval____)

Redzone 00000000: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone 00000010: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone 00000020: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone 00000030: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone 00000040: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone 00000050: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone 00000060: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Redzone 00000070: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
bb  ................
Object 00000000: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000010: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000020: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000030: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000040: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000050: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000060: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
...
Object 00000270: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000280: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000290: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 000002a0: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 000002b0: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 000002c0: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 000002d0: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 000002e0: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 000002f0: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000300: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 63 6b 6b 6b
kkkkkkkkkkkkckkk
Object 00000310: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000320: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000330: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000340: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000350: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000360: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000370: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk
Object 00000380: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
kkkkkkkkkkkkkkkk


cheers,
Miles


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
