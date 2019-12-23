Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FC112960A
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Dec 2019 13:33:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2bwpBXSprWarhAfS15TXZX3zyMl718MNlFpG9cmSPg=; b=Vdt+LNWPkw9eUF
	gBiAeDeyrDaHzz25rAqQsxzKIoAKsExVRNbw8WlVF9zcEykKLllfvRoD+n2L3X1sBMnuoHddOr2fT
	qWFprmswTOnjquKmvVQTXxSSDpEXJHk/kanNjKNSqoVMPoaxqcvPXE0DWmesfbMq9A5N5e3PbAExd
	hXPAYehpqpxM9iLvoVZAhivgL+8xZI6szDKA9v4/lgI7cwF61byq2zAhG0cDLIae1ENQ8LW/oucDw
	4YKRMteLE/5nAnRSl+s57GwWLz5uKHWkieI91wkbxlYVQUHddsbkfRX53bGxbYDMNFX5iOFgzfllZ
	cQ5WHL8XxlRmkIcRMhnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMtO-0005Ck-QW; Mon, 23 Dec 2019 12:32:58 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMtL-0005B9-6W
 for linux-mediatek@lists.infradead.org; Mon, 23 Dec 2019 12:32:56 +0000
Received: by mail-qt1-x844.google.com with SMTP id k40so15272772qtk.8
 for <linux-mediatek@lists.infradead.org>; Mon, 23 Dec 2019 04:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=5v07SKyPaqffC8bgmTpkEvagnuvh7nvXwKsl6Tz/hL8=;
 b=tFEObTs8/qK+YCCxq6rd2xWJLb5qMY6jSRETUikApl3wF4s8YwsthzwPkk00RUqNtr
 xOCi/4YeetxUNLJnaraqe3fwNfeZKzdKrChvEvNTtP03YyTkE8tHw+wOzFwl6wBl1p3s
 2+IQSvguDAoWtrFVTiM97pUGw5XT6nNATFDl6p4oy1mSGFckJaYUyvOboMoh6iBReLeg
 Tc27pAPYvWPCX7BRmlq/6OFpFr3PuQjNlP6+5QbzdL3LnRSxkl6Lko+doqfT1dtT0Lfz
 SHJsVSvmKeJuyVQhq/EkIbLdYO+MBMAup+l49cmargA+jDKlef0FoOfphoiLBLEqc4+K
 9ZBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=5v07SKyPaqffC8bgmTpkEvagnuvh7nvXwKsl6Tz/hL8=;
 b=F9kfqlCoUeZjXWPcVmUHShDI/mO5Itb3GRcI9v0p3R7MkU9tiWSzVOvr0SqbfmDgFS
 6udKCPB/TpWgSfn4PJ2YCgBgJlMSley3v2pHF+a5IVoEQO3aHaWtH1dOsIvCJC2jdtgt
 75f3EhSkNlBpznIbwJM5fTon6qM2ejuVzrLkNwTzn69vkiVtmZ+eYK295ElOhT0aQa9W
 ol4NwFElQ/H3mBjbiHIskatJC8ZxQ17VMprGsg8PqDPvdrHxozIaBNlcrEMDz1SXWxZr
 ugUci93YLEsMB6GyeiRGb+/MjP3UPy4Ld2VsT2GJAvoTBer+Pyx749vi06gbpBMZ7FrO
 QQMA==
X-Gm-Message-State: APjAAAU4R+EK5ZTXrgVszdrM+AUuN8ce4aBTfWfOanpZf/RNfkTD947d
 nQmYU4ZqpnlCQ4fG7F0Eb+QyZQ==
X-Google-Smtp-Source: APXvYqzomcqE0md8Wui8VaPZ7yD3QLDSggZQbK8fs17J1q5ZqSVle38Zt4wXVU70LiGdk2yXOhAAJA==
X-Received: by 2002:aed:22c8:: with SMTP id q8mr23370747qtc.133.1577104372593; 
 Mon, 23 Dec 2019 04:32:52 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id v5sm6253417qth.70.2019.12.23.04.32.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Dec 2019 04:32:51 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] mm/page_owner: print largest memory consumer when OOM
 panic occurs
