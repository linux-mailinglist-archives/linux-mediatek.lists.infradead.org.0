Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7BECF94F
	for <lists+linux-mediatek@lfdr.de>; Tue,  8 Oct 2019 14:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXcHbG33SZf1SrH2CjwWYCa4uWAdbznyxt8/eeOVUyU=; b=OcUqYJ3nvGuQ0X
	2lnpZDc1v43lv2LXZR43rYVcVWAgUACsEwTg7PdiOq/ybJdWZgcZTqwjiMSBEbqN6g5P8h+9UgVKR
	N63Fp7zpyEbxxofacWTUStUkyDyqSsvTRA4jorP0N1s2FuYuXV43JjHkz9FIYD9BO7CRygq8mt7cW
	n6MPpQIbwYiQ254OjD7UaV6qArlF3VQ8U/9QkUVUhuU7JVsaJBth+oQm4nq1nbU6uhpUdzCr2Ogvj
	oZGKv24+MEz+iR20HtPMisRte5o7GMvtdvTFtlN+27Drq80XbXTYO7ADC2pCQiDAzDI8EQh3bb06M
	/feL3JdC/MCMUjA4l4EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoHZ-0005Wk-7A; Tue, 08 Oct 2019 12:08:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHoHN-0005Ok-J9; Tue, 08 Oct 2019 12:07:50 +0000
X-UUID: cc126fc158864afcbf932cf0483e1328-20191008
X-UUID: cc126fc158864afcbf932cf0483e1328-20191008
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2139095528; Tue, 08 Oct 2019 04:07:43 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 8 Oct 2019 05:07:40 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 8 Oct 2019 20:07:38 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 8 Oct 2019 20:07:38 +0800
Message-ID: <1570536459.4686.109.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Qian Cai <cai@lca.pw>
Date: Tue, 8 Oct 2019 20:07:39 +0800
In-Reply-To: <D2B6D82F-AE5F-4A45-AC0C-BE5DA601FDC3@lca.pw>
References: <1570532528.4686.102.camel@mtksdccf07>
 <D2B6D82F-AE5F-4A45-AC0C-BE5DA601FDC3@lca.pw>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_050749_636293_1F892D5B 
X-CRM114-Status: GOOD (  12.00  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>, Linux
 ARM <linux-arm-kernel@lists.infradead.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-10-08 at 07:42 -0400, Qian Cai wrote:
> 
> > On Oct 8, 2019, at 7:02 AM, Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > 
> > I don't know very well in UBSAN, but I try to build ubsan kernel and
> > test a negative number in memset and kmalloc_memmove_invalid_size(), it
> > look like no check.
> 
> It sounds like more important to figure out why the UBSAN is not working in this case rather than duplicating functionality elsewhere.

Maybe we can let the maintainer and reviewer decide it :)
And We want to say if size is negative numbers, it look like an
out-of-bounds, too. so KASAN make sense to detect it.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
