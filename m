Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EBF50F39
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 16:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mfmSk6B5b73xwebokmGYjDCHDDHtDzHRIgei/OjNCF0=; b=rlWRvkVTPQ4MB2
	cfIfwJRi2zNM0imTpy9P4N4MZZjCqZrHHbj3f5zDNoZGS832fq/xUovxm99nqA1PGXg89NDIi5DMh
	tkuJDzPESkhxlggmk+zmfhe/RmKW1vv5BX1I//DSwX5nBkRpWYslGZyE6+JTdGxnT5OPssucrlyd8
	UBrTelqR2tz6SudFypsPB+ssxl21is1VpFapnlNB2tMgn1RojjpSZaIMuSajBlPr0Wnq5QedqGv8F
	tLXMTHZOUrU26MDlFqdR3QBdH85jAlVynBbUErz2ZPZbB9MpNXAfMpzvNLRHb9YYSTJgYmaCtivsF
	5kcvTSWpDjsSQyEhzXqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQLa-0004dn-5M; Mon, 24 Jun 2019 14:53:30 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQLI-0004Nn-Lb
 for linux-mediatek@lists.infradead.org; Mon, 24 Jun 2019 14:53:14 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 1EA955FA1D;
 Mon, 24 Jun 2019 16:53:09 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="QnEMZIbC"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id D98F51CC6EFD;
 Mon, 24 Jun 2019 16:53:08 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com D98F51CC6EFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561387988;
 bh=bS0BvauIqjunMohu89cqlu/hO+41P+Yoze5Z2dDuxPo=;
 h=From:To:Cc:Subject:Date:From;
 b=QnEMZIbCvwUm5YDuJm/qV2WrEEa0WuIgPQB7ljb8aTVz5BgySE1Ap0P+RK7xvQAPa
 R7QWjwWNmmne8vGXcRqOKjMjf8dYwohg/W2s6VZjGLziHea2LdEcVJh1MOJu1fq+Ed
 reJCpa4DzLaV2vZPGORDidCQAc5hxNQtXCX7nsFVymtzDcPFc8xHM+wGhVU81sw6iD
 9M+VYRIKr73HMgAeALVKp+UeO0EkvjmxnwPMonuF2yW0PZK6xrgKkiWe/GeWR8GGSk
 ofxqJqCctCBFWneMe4asnODxf22lZ6htR2yP0tSm+XXzMXn7Z69OWJZEkULRBPIUst
 K6qzEBj6u8mdA==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: sean.wang@mediatek.com, f.fainelli@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH RFC net-next 0/5] net: dsa: MT7530: Convert to PHYLINK and add
 support for port 5
