Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1243BCF7B6
	for <lists+linux-mediatek@lfdr.de>; Tue,  8 Oct 2019 13:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJdaQ0N6Ea5+dt7BImrXWckMOprghhlX+z/7fSsIzUo=; b=Ex2Of1ImyG+amg
	fUupA5cKwSk9VNk8dKS7LX5ljtMmlob6riZ/sUOEiIXYGYIT8PN/8/BWazcGAwfeO3kQGRjlR7vQ/
	mvsRJcuvdn688gIWXH1p02zd024KSaTX66I7HxCkZa5qeh/eBxv0Z/ABpFmPtVaCeuSwybxQAcMnv
	j5iz0BfFMFS0l+CklXnhQgFPYXlKr2Zzt24keHMfAPSJRx9qs/cFnU08xKCwyLCGRbRsD2qu+ED7+
	XwqXXitz/iJR2DmaLfWuARS5i8UyyLOHX/o1TPr6TxhPe9bza5IYUEGLLdNxVa60YsQY+foK7CQyZ
	xgzRITmxn3U6EAuUpO2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnGA-0003MG-PR; Tue, 08 Oct 2019 11:02:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnFx-0003Dx-Jx; Tue, 08 Oct 2019 11:02:20 +0000
X-UUID: cd28475709364b57974ae7715b541d6c-20191008
X-UUID: cd28475709364b57974ae7715b541d6c-20191008
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1201304622; Tue, 08 Oct 2019 03:02:14 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 8 Oct 2019 04:02:08 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 8 Oct 2019 19:02:07 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 8 Oct 2019 19:02:07 +0800
Message-ID: <1570532528.4686.102.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Qian Cai <cai@lca.pw>
Date: Tue, 8 Oct 2019 19:02:08 +0800
In-Reply-To: <B53A3CC0-CEA6-4E1C-BC38-19315D949F38@lca.pw>
References: <1570515358.4686.97.camel@mtksdccf07>
 <B53A3CC0-CEA6-4E1C-BC38-19315D949F38@lca.pw>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_040217_659851_F80754B1 
X-CRM114-Status: UNSURE (   9.32  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>, Linux
 ARM <linux-arm-kernel@lists.infradead.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEwLTA4IGF0IDA1OjQ3IC0wNDAwLCBRaWFuIENhaSB3cm90ZToKPiAKPiA+
IE9uIE9jdCA4LCAyMDE5LCBhdCAyOjE2IEFNLCBXYWx0ZXIgV3UgPHdhbHRlci16aC53dUBtZWRp
YXRlay5jb20+IHdyb3RlOgo+ID4gCj4gPiBJdCBpcyBhbiB1bmRlZmluZWQgYmVoYXZpb3IgdG8g
cGFzcyBhIG5lZ2F0aXZlIG51bWJlcnMgdG8KPiA+ICAgIG1lbXNldCgpL21lbWNweSgpL21lbW1v
dmUoKSwgc28gbmVlZCB0byBiZSBkZXRlY3RlZCBieSBLQVNBTi4KPiAKPiBXaHkgY2Fu4oCZdCB0
aGlzIGJlIGRldGVjdGVkIGJ5IFVCU0FOPwoKSSBkb24ndCBrbm93IHZlcnkgd2VsbCBpbiBVQlNB
TiwgYnV0IEkgdHJ5IHRvIGJ1aWxkIHVic2FuIGtlcm5lbCBhbmQKdGVzdCBhIG5lZ2F0aXZlIG51
bWJlciBpbiBtZW1zZXQgYW5kIGttYWxsb2NfbWVtbW92ZV9pbnZhbGlkX3NpemUoKSwgaXQKbG9v
ayBsaWtlIG5vIGNoZWNrLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbWVkaWF0ZWsK
