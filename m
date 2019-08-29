Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19435A1120
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 07:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dltbCr7Tq77b+rdVb8FiPhN7QcECWljgp3tnFowaJ0Q=; b=s0bt+LqYT3PFP9
	I8Hsh65LeBseBM2tH92zbjAh1Bzrkwl4EmXrd7kW1SeJhmfSmWhFyomPjd/+dN/zpqXKNZkipTF8F
	vJxYCZCK1XP6/808+7uV90wPGJrqxU9eydOdw7F29qOiMVsPpW4ylZnwzOG4ADcxru4Cxhdyz7VNx
	KAGzBGniLoUhT1bwNhqAm7fBGXy/gc5ydcuAGQP1GIfvuxbtaCoN44hBUrHD9BKyB+bsq9qMv+xPr
	+5zujcWR9qW6+56IraH5/OEFrJHkXIn2E/TVwuHY5jWBvNLf/mrjyvafZ9JUStXpEMCha+TBwd6RW
	u8ZWf3kxuVQJI9jDhW+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3DDW-00070l-RU; Thu, 29 Aug 2019 05:43:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3DDT-00070M-Cg
 for linux-mediatek@lists.infradead.org; Thu, 29 Aug 2019 05:43:28 +0000
X-UUID: 5712c38f392c468692a2342453e20443-20190828
X-UUID: 5712c38f392c468692a2342453e20443-20190828
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 937307150; Wed, 28 Aug 2019 21:43:30 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 22:43:29 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 13:43:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 29 Aug 2019 13:43:27 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v6 07/11] dt-bindings: pwm: pwm-mediatek: add a property
 "num-pwms"
Date: Thu, 29 Aug 2019 13:39:16 +0800
Message-ID: <1567057160-552-8-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567057160-552-1-git-send-email-sam.shih@mediatek.com>
References: <1567057160-552-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_224327_437359_F7B547B2 
X-CRM114-Status: GOOD (  10.33  )
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
Cc: linux-pwm@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 devicetree@vger.kernel.org, Sam
 Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

RnJvbTogUnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgoKVGhpcyBhZGRzIGEgcHJv
cGVydHkgIm51bS1wd21zIiBpbiBleGFtcGxlIHNvIHRoYXQgd2UgY291bGQKc3BlY2lmeSB0aGUg
bnVtYmVyIG9mIFBXTSBjaGFubmVscyB2aWEgZGV2aWNlIHRyZWUuCgpTaWduZWQtb2ZmLWJ5OiBS
eWRlciBMZWUgPHJ5ZGVyLmxlZUBtZWRpYXRlay5jb20+ClNpZ25lZC1vZmYtYnk6IFNhbSBTaGlo
IDxzYW0uc2hpaEBtZWRpYXRlay5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGlhcyBCcnVnZ2VyIDxt
YXR0aGlhcy5iZ2dAZ21haWwuY29tPgpBY2tlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCkNoYW5nZXMgc2luY2UgdjY6CkZvbGxvdyBy
ZXZpZXdlcnMncyBjb21tZW50czoKLSBUaGUgc3ViamVjdCBzaG91bGQgaW5kaWNhdGUgdGhpcyBp
cyBmb3IgTWVkaWF0ZWsKCkNoYW5nZXMgc2luY2UgdjU6Ci0gQWRkIGFuIEFja2VkLWJ5IHRhZwot
IFRoaXMgZmlsZSBpcyBvcmlnaW5hbCB2NCBwYXRjaCA1LzEwCihodHRwczovL3BhdGNod29yay5r
ZXJuZWwub3JnL3BhdGNoLzExMTAyNTc3LykKCi0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3B3bS9wd20tbWVkaWF0ZWsudHh0IHwgNyArKysrLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vcHdtLW1lZGlhdGVrLnR4dCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vcHdtLW1lZGlhdGVrLnR4dAppbmRleCA5OTE3
MjhjYjQ2Y2IuLmVhOTViNDkwYTkxMyAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3B3bS9wd20tbWVkaWF0ZWsudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9wd20vcHdtLW1lZGlhdGVrLnR4dApAQCAtMTQsMTIgKzE0LDEyIEBA
IFJlcXVpcmVkIHByb3BlcnRpZXM6CiAgICAgICAgICAgICAgICAgaGFzIG5vIGNsb2NrcwogICAg
LSAidG9wIjogdGhlIHRvcCBjbG9jayBnZW5lcmF0b3IKICAgIC0gIm1haW4iOiBjbG9jayB1c2Vk
IGJ5IHRoZSBQV00gY29yZQotICAgLSAicHdtMS04IjogdGhlIGVpZ2h0IHBlciBQV00gY2xvY2tz
IGZvciBtdDI3MTIKLSAgIC0gInB3bTEtNiI6IHRoZSBzaXggcGVyIFBXTSBjbG9ja3MgZm9yIG10
NzYyMgotICAgLSAicHdtMS01IjogdGhlIGZpdmUgcGVyIFBXTSBjbG9ja3MgZm9yIG10NzYyMwor
ICAgLSAicHdtMS1OIjogdGhlIFBXTSBjbG9ja3MgZm9yIGVhY2ggY2hhbm5lbAorICAgd2hlcmUg
TiBzdGFydGluZyBmcm9tIDEgdG8gdGhlIG1heGltdW0gbnVtYmVyIG9mIFBXTSBjaGFubmVscwog
IC0gcGluY3RybC1uYW1lczogTXVzdCBjb250YWluIGEgImRlZmF1bHQiIGVudHJ5LgogIC0gcGlu
Y3RybC0wOiBPbmUgcHJvcGVydHkgbXVzdCBleGlzdCBmb3IgZWFjaCBlbnRyeSBpbiBwaW5jdHJs
LW5hbWVzLgogICAgU2VlIHBpbmN0cmwvcGluY3RybC1iaW5kaW5ncy50eHQgZm9yIGRldGFpbHMg
b2YgdGhlIHByb3BlcnR5IHZhbHVlcy4KKyAtIG51bS1wd21zOiB0aGUgbnVtYmVyIG9mIFBXTSBj
aGFubmVscy4KIAogRXhhbXBsZToKIAlwd20wOiBwd21AMTEwMDYwMDAgewpAQCAtMzcsNCArMzcs
NSBAQCBFeGFtcGxlOgogCQkJICAgICAgInB3bTMiLCAicHdtNCIsICJwd201IjsKIAkJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKIAkJcGluY3RybC0wID0gPCZwd20wX3BpbnM+OworCQludW0t
cHdtcyA9IDw1PjsKIAl9OwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1l
ZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
