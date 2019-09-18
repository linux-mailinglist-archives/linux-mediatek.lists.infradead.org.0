Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1535AB603E
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 11:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dltbCr7Tq77b+rdVb8FiPhN7QcECWljgp3tnFowaJ0Q=; b=XCfFjx3mfHEkCd
	lJ9PCUsgyMLv9G/BKBx1Uhnp8YPwZif1Qda2Wn0/xMMo7nfqotWkKJRT/9PErzCqyUcHXu77kzERM
	UywTW2cO/sL6YwWyF2Maf6DbYvKMkz0vhXldFRF1QISeYX2jFAOtHwu+8j/dK/N/fGWVOx/nLDJbw
	jAETdnjeMBmZM6l3nsskEXXosxGazWv2J2Sufs0IF0rRzxWWWdpRRmzRWx9wyr/My+TDy7DzrG3I7
	uS/gn3EGmM69mFZDvDZxS4IbuXtC1biJ+TPD1ZPJvYVBDaZ9w8FkC+jaiA1vYwPuazAnX22JpgGR2
	prirQEHp7MpLBRssAwig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWIG-0005Wj-8w; Wed, 18 Sep 2019 09:30:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWIA-0005N3-Gt
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 09:30:32 +0000
X-UUID: 422912ed12e94867a645599ba0f83161-20190918
X-UUID: 422912ed12e94867a645599ba0f83161-20190918
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1638357006; Wed, 18 Sep 2019 01:30:23 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 02:30:23 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 17:30:22 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Sep 2019 17:30:22 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v8 07/11] dt-bindings: pwm: pwm-mediatek: add a property
 "num-pwms"
Date: Wed, 18 Sep 2019 17:28:55 +0800
Message-ID: <1568798939-16038-8-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568798939-16038-1-git-send-email-sam.shih@mediatek.com>
References: <1568798939-16038-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_023030_602529_CF4991E5 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