Date: Mon, 23 Dec 2019 07:32:50 -0500
Message-Id: <2B938D94-FFBB-4A3D-AD07-D7D04A4D4161@lca.pw>
References: <20191223113326.13828-1-miles.chen@mediatek.com>
In-Reply-To: <20191223113326.13828-1-miles.chen@mediatek.com>
To: Miles Chen <miles.chen@mediatek.com>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_043255_266103_A8BD4084 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Cgo+IE9uIERlYyAyMywgMjAxOSwgYXQgNjozMyBBTSwgTWlsZXMgQ2hlbiA8bWlsZXMuY2hlbkBt
ZWRpYXRlay5jb20+IHdyb3RlOgo+IAo+IE1vdGl2YXRpb246Cj4gLS0tLS0tLS0tLS0KPiAKPiBX
aGVuIGRlYnVnIHdpdGggYSBPT00ga2VybmVsIHBhbmljLCBpdCBpcyBkaWZmaWN1bHQgdG8ga25v
dyB0aGUKPiBtZW1vcnkgYWxsb2NhdGVkIGJ5IGtlcm5lbCBkcml2ZXJzIG9mIHZtYWxsb2MoKSBi
eSBjaGVja2luZyB0aGUKPiBNZW0tSW5mbyBvciBOb2RlL1pvbmUgaW5mby4gRm9yIGV4YW1wbGU6
Cj4gCj4gIE1lbS1JbmZvOgo+ICBhY3RpdmVfYW5vbjo1MTQ0IGluYWN0aXZlX2Fub246MTYxMjAg
aXNvbGF0ZWRfYW5vbjowCj4gICBhY3RpdmVfZmlsZTowIGluYWN0aXZlX2ZpbGU6MCBpc29sYXRl
ZF9maWxlOjAKPiAgIHVuZXZpY3RhYmxlOjAgZGlydHk6MCB3cml0ZWJhY2s6MCB1bnN0YWJsZTow
Cj4gICBzbGFiX3JlY2xhaW1hYmxlOjczOSBzbGFiX3VucmVjbGFpbWFibGU6NDQyNDY5Cj4gICBt
YXBwZWQ6NTM0IHNobWVtOjIxMDUwIHBhZ2V0YWJsZXM6MjEgYm91bmNlOjAKPiAgIGZyZWU6MTQ4
MDggZnJlZV9wY3A6MzM4OSBmcmVlX2NtYTo4MTI4Cj4gCj4gIE5vZGUgMCBhY3RpdmVfYW5vbjoy
MDU3NmtCIGluYWN0aXZlX2Fub246NjQ0ODBrQiBhY3RpdmVfZmlsZTowa0IKPiAgaW5hY3RpdmVf
ZmlsZTowa0IgdW5ldmljdGFibGU6MGtCIGlzb2xhdGVkKGFub24pOjBrQiBpc29sYXRlZChmaWxl
KTowa0IKPiAgbWFwcGVkOjIxMzZrQiBkaXJ0eTowa0Igd3JpdGViYWNrOjBrQiBzaG1lbTo4NDIw
MGtCIHNobWVtX3RocDogMGtCCj4gIHNobWVtX3BtZG1hcHBlZDogMGtCIGFub25fdGhwOiAwa0Ig
d3JpdGViYWNrX3RtcDowa0IgdW5zdGFibGU6MGtCCj4gIGFsbF91bnIgZWNsYWltYWJsZT8geWVz
Cj4gCj4gIE5vZGUgMCBETUEgZnJlZToxNDQ3NmtCIG1pbjoyMTUxMmtCIGxvdzoyNjg4OGtCIGhp
Z2g6MzIyNjRrQgo+ICByZXNlcnZlZF9oaWdoYXRvbWljOjBLQiBhY3RpdmVfYW5vbjowa0IgaW5h
Y3RpdmVfYW5vbjowa0IKPiAgYWN0aXZlX2ZpbGU6IDBrQiBpbmFjdGl2ZV9maWxlOjBrQiB1bmV2
aWN0YWJsZTowa0Igd3JpdGVwZW5kaW5nOjBrQgo+ICBwcmVzZW50OjEwNDg1NzZrQiBtYW5hZ2Vk
Ojk1MjczNmtCIG1sb2NrZWQ6MGtCIGtlcm5lbF9zdGFjazowa0IKPiAgcGFnZXRhYmxlczowa0Ig
Ym91bmNlOjBrQiBmcmVlX3BjcDoyNzE2a0IgbG9jYWxfcGNwOjBrQiBmcmVlX2NtYTowa0IKPiAK
PiBUaGUgaW5mb3JtYXRpb24gYWJvdmUgdGVsbHMgdXMgdGhlIG1lbW9yeSB1c2FnZSBvZiB0aGUg
a25vd24gbWVtb3J5Cj4gY2F0ZWdvcmllcyBhbmQgd2UgY2FuIGNoZWNrIHRoZSBhYm5vcm1hbCBs
YXJnZSBudW1iZXJzLiBIb3dldmVyLCBpZiBhCj4gbWVtb3J5IGxlYWthZ2UgY2Fubm90IGJlIG9i
c2VydmVkIGluIHRoZSBjYXRlZ29yaWVzIGFib3ZlLCB3ZSBuZWVkIHRvCj4gcmVwcm9kdWNlIHRo
ZSBpc3N1ZSB3aXRoIENPTkZJR19QQUdFX09XTkVSLgo+IAo+IEl0IGlzIHBvc3NpYmxlIHRvIHJl
YWQgdGhlIHBhZ2Ugb3duZXIgaW5mb3JtYXRpb24gZnJvbSBjb3JlZHVtcCBmaWxlcy4KPiBIb3dl
dmVyLCBjb3JlZHVtcCBmaWxlcyBtYXkgbm90IGFsd2F5cyBiZSBhdmFpbGFibGUsIHNvIG15IGFw
cHJvYWNoIGlzCj4gdG8gcHJpbnQgb3V0IHRoZSBsYXJnZXN0IHBhZ2UgY29uc3VtZXIgd2hlbiBP
T00ga2VybmVsIHBhbmljIG9jY3Vycy4KCk1hbnkgb2YgdGhvc2UgcGF0Y2hlcyBoZWxwaW5nIGRl
YnVnZ2luZyBzcGVjaWFsIGNhc2VzIGhhZCBiZWVuIHNob3QgZG93biBpbiB0aGUgcGFzdC4gSSBk
b27igJl0IHNlZSBtdWNoIGRpZmZlcmVuY2UgdGhpcyB0aW1lLiBJZiB5b3Ugd29ycnkgYWJvdXQg
bWVtb3J5IGxlYWssIGVuYWJsZSBrbWVtbGVhayBhbmQgdGhlbiB0byByZXByb2R1Y2UuIE90aGVy
d2lzZSwgd2Ugd2lsbCBlbmQgdXAgd2l0aCB0b28gbWFueSBoZXVyaXN0aWNzIGp1c3QgZm9yIGRl
YnVnZ2luZy4KCj4gCj4gVGhlIGhldXJpc3RpYyBhcHByb2FjaCBhc3N1bWVzIHRoYXQgdGhlIE9P
TSBrZXJuZWwgcGFuaWMgaXMgY2F1c2VkIGJ5Cj4gYSBzaW5nbGUgYmFja3RyYWNlLiBUaGUgYXNz
dW1wdGlvbiBpcyBub3QgYWx3YXlzIHRydWUgYnV0IGl0IHdvcmtzIGluCj4gbWFueSBjYXNlcyBk
dXJpbmcgb3VyIHRlc3QuCj4gCj4gV2UgaGF2ZSB0ZXN0ZWQgdGhpcyBoZXVyaXN0aWMgYXBwcm9h
Y2ggc2luY2UgMjAxOS81IG9uIGFuZHJvaWQgZGV2aWNlcy4KPiBJbiAzOCBpbnRlcm5hbCBPT00g
a2VybmVsIHBhbmljIHJlcG9ydHM6Cj4gCj4gMzEvMzg6IGNhbiBiZSBhbmFseXplZCBieSB1c2lu
ZyBleGlzdGluZyBpbmZvcm1hdGlvbgo+IDcvMzg6IG5lZWQgcGFnZSBvd25lciBmb3JtYXRpbm8g
YW5kIHRoZSBoZXVyaXN0aWMgYXBwcm9hY2ggaW4gdGhpcyBwYXRjaAo+IHByaW50cyB0aGUgY29y
cmVjdCBiYWNrdHJhY2VzIG9mIGFibm9ybWFsIG1lbW9yeSBhbGxvY2F0aW9ucy4gTm8gbmVlZCB0
bwo+IHJlcHJvZHVjZSB0aGUgaXNzdWVzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlh
dGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
