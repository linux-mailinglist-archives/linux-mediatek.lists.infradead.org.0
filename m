Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB6B902E0
	for <lists+linux-mediatek@lfdr.de>; Fri, 16 Aug 2019 15:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6NE/pjQQ1q2TM/JoqinOEg9VrNSiEvKgaMDkA+d+0zs=; b=RKcMkhoG5IwLje
	1HfJ6m0nfNvZLS9Fj3BSLiPsHqBglfiUF0C0DP7r/W4x94qvft7/7SHPM8yNkCnti1+rnHHMRtP5z
	8FSjQKcKT0wcx81UE+iiOmi4hVu1uomI9pfcBYFYdaKbyOXJJVxn+pKLzmXvUY9Zp0x9c0/6/oUN1
	AWab1cwcN4nIE32xDgmZFrHtSJ9kfL8rcgKNSR37gSBhlDUvyFR4XnsvQb5rxKVxPxBhbErUTmfmX
	UvqkWjEIQWkgA5gxVkEhRlVqyn/nC6kjn+a8INsiBrsF96wHTd5rCTsKdYvV8a1M2vVSoQpJdVa5l
	1OOAxaD6DHbSXGPWPnYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hycCn-0000U7-CK; Fri, 16 Aug 2019 13:23:45 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hycCg-0000SF-3p
 for linux-mediatek@lists.infradead.org; Fri, 16 Aug 2019 13:23:41 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 521E2A01B6;
 Fri, 16 Aug 2019 15:23:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id DnvGyrnD9G4l; Fri, 16 Aug 2019 15:23:26 +0200 (CEST)
From: Stefan Roese <sr@denx.de>
To: netdev@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH net-next 1/4 v3] dt-bindings: net: mediatek: Add support for
 MediaTek MT7628/88 SoC
Date: Fri, 16 Aug 2019 15:23:22 +0200
Message-Id: <20190816132325.28426-1-sr@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_062338_314275_840A48A9 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Daniel Golle <daniel@makrotopia.org>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

QWRkIGNvbXBhdGlibGUgZm9yIHRoZSBldGhlcm5ldCBJUCBjb3JlIG9uIE1UNzYyOC84OCBTb0Nz
LiBJdHMKY29tcGF0aWJsZSB3aXRoIHRoZSBvbGRlciBSYWxpbmsgUnQ1MzUwRiBTb0MuIEFuZCBP
cGVuV3J0IGFscmVhZHkKdXNlcyB0aGlzIGNvbXBhdGlibGUgc3RyaW5nIGZvciB0aGUgTVQ3Nng4
LgoKU2lnbmVkLW9mZi1ieTogU3RlZmFuIFJvZXNlIDxzckBkZW54LmRlPgpDYzogUmVuw6kgdmFu
IERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+CkNjOiBEYW5pZWwgR29sbGUgPGRhbmllbEBt
YWtyb3RvcGlhLm9yZz4KQ2M6IFNlYW4gV2FuZyA8c2Vhbi53YW5nQG1lZGlhdGVrLmNvbT4KQ2M6
IEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJvemVuLm9yZz4KQ2M6IGRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnCkNjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgotLS0KdjM6Ci0gTm8gY2hh
bmdlCgp2MjoKLSBOZXcgcGF0Y2ggLSBiaW5kaW5ncyBkZXNjcmlwdGlvbiBtb3ZlZCB0byBzZXBh
cmF0ZSBwYXRjaAoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvbWVkaWF0
ZWstbmV0LnR4dCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9tZWRpYXRlay1uZXQu
dHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9tZWRpYXRlay1uZXQu
dHh0CmluZGV4IDc3MGZmOThkNDUyNC4uNzJkMDNlMDdjZjdjIDEwMDY0NAotLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21lZGlhdGVrLW5ldC50eHQKKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9tZWRpYXRlay1uZXQudHh0CkBAIC0x
Miw2ICsxMiw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAJCSJtZWRpYXRlayxtdDc2MjMtZXRo
IiwgIm1lZGlhdGVrLG10MjcwMS1ldGgiOiBmb3IgTVQ3NjIzIFNvQwogCQkibWVkaWF0ZWssbXQ3
NjIyLWV0aCI6IGZvciBNVDc2MjIgU29DCiAJCSJtZWRpYXRlayxtdDc2MjktZXRoIjogZm9yIE1U
NzYyOSBTb0MKKwkJInJhbGluayxydDUzNTAtZXRoIjogZm9yIFJhbGluayBSdDUzNTBGIGFuZCBN
VDc2MjgvODggU29DCiAtIHJlZzogQWRkcmVzcyBhbmQgbGVuZ3RoIG9mIHRoZSByZWdpc3RlciBz
ZXQgZm9yIHRoZSBkZXZpY2UKIC0gaW50ZXJydXB0czogU2hvdWxkIGNvbnRhaW4gdGhlIHRocmVl
IGZyYW1lIGVuZ2luZXMgaW50ZXJydXB0cyBpbiBudW1lcmljCiAJb3JkZXIuIFRoZXNlIGFyZSBm
ZV9pbnQwLCBmZV9pbnQxIGFuZCBmZV9pbnQyLgotLSAKMi4yMi4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBs
aXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
