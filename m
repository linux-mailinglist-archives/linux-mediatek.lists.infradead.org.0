Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F4A898AA
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 10:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7MeY0XwNJvHU78l/vLdGZAH05ue/KKbCYu0K+CPdU8=; b=GAbQjPwLt3lrS+
	M0HszBw3rvYwxmZBYhVv7kkQR9GcaUBE0dlqYjsvvE9YjMwIcjqCu715Xe7YvXqIuGr8PS5RiRGrA
	ZWyWZ//qLWFNSkcx2RJfBDJwT5ZpdT3nUkgCeW2OtSCFM6TuU068ne9pbHIv8LuwWk8hNZX4Gw9lb
	9HbUZjFofA8RBoi6PO8SbtFlD+PC57VJMEN3zONfroUQdH1yWsHI9sH7pqvF4O2q6YyE+8hckgXxM
	nP9i+EXZ3vawotCStbc+1VafDXzqRoNc8JgDzWaAyMkfh4YSQhW71idal9ox2eE435bVRvHR8M8CP
	w7xp20DWbmYiUqbGSfEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx5df-0000Fk-Pr; Mon, 12 Aug 2019 08:25:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx5dW-00084I-P3
 for linux-mediatek@lists.infradead.org; Mon, 12 Aug 2019 08:25:04 +0000
X-UUID: c85c550c5f3f460bb6e822cf2d97ff71-20190812
X-UUID: c85c550c5f3f460bb6e822cf2d97ff71-20190812
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2050087701; Mon, 12 Aug 2019 00:24:51 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 12 Aug 2019 01:24:50 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 12 Aug 2019 16:24:48 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 12 Aug 2019 16:24:48 +0800
Message-ID: <1565598290.5872.6.camel@mtkswgap22>
Subject: Re: [RFC PATCH v2] mm: slub: print kernel addresses in slub debug
 messages
From: Miles Chen <miles.chen@mediatek.com>
To: Matthew Wilcox <willy@infradead.org>
Date: Mon, 12 Aug 2019 16:24:50 +0800
In-Reply-To: <20190809142617.GO5482@bombadil.infradead.org>
References: <20190809010837.24166-1-miles.chen@mediatek.com>
 <20190809024644.GL5482@bombadil.infradead.org>
 <1565359918.12824.20.camel@mtkswgap22>
 <20190809142617.GO5482@bombadil.infradead.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_012502_837981_68AAF68E 
X-CRM114-Status: UNSURE (   8.62  )
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
Cc: Andrew Morton <akpm@linux-foundation.org>, wsd_upstream@mediatek.com,
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 Pekka Enberg <penberg@kernel.org>, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, David Rientjes <rientjes@google.com>,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 "Tobin C . Harding" <me@tobin.cc>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-08-09 at 07:26 -0700, Matthew Wilcox wrote:
> On Fri, Aug 09, 2019 at 10:11:58PM +0800, Miles Chen wrote:
> > On Thu, 2019-08-08 at 19:46 -0700, Matthew Wilcox wrote:
> > > On Fri, Aug 09, 2019 at 09:08:37AM +0800, miles.chen@mediatek.com wrote:
> > > > INFO: Slab 0x(____ptrval____) objects=25 used=10 fp=0x(____ptrval____)
> > > 
> > > ... you don't have any randomness on your platform?
> > 
> > We have randomized base on our platforms.
> 
> Look at initialize_ptr_random().  If you have randomness, then you
> get a siphash_1u32() of the address.  With no randomness, you get this
> ___ptrval___ string instead.
> 
You are right. There is no randomness in this platform. (I ran my test
code on Qemu with no randomness)


thanks again


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