Date: Mon, 24 Jun 2019 16:52:46 +0200
Message-Id: <20190624145251.4849-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_075313_141860_2A47E8C4 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-mips@vger.kernel.org, frank-w@public-files.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGVyZSBieSBJIGFtIHNlbmRpbmcgbXkgY3VycmVudCBwYXRjaGVzIGZvciByZXZpZXcuCkkgd2Fu
dCB0byBrbm93IGlmIEkgYW0gb24gdGhlIHJpZ2h0IHRyYWNrLgoKMS4gMDAwMS1uZXQtZHNhLW10
NzUzMC1Db252ZXJ0LXRvLVBIWUxJTkstQVBJLnBhdGNoCiAgIFRoaXMgcGF0Y2ggY29udmVydHMg
bXQ3NTMwIHRvIFBIWUxJTksgQVBJLgoyLiAwMDAyLWR0LWJpbmRpbmdzLW5ldC1kc2EtbXQ3NTMw
LUFkZC1zdXBwb3J0LWZvci1wb3J0LTUucGF0Y2gKMy4gMDAwMy1uZXQtZHNhLW10NzUzMC1BZGQt
c3VwcG9ydC1mb3ItcG9ydC01LnBhdGNoCiAgIFRoZXNlIDIgcGF0Y2hlcyBhZGRpbmcgc3VwcG9y
dCBmb3IgcG9ydCA1IG9mIHRoZSBzd2l0Y2guCgpPcHRpb25hbDoKNC4gMDAwNC1kdC1iaW5kaW5n
cy1uZXQtZHNhLW10NzUzMC1BZGQtbWVkaWF0ZWstZXBoeS1oYW5kbGUtLnBhdGNoCjUuIDAwMDUt
bmV0LWRzYS1tdDc1MzAtQWRkLW1lZGlhdGVrLWVwaHktaGFuZGxlLXRvLWlzb2xhdGUtZS5wYXRj
aAogICBUaGVzZSAyIHBhdGNoZXMgYWRkaW5nIHByb3BlcnR5ICJtZWRpYXRlayxlcGh5LWhhbmRs
ZSIuCiAgIFdoZW4gc2V0LCBpdCBwdXRzIHRoZSBleHRlcm5hbCBwaHkgaW4gaXNvbGF0aW9uIG1v
ZGUuCiAgIFRoaXMgYWxsb3dzIHRoZSBzd2l0Y2ggUEhZIG9mIHBvcnQgMC80IHRvIGludGVyZmFj
ZSB3aXRoIDJuZCBHTUFDIG9mCiAgIHRoZSBTT0MuIFRoZSBleHRlcm5hbCBwaHksIDJuZCBHTUFD
IGFuZCBzd2l0Y2ggcG9ydCA1IHNoYXJlcyB0aGUgc2FtZQogICBNSUkgYnVzLgoKRldJVzogQWxz
byB3b3JraW5nIG9uIGNvbnZlcnRpbmcgdGhlIG1lZGlhdGVrIGV0aGVybmV0IGRyaXZlciB0byBQ
SFlMSU5LLgpUaGlzIG5lZWQgYSBiaXQgbW9yZSB3b3JrIGR1byB0byB0aGUgU0dNSUkgd29yayBh
bmQgc3VwcG9ydCBoYXJkd2FyZSB3aGljaCAKSSBkb24ndCBoYXZlLgpodHRwczovL2dpdGh1Yi5j
b20vdkRvcnN0L2xpbnV4LTEvY29tbWl0LzU0MDA0YjgwN2NiYTBkY2VjMTY1M2MxYzI5MGMyZTVh
YWU1MTI3YzIKClJlbsOpIHZhbiBEb3JzdCAoNSk6CiAgbmV0OiBkc2E6IG10NzUzMDogQ29udmVy
dCB0byBQSFlMSU5LIEFQSQogIGR0LWJpbmRpbmdzOiBuZXQ6IGRzYTogbXQ3NTMwOiBBZGQgc3Vw
cG9ydCBmb3IgcG9ydCA1CiAgbmV0OiBkc2E6IG10NzUzMDogQWRkIHN1cHBvcnQgZm9yIHBvcnQg
NQogIGR0LWJpbmRpbmdzOiBuZXQ6IGRzYTogbXQ3NTMwOiBBZGQgbWVkaWF0ZWssZXBoeS1oYW5k
bGUgdG8gaXNvbGF0ZQogICAgZXh0LiBwaHkKICBuZXQ6IGRzYTogbXQ3NTMwOiBBZGQgbWVkaWF0
ZWssZXBoeS1oYW5kbGUgdG8gaXNvbGF0ZSBleHRlcm5hbCBwaHkKCiAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvZHNhL210NzUzMC50eHQgICAgfCAzMjkgKysrKysrKysrKysrKysrKwogZHJp
dmVycy9uZXQvZHNhL210NzUzMC5jICAgICAgICAgICAgICAgICAgICAgIHwgMzY2ICsrKysrKysr
KysrKysrKy0tLQogZHJpdmVycy9uZXQvZHNhL210NzUzMC5oICAgICAgICAgICAgICAgICAgICAg
IHwgIDM5ICsrCiAzIGZpbGVzIGNoYW5nZWQsIDY4OCBpbnNlcnRpb25zKCspLCA0NiBkZWxldGlv
bnMoLSkKCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW1lZGlhdGVrCg==
