Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9030819E1F6
	for <lists+linux-mediatek@lfdr.de>; Sat,  4 Apr 2020 02:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y5XtaGLZeM6gLN2YD8JFQSjzu1B+x+n/6mvB1E+d2Kw=; b=JuKlFJvTkhzgdZ
	b2Ht+rdAlWUMu83HHZ6SplKZWsAl6Rs3U6+EgyFpKfbMTP0PZj4ZOjl+tUkCykAU5xrMfrtHhwwax
	xuNPqlBJb21t0q9t93D/NtCmh7yjP06l9jw4L2gOYbwPdDZBs8gsr4nQPMd2wNjx3TwEhk8sXO/6H
	R/NnMS6yT2qitKCKVKOBWJRRKGyEnq529wqP3XK1Ej+1uEJa8FxSiPmgc28M9JI2Rr+H73X/+Z2g8
	B2ZgNyTh/0dwCzo0vaoHEIaMr/TMVfRld5iA9wvd3jldu/bpO6JcrD3j6s4ycOT2S+WYAjpfHNdmb
	bmORPegunkCKmJ37jEUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKWph-00049B-9T; Sat, 04 Apr 2020 00:38:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKWpd-00047z-VE
 for linux-mediatek@lists.infradead.org; Sat, 04 Apr 2020 00:38:43 +0000
X-UUID: 193ff09575244ac2a14d89a9d249ce5c-20200403
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=LkCs81j2SC4JCL+eK963lgzfszcVvhoqI6CtRghLD8c=; 
 b=mYZJVszmu/9k5hHPEmxWXgABd+JKNjfogM1KAYxAQu0JxVuUT7w2ve4PnZq5Utu2WZKHVU7tItYRC9IRATfvdDOTSYcPVoyogbREnYQVvVlfy2aRoffbE/z6lEsN2IRdWdF+ffHs+1ONCG8A9F2TsR9QpDaKiKhh0wZBN0P4o+c=;
X-UUID: 193ff09575244ac2a14d89a9d249ce5c-20200403
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1560423749; Fri, 03 Apr 2020 16:38:35 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Apr 2020 17:38:32 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 4 Apr 2020 08:38:20 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 4 Apr 2020 08:38:19 +0800
From: <sean.wang@mediatek.com>
To: <davem@davemloft.net>, <andrew@lunn.ch>, <f.fainelli@gmail.com>,
 <vivien.didelot@savoirfairelinux.com>, <Mark-MC.Lee@mediatek.com>,
 <john@phrozen.org>
Subject: [PATCH net 1/2] net: dsa: mt7530: move mt7623 settings out off the
 mt7530
Date: Sat, 4 Apr 2020 08:38:16 +0800
Message-ID: <1585960697-15547-1-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_173842_007114_1F75C77B 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Landen.Chao@mediatek.com, steven.liu@mediatek.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

RnJvbTogUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+DQoNCk1vdmluZyBt
dDc2MjMgbG9naWMgb3V0IG9mZiBtdDc1MzAsIGlzIHJlcXVpcmVkIHRvIG1ha2UgaGFyZHdhcmUg
c2V0dGluZw0KY29uc2lzdGVudCBhZnRlciB3ZSBpbnRyb2R1Y2UgcGh5bGluayB0byBtdGsgZHJp
dmVyLg0KDQpGaXhlczogY2EzNjZkNmM4ODliICgibmV0OiBkc2E6IG10NzUzMDogQ29udmVydCB0
byBQSFlMSU5LIEFQSSIpDQpSZXZpZXdlZC1ieTogU2VhbiBXYW5nIDxzZWFuLndhbmdAbWVkaWF0
ZWsuY29tPg0KVGVzdGVkLWJ5OiBTZWFuIFdhbmcgPHNlYW4ud2FuZ0BtZWRpYXRlay5jb20+DQpT
aWduZWQtb2ZmLWJ5OiBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0LmNvbT4NCi0t
LQ0KIGRyaXZlcnMvbmV0L2RzYS9tdDc1MzAuYyB8IDg1IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCiBkcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmggfCAxMCAtLS0tLQ0K
IDIgZmlsZXMgY2hhbmdlZCwgOTUgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9kc2EvbXQ3NTMwLmMgYi9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMNCmluZGV4IDk3MGQ0
NDM1NGY0Yy4uM2FiMGEzZWFlNjhiIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9uZXQvZHNhL210NzUz
MC5jDQorKysgYi9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMNCkBAIC02Niw1OCArNjYsNiBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IG10NzUzMF9taWJfZGVzYyBtdDc1MzBfbWliW10gPSB7DQogCU1J
Ql9ERVNDKDEsIDB4YjgsICJSeEFybERyb3AiKSwNCiB9Ow0KIA0KLXN0YXRpYyBpbnQNCi1tdDc2
MjNfdHJnbWlpX3dyaXRlKHN0cnVjdCBtdDc1MzBfcHJpdiAqcHJpdiwgIHUzMiByZWcsIHUzMiB2
YWwpDQotew0KLQlpbnQgcmV0Ow0KLQ0KLQlyZXQgPSAgcmVnbWFwX3dyaXRlKHByaXYtPmV0aGVy
bmV0LCBUUkdNSUlfQkFTRShyZWcpLCB2YWwpOw0KLQlpZiAocmV0IDwgMCkNCi0JCWRldl9lcnIo
cHJpdi0+ZGV2LA0KLQkJCSJmYWlsZWQgdG8gcHJpdiB3cml0ZSByZWdpc3RlclxuIik7DQotCXJl
dHVybiByZXQ7DQotfQ0KLQ0KLXN0YXRpYyB1MzINCi1tdDc2MjNfdHJnbWlpX3JlYWQoc3RydWN0
IG10NzUzMF9wcml2ICpwcml2LCB1MzIgcmVnKQ0KLXsNCi0JaW50IHJldDsNCi0JdTMyIHZhbDsN
Ci0NCi0JcmV0ID0gcmVnbWFwX3JlYWQocHJpdi0+ZXRoZXJuZXQsIFRSR01JSV9CQVNFKHJlZyks
ICZ2YWwpOw0KLQlpZiAocmV0IDwgMCkgew0KLQkJZGV2X2Vycihwcml2LT5kZXYsDQotCQkJImZh
aWxlZCB0byBwcml2IHJlYWQgcmVnaXN0ZXJcbiIpOw0KLQkJcmV0dXJuIHJldDsNCi0JfQ0KLQ0K
LQlyZXR1cm4gdmFsOw0KLX0NCi0NCi1zdGF0aWMgdm9pZA0KLW10NzYyM190cmdtaWlfcm13KHN0
cnVjdCBtdDc1MzBfcHJpdiAqcHJpdiwgdTMyIHJlZywNCi0JCSAgdTMyIG1hc2ssIHUzMiBzZXQp
DQotew0KLQl1MzIgdmFsOw0KLQ0KLQl2YWwgPSBtdDc2MjNfdHJnbWlpX3JlYWQocHJpdiwgcmVn
KTsNCi0JdmFsICY9IH5tYXNrOw0KLQl2YWwgfD0gc2V0Ow0KLQltdDc2MjNfdHJnbWlpX3dyaXRl
KHByaXYsIHJlZywgdmFsKTsNCi19DQotDQotc3RhdGljIHZvaWQNCi1tdDc2MjNfdHJnbWlpX3Nl
dChzdHJ1Y3QgbXQ3NTMwX3ByaXYgKnByaXYsIHUzMiByZWcsIHUzMiB2YWwpDQotew0KLQltdDc2
MjNfdHJnbWlpX3Jtdyhwcml2LCByZWcsIDAsIHZhbCk7DQotfQ0KLQ0KLXN0YXRpYyB2b2lkDQot
bXQ3NjIzX3RyZ21paV9jbGVhcihzdHJ1Y3QgbXQ3NTMwX3ByaXYgKnByaXYsIHUzMiByZWcsIHUz
MiB2YWwpDQotew0KLQltdDc2MjNfdHJnbWlpX3Jtdyhwcml2LCByZWcsIHZhbCwgMCk7DQotfQ0K
LQ0KIHN0YXRpYyBpbnQNCiBjb3JlX3JlYWRfbW1kX2luZGlyZWN0KHN0cnVjdCBtdDc1MzBfcHJp
diAqcHJpdiwgaW50IHBydGFkLCBpbnQgZGV2YWQpDQogew0KQEAgLTUzOCwyNyArNDg2LDYgQEAg
bXQ3NTMwX3BhZF9jbGtfc2V0dXAoc3RydWN0IGRzYV9zd2l0Y2ggKmRzLCBpbnQgbW9kZSkNCiAJ
CWZvciAoaSA9IDAgOyBpIDwgTlVNX1RSR01JSV9DVFJMOyBpKyspDQogCQkJbXQ3NTMwX3Jtdyhw
cml2LCBNVDc1MzBfVFJHTUlJX1JEKGkpLA0KIAkJCQkgICBSRF9UQVBfTUFTSywgUkRfVEFQKDE2
KSk7DQotCWVsc2UNCi0JCWlmIChwcml2LT5pZCAhPSBJRF9NVDc2MjEpDQotCQkJbXQ3NjIzX3Ry
Z21paV9zZXQocHJpdiwgR1NXX0lOVEZfTU9ERSwNCi0JCQkJCSAgSU5URl9NT0RFX1RSR01JSSk7
DQotDQotCXJldHVybiAwOw0KLX0NCi0NCi1zdGF0aWMgaW50DQotbXQ3NjIzX3BhZF9jbGtfc2V0
dXAoc3RydWN0IGRzYV9zd2l0Y2ggKmRzKQ0KLXsNCi0Jc3RydWN0IG10NzUzMF9wcml2ICpwcml2
ID0gZHMtPnByaXY7DQotCWludCBpOw0KLQ0KLQlmb3IgKGkgPSAwIDsgaSA8IE5VTV9UUkdNSUlf
Q1RSTDsgaSsrKQ0KLQkJbXQ3NjIzX3RyZ21paV93cml0ZShwcml2LCBHU1dfVFJHTUlJX1REX09E
VChpKSwNCi0JCQkJICAgIFREX0RNX0RSVlAoOCkgfCBURF9ETV9EUlZOKDgpKTsNCi0NCi0JbXQ3
NjIzX3RyZ21paV9zZXQocHJpdiwgR1NXX1RSR01JSV9SQ0tfQ1RSTCwgUlhfUlNUIHwgUlhDX0RR
U0lTRUwpOw0KLQltdDc2MjNfdHJnbWlpX2NsZWFyKHByaXYsIEdTV19UUkdNSUlfUkNLX0NUUkws
IFJYX1JTVCk7DQotDQogCXJldHVybiAwOw0KIH0NCiANCkBAIC0xMzExLDEwICsxMjM4LDYgQEAg
bXQ3NTMwX3NldHVwKHN0cnVjdCBkc2Ffc3dpdGNoICpkcykNCiAJZG4gPSBkc2FfdG9fcG9ydChk
cywgTVQ3NTMwX0NQVV9QT1JUKS0+bWFzdGVyLT5kZXYub2Zfbm9kZS0+cGFyZW50Ow0KIA0KIAlp
ZiAocHJpdi0+aWQgPT0gSURfTVQ3NTMwKSB7DQotCQlwcml2LT5ldGhlcm5ldCA9IHN5c2Nvbl9u
b2RlX3RvX3JlZ21hcChkbik7DQotCQlpZiAoSVNfRVJSKHByaXYtPmV0aGVybmV0KSkNCi0JCQly
ZXR1cm4gUFRSX0VSUihwcml2LT5ldGhlcm5ldCk7DQotDQogCQlyZWd1bGF0b3Jfc2V0X3ZvbHRh
Z2UocHJpdi0+Y29yZV9wd3IsIDEwMDAwMDAsIDEwMDAwMDApOw0KIAkJcmV0ID0gcmVndWxhdG9y
X2VuYWJsZShwcml2LT5jb3JlX3B3cik7DQogCQlpZiAocmV0IDwgMCkgew0KQEAgLTE0NzMsMTQg
KzEzOTYsNiBAQCBzdGF0aWMgdm9pZCBtdDc1MzBfcGh5bGlua19tYWNfY29uZmlnKHN0cnVjdCBk
c2Ffc3dpdGNoICpkcywgaW50IHBvcnQsDQogCQkvKiBTZXR1cCBUWCBjaXJjdWl0IGluY2x1aW5n
IHJlbGV2YW50IFBBRCBhbmQgZHJpdmluZyAqLw0KIAkJbXQ3NTMwX3BhZF9jbGtfc2V0dXAoZHMs
IHN0YXRlLT5pbnRlcmZhY2UpOw0KIA0KLQkJaWYgKHByaXYtPmlkID09IElEX01UNzUzMCkgew0K
LQkJCS8qIFNldHVwIFJYIGNpcmN1aXQsIHJlbGV2YW50IFBBRCBhbmQgZHJpdmluZyBvbiB0aGUN
Ci0JCQkgKiBob3N0IHdoaWNoIG11c3QgYmUgcGxhY2VkIGFmdGVyIHRoZSBzZXR1cCBvbiB0aGUN
Ci0JCQkgKiBkZXZpY2Ugc2lkZSBpcyBhbGwgZmluaXNoZWQuDQotCQkJICovDQotCQkJbXQ3NjIz
X3BhZF9jbGtfc2V0dXAoZHMpOw0KLQkJfQ0KLQ0KIAkJcHJpdi0+cDZfaW50ZXJmYWNlID0gc3Rh
dGUtPmludGVyZmFjZTsNCiAJCWJyZWFrOw0KIAlkZWZhdWx0Og0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2RzYS9tdDc1MzAuaCBiL2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaA0KaW5kZXggZWY5
YjUyZjMxNTJiLi40YWVmNjAyNDQ0MWIgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL25ldC9kc2EvbXQ3
NTMwLmgNCisrKyBiL2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaA0KQEAgLTI3Nyw3ICsyNzcsNiBA
QCBlbnVtIG10NzUzMF92bGFuX3BvcnRfYXR0ciB7DQogDQogLyogUmVnaXN0ZXJzIGZvciBUUkdN
SUkgb24gdGhlIGJvdGggc2lkZSAqLw0KICNkZWZpbmUgTVQ3NTMwX1RSR01JSV9SQ0tfQ1RSTAkJ
MHg3YTAwDQotI2RlZmluZSBHU1dfVFJHTUlJX1JDS19DVFJMCQkweDMwMA0KICNkZWZpbmUgIFJY
X1JTVAkJCQlCSVQoMzEpDQogI2RlZmluZSAgUlhDX0RRU0lTRUwJCQlCSVQoMzApDQogI2RlZmlu
ZSAgRFFTSTFfVEFQX01BU0sJCQkoMHg3ZiA8PCA4KQ0KQEAgLTI4NiwzMSArMjg1LDI0IEBAIGVu
dW0gbXQ3NTMwX3ZsYW5fcG9ydF9hdHRyIHsNCiAjZGVmaW5lICBEUVNJMF9UQVAoeCkJCQkoKHgp
ICYgMHg3ZikNCiANCiAjZGVmaW5lIE1UNzUzMF9UUkdNSUlfUkNLX1JUVAkJMHg3YTA0DQotI2Rl
ZmluZSBHU1dfVFJHTUlJX1JDS19SVFQJCTB4MzA0DQogI2RlZmluZSAgRFFTMV9HQVRFCQkJQklU
KDMxKQ0KICNkZWZpbmUgIERRUzBfR0FURQkJCUJJVCgzMCkNCiANCiAjZGVmaW5lIE1UNzUzMF9U
UkdNSUlfUkQoeCkJCSgweDdhMTAgKyAoeCkgKiA4KQ0KLSNkZWZpbmUgR1NXX1RSR01JSV9SRCh4
KQkJKDB4MzEwICsgKHgpICogOCkNCiAjZGVmaW5lICBCU0xJUF9FTgkJCUJJVCgzMSkNCiAjZGVm
aW5lICBFREdFX0NISwkJCUJJVCgzMCkNCiAjZGVmaW5lICBSRF9UQVBfTUFTSwkJCTB4N2YNCiAj
ZGVmaW5lICBSRF9UQVAoeCkJCQkoKHgpICYgMHg3ZikNCiANCi0jZGVmaW5lIEdTV19UUkdNSUlf
VFhDVFJMCQkweDM0MA0KICNkZWZpbmUgTVQ3NTMwX1RSR01JSV9UWENUUkwJCTB4N2E0MA0KICNk
ZWZpbmUgIFRSQUlOX1RYRU4JCQlCSVQoMzEpDQogI2RlZmluZSAgVFhDX0lOVgkJCUJJVCgzMCkN
CiAjZGVmaW5lICBUWF9SU1QJCQkJQklUKDI4KQ0KIA0KICNkZWZpbmUgTVQ3NTMwX1RSR01JSV9U
RF9PRFQoaSkJCSgweDdhNTQgKyA4ICogKGkpKQ0KLSNkZWZpbmUgR1NXX1RSR01JSV9URF9PRFQo
aSkJCSgweDM1NCArIDggKiAoaSkpDQogI2RlZmluZSAgVERfRE1fRFJWUCh4KQkJCSgoeCkgJiAw
eGYpDQogI2RlZmluZSAgVERfRE1fRFJWTih4KQkJCSgoKHgpICYgMHhmKSA8PCA0KQ0KIA0KLSNk
ZWZpbmUgR1NXX0lOVEZfTU9ERQkJCTB4MzkwDQotI2RlZmluZSAgSU5URl9NT0RFX1RSR01JSQkJ
QklUKDEpDQotDQogI2RlZmluZSBNVDc1MzBfVFJHTUlJX1RDS19DVFJMCQkweDdhNzgNCiAjZGVm
aW5lICBUQ0tfVEFQKHgpCQkJKCgoeCkgJiAweGYpIDw8IDgpDQogDQpAQCAtNDQzLDcgKzQzNSw2
IEBAIHN0YXRpYyBjb25zdCBjaGFyICpwNV9pbnRmX21vZGVzKHVuc2lnbmVkIGludCBwNV9pbnRl
cmZhY2UpDQogICogQGRzOgkJCVRoZSBwb2ludGVyIHRvIHRoZSBkc2EgY29yZSBzdHJ1Y3R1cmUN
CiAgKiBAYnVzOgkJVGhlIGJ1cyB1c2VkIGZvciB0aGUgZGV2aWNlIGFuZCBidWlsdC1pbiBQSFkN
CiAgKiBAcnN0YzoJCVRoZSBwb2ludGVyIHRvIHJlc2V0IGNvbnRyb2wgdXNlZCBieSBNQ00NCi0g
KiBAZXRoZXJuZXQ6CQlUaGUgcmVnbWFwIHVzZWQgZm9yIGFjY2VzcyBUUkdNSUktYmFzZWQgcmVn
aXN0ZXJzDQogICogQGNvcmVfcHdyOgkJVGhlIHBvd2VyIHN1cHBsaWVkIGludG8gdGhlIGNvcmUN
CiAgKiBAaW9fcHdyOgkJVGhlIHBvd2VyIHN1cHBsaWVkIGludG8gdGhlIEkvTw0KICAqIEByZXNl
dDoJCVRoZSBkZXNjcmlwdG9yIGZvciBHUElPIGxpbmUgdGllZCB0byBpdHMgcmVzZXQgcGluDQpA
QCAtNDYwLDcgKzQ1MSw2IEBAIHN0cnVjdCBtdDc1MzBfcHJpdiB7DQogCXN0cnVjdCBkc2Ffc3dp
dGNoCSpkczsNCiAJc3RydWN0IG1paV9idXMJCSpidXM7DQogCXN0cnVjdCByZXNldF9jb250cm9s
CSpyc3RjOw0KLQlzdHJ1Y3QgcmVnbWFwCQkqZXRoZXJuZXQ7DQogCXN0cnVjdCByZWd1bGF0b3IJ
KmNvcmVfcHdyOw0KIAlzdHJ1Y3QgcmVndWxhdG9yCSppb19wd3I7DQogCXN0cnVjdCBncGlvX2Rl
c2MJKnJlc2V0Ow0KLS0gDQoyLjI1LjENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRl
a0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
