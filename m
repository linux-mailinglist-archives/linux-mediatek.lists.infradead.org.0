Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0500719EE54
	for <lists+linux-mediatek@lfdr.de>; Sun,  5 Apr 2020 23:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6M3kIVhv7mNW99KSYAaf9uglJWIM7A1MMx+y040RMEk=; b=CRLBmy5DNvjUiz
	gcFnuhezSMFfvcBXu7/+Zk8nP788E67XErZRbv3plF28OUhcwpy82O2zmqJFhNh/GZxSIZgRWXjWG
	M3hDtrp2QmsCh3wcFWQvJJoE5jEwMdLArM2UODeCHWNEozJKaedtcTHr6EciuNL/tpoyJUugDaFRR
	9IuV+9a7OcKt5wgk0fUddbQ7OfSdgFboDGXmCkVCflDnvE/0sWlNvRUch1Se+MM71AjquV/q+5/HV
	X/wTFmcFaXwovGjXG3OJ9zF7MfD3eknfIm7n3wmbgD3dSbDz6PGbbWOhkuHEm6SyX4ZADOOvngUvm
	RpSTendJwPnF0pzP3vOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLD2x-0004Ve-LH; Sun, 05 Apr 2020 21:43:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLD2t-0004TT-MY
 for linux-mediatek@lists.infradead.org; Sun, 05 Apr 2020 21:43:13 +0000
X-UUID: 0e6ac24e08a74e37bf93d327c490d59f-20200405
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=hssZPfyKrC98XlGlDvRIiEbPnbk/z0BqAx8da7Ypfjg=; 
 b=Yr/wigx2O2DrjtRfqxCQWO1JBrkMV0RITsh4mUAUEdisJA6oR4ut23rMA7T/A/XfDfdIaZ6w0O9cHsDjB/CT7zP5KJE+Rp/K2SEUxNcxg4/C2io/cCRV2j/1QPR7Y6WHGa5uHkf3L5Q2G6zELzpp6oD9ltfXK67LdAM7ccZMfAw=;
X-UUID: 0e6ac24e08a74e37bf93d327c490d59f-20200405
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2007226417; Sun, 05 Apr 2020 13:43:00 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 5 Apr 2020 14:42:55 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 05:42:56 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 6 Apr 2020 05:42:53 +0800
From: <sean.wang@mediatek.com>
To: <davem@davemloft.net>, <andrew@lunn.ch>, <f.fainelli@gmail.com>,
 <vivien.didelot@savoirfairelinux.com>, <Mark-MC.Lee@mediatek.com>,
 <john@phrozen.org>
Subject: [PATCH v2 net 1/2] net: dsa: mt7530: move mt7623 settings out off the
 mt7530
Date: Mon, 6 Apr 2020 05:42:53 +0800
Message-ID: <1586122974-22125-1-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_144311_734305_6B3D7621 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
LQ0KdjEgLT4gdjI6IG5vIGNoYW5nZQ0KLS0tDQogZHJpdmVycy9uZXQvZHNhL210NzUzMC5jIHwg
ODUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIGRyaXZlcnMvbmV0
L2RzYS9tdDc1MzAuaCB8IDEwIC0tLS0tDQogMiBmaWxlcyBjaGFuZ2VkLCA5NSBkZWxldGlvbnMo
LSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAuYyBiL2RyaXZlcnMvbmV0
L2RzYS9tdDc1MzAuYw0KaW5kZXggMmQwZDkxZGIwZGRiLi44NDM5MWM4YTBlMTYgMTAwNjQ0DQot
LS0gYS9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMNCisrKyBiL2RyaXZlcnMvbmV0L2RzYS9tdDc1
MzAuYw0KQEAgLTY2LDU4ICs2Niw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXQ3NTMwX21pYl9k
ZXNjIG10NzUzMF9taWJbXSA9IHsNCiAJTUlCX0RFU0MoMSwgMHhiOCwgIlJ4QXJsRHJvcCIpLA0K
IH07DQogDQotc3RhdGljIGludA0KLW10NzYyM190cmdtaWlfd3JpdGUoc3RydWN0IG10NzUzMF9w
cml2ICpwcml2LCAgdTMyIHJlZywgdTMyIHZhbCkNCi17DQotCWludCByZXQ7DQotDQotCXJldCA9
ICByZWdtYXBfd3JpdGUocHJpdi0+ZXRoZXJuZXQsIFRSR01JSV9CQVNFKHJlZyksIHZhbCk7DQot
CWlmIChyZXQgPCAwKQ0KLQkJZGV2X2Vycihwcml2LT5kZXYsDQotCQkJImZhaWxlZCB0byBwcml2
IHdyaXRlIHJlZ2lzdGVyXG4iKTsNCi0JcmV0dXJuIHJldDsNCi19DQotDQotc3RhdGljIHUzMg0K
LW10NzYyM190cmdtaWlfcmVhZChzdHJ1Y3QgbXQ3NTMwX3ByaXYgKnByaXYsIHUzMiByZWcpDQot
ew0KLQlpbnQgcmV0Ow0KLQl1MzIgdmFsOw0KLQ0KLQlyZXQgPSByZWdtYXBfcmVhZChwcml2LT5l
dGhlcm5ldCwgVFJHTUlJX0JBU0UocmVnKSwgJnZhbCk7DQotCWlmIChyZXQgPCAwKSB7DQotCQlk
ZXZfZXJyKHByaXYtPmRldiwNCi0JCQkiZmFpbGVkIHRvIHByaXYgcmVhZCByZWdpc3RlclxuIik7
DQotCQlyZXR1cm4gcmV0Ow0KLQl9DQotDQotCXJldHVybiB2YWw7DQotfQ0KLQ0KLXN0YXRpYyB2
b2lkDQotbXQ3NjIzX3RyZ21paV9ybXcoc3RydWN0IG10NzUzMF9wcml2ICpwcml2LCB1MzIgcmVn
LA0KLQkJICB1MzIgbWFzaywgdTMyIHNldCkNCi17DQotCXUzMiB2YWw7DQotDQotCXZhbCA9IG10
NzYyM190cmdtaWlfcmVhZChwcml2LCByZWcpOw0KLQl2YWwgJj0gfm1hc2s7DQotCXZhbCB8PSBz
ZXQ7DQotCW10NzYyM190cmdtaWlfd3JpdGUocHJpdiwgcmVnLCB2YWwpOw0KLX0NCi0NCi1zdGF0
aWMgdm9pZA0KLW10NzYyM190cmdtaWlfc2V0KHN0cnVjdCBtdDc1MzBfcHJpdiAqcHJpdiwgdTMy
IHJlZywgdTMyIHZhbCkNCi17DQotCW10NzYyM190cmdtaWlfcm13KHByaXYsIHJlZywgMCwgdmFs
KTsNCi19DQotDQotc3RhdGljIHZvaWQNCi1tdDc2MjNfdHJnbWlpX2NsZWFyKHN0cnVjdCBtdDc1
MzBfcHJpdiAqcHJpdiwgdTMyIHJlZywgdTMyIHZhbCkNCi17DQotCW10NzYyM190cmdtaWlfcm13
KHByaXYsIHJlZywgdmFsLCAwKTsNCi19DQotDQogc3RhdGljIGludA0KIGNvcmVfcmVhZF9tbWRf
aW5kaXJlY3Qoc3RydWN0IG10NzUzMF9wcml2ICpwcml2LCBpbnQgcHJ0YWQsIGludCBkZXZhZCkN
CiB7DQpAQCAtNTMwLDI3ICs0NzgsNiBAQCBtdDc1MzBfcGFkX2Nsa19zZXR1cChzdHJ1Y3QgZHNh
X3N3aXRjaCAqZHMsIGludCBtb2RlKQ0KIAkJZm9yIChpID0gMCA7IGkgPCBOVU1fVFJHTUlJX0NU
Ukw7IGkrKykNCiAJCQltdDc1MzBfcm13KHByaXYsIE1UNzUzMF9UUkdNSUlfUkQoaSksDQogCQkJ
CSAgIFJEX1RBUF9NQVNLLCBSRF9UQVAoMTYpKTsNCi0JZWxzZQ0KLQkJaWYgKHByaXYtPmlkICE9
IElEX01UNzYyMSkNCi0JCQltdDc2MjNfdHJnbWlpX3NldChwcml2LCBHU1dfSU5URl9NT0RFLA0K
LQkJCQkJICBJTlRGX01PREVfVFJHTUlJKTsNCi0NCi0JcmV0dXJuIDA7DQotfQ0KLQ0KLXN0YXRp
YyBpbnQNCi1tdDc2MjNfcGFkX2Nsa19zZXR1cChzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMpDQotew0K
LQlzdHJ1Y3QgbXQ3NTMwX3ByaXYgKnByaXYgPSBkcy0+cHJpdjsNCi0JaW50IGk7DQotDQotCWZv
ciAoaSA9IDAgOyBpIDwgTlVNX1RSR01JSV9DVFJMOyBpKyspDQotCQltdDc2MjNfdHJnbWlpX3dy
aXRlKHByaXYsIEdTV19UUkdNSUlfVERfT0RUKGkpLA0KLQkJCQkgICAgVERfRE1fRFJWUCg4KSB8
IFREX0RNX0RSVk4oOCkpOw0KLQ0KLQltdDc2MjNfdHJnbWlpX3NldChwcml2LCBHU1dfVFJHTUlJ
X1JDS19DVFJMLCBSWF9SU1QgfCBSWENfRFFTSVNFTCk7DQotCW10NzYyM190cmdtaWlfY2xlYXIo
cHJpdiwgR1NXX1RSR01JSV9SQ0tfQ1RSTCwgUlhfUlNUKTsNCi0NCiAJcmV0dXJuIDA7DQogfQ0K
IA0KQEAgLTEzMDMsMTAgKzEyMzAsNiBAQCBtdDc1MzBfc2V0dXAoc3RydWN0IGRzYV9zd2l0Y2gg
KmRzKQ0KIAlkbiA9IGRzYV90b19wb3J0KGRzLCBNVDc1MzBfQ1BVX1BPUlQpLT5tYXN0ZXItPmRl
di5vZl9ub2RlLT5wYXJlbnQ7DQogDQogCWlmIChwcml2LT5pZCA9PSBJRF9NVDc1MzApIHsNCi0J
CXByaXYtPmV0aGVybmV0ID0gc3lzY29uX25vZGVfdG9fcmVnbWFwKGRuKTsNCi0JCWlmIChJU19F
UlIocHJpdi0+ZXRoZXJuZXQpKQ0KLQkJCXJldHVybiBQVFJfRVJSKHByaXYtPmV0aGVybmV0KTsN
Ci0NCiAJCXJlZ3VsYXRvcl9zZXRfdm9sdGFnZShwcml2LT5jb3JlX3B3ciwgMTAwMDAwMCwgMTAw
MDAwMCk7DQogCQlyZXQgPSByZWd1bGF0b3JfZW5hYmxlKHByaXYtPmNvcmVfcHdyKTsNCiAJCWlm
IChyZXQgPCAwKSB7DQpAQCAtMTQ2OCwxNCArMTM5MSw2IEBAIHN0YXRpYyB2b2lkIG10NzUzMF9w
aHlsaW5rX21hY19jb25maWcoc3RydWN0IGRzYV9zd2l0Y2ggKmRzLCBpbnQgcG9ydCwNCiAJCS8q
IFNldHVwIFRYIGNpcmN1aXQgaW5jbHVpbmcgcmVsZXZhbnQgUEFEIGFuZCBkcml2aW5nICovDQog
CQltdDc1MzBfcGFkX2Nsa19zZXR1cChkcywgc3RhdGUtPmludGVyZmFjZSk7DQogDQotCQlpZiAo
cHJpdi0+aWQgPT0gSURfTVQ3NTMwKSB7DQotCQkJLyogU2V0dXAgUlggY2lyY3VpdCwgcmVsZXZh
bnQgUEFEIGFuZCBkcml2aW5nIG9uIHRoZQ0KLQkJCSAqIGhvc3Qgd2hpY2ggbXVzdCBiZSBwbGFj
ZWQgYWZ0ZXIgdGhlIHNldHVwIG9uIHRoZQ0KLQkJCSAqIGRldmljZSBzaWRlIGlzIGFsbCBmaW5p
c2hlZC4NCi0JCQkgKi8NCi0JCQltdDc2MjNfcGFkX2Nsa19zZXR1cChkcyk7DQotCQl9DQotDQog
CQlwcml2LT5wNl9pbnRlcmZhY2UgPSBzdGF0ZS0+aW50ZXJmYWNlOw0KIAkJYnJlYWs7DQogCWRl
ZmF1bHQ6DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZHNhL210NzUzMC5oIGIvZHJpdmVycy9u
ZXQvZHNhL210NzUzMC5oDQppbmRleCBlZjliNTJmMzE1MmIuLjRhZWY2MDI0NDQxYiAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaA0KKysrIGIvZHJpdmVycy9uZXQvZHNhL210
NzUzMC5oDQpAQCAtMjc3LDcgKzI3Nyw2IEBAIGVudW0gbXQ3NTMwX3ZsYW5fcG9ydF9hdHRyIHsN
CiANCiAvKiBSZWdpc3RlcnMgZm9yIFRSR01JSSBvbiB0aGUgYm90aCBzaWRlICovDQogI2RlZmlu
ZSBNVDc1MzBfVFJHTUlJX1JDS19DVFJMCQkweDdhMDANCi0jZGVmaW5lIEdTV19UUkdNSUlfUkNL
X0NUUkwJCTB4MzAwDQogI2RlZmluZSAgUlhfUlNUCQkJCUJJVCgzMSkNCiAjZGVmaW5lICBSWENf
RFFTSVNFTAkJCUJJVCgzMCkNCiAjZGVmaW5lICBEUVNJMV9UQVBfTUFTSwkJCSgweDdmIDw8IDgp
DQpAQCAtMjg2LDMxICsyODUsMjQgQEAgZW51bSBtdDc1MzBfdmxhbl9wb3J0X2F0dHIgew0KICNk
ZWZpbmUgIERRU0kwX1RBUCh4KQkJCSgoeCkgJiAweDdmKQ0KIA0KICNkZWZpbmUgTVQ3NTMwX1RS
R01JSV9SQ0tfUlRUCQkweDdhMDQNCi0jZGVmaW5lIEdTV19UUkdNSUlfUkNLX1JUVAkJMHgzMDQN
CiAjZGVmaW5lICBEUVMxX0dBVEUJCQlCSVQoMzEpDQogI2RlZmluZSAgRFFTMF9HQVRFCQkJQklU
KDMwKQ0KIA0KICNkZWZpbmUgTVQ3NTMwX1RSR01JSV9SRCh4KQkJKDB4N2ExMCArICh4KSAqIDgp
DQotI2RlZmluZSBHU1dfVFJHTUlJX1JEKHgpCQkoMHgzMTAgKyAoeCkgKiA4KQ0KICNkZWZpbmUg
IEJTTElQX0VOCQkJQklUKDMxKQ0KICNkZWZpbmUgIEVER0VfQ0hLCQkJQklUKDMwKQ0KICNkZWZp
bmUgIFJEX1RBUF9NQVNLCQkJMHg3Zg0KICNkZWZpbmUgIFJEX1RBUCh4KQkJCSgoeCkgJiAweDdm
KQ0KIA0KLSNkZWZpbmUgR1NXX1RSR01JSV9UWENUUkwJCTB4MzQwDQogI2RlZmluZSBNVDc1MzBf
VFJHTUlJX1RYQ1RSTAkJMHg3YTQwDQogI2RlZmluZSAgVFJBSU5fVFhFTgkJCUJJVCgzMSkNCiAj
ZGVmaW5lICBUWENfSU5WCQkJQklUKDMwKQ0KICNkZWZpbmUgIFRYX1JTVAkJCQlCSVQoMjgpDQog
DQogI2RlZmluZSBNVDc1MzBfVFJHTUlJX1REX09EVChpKQkJKDB4N2E1NCArIDggKiAoaSkpDQot
I2RlZmluZSBHU1dfVFJHTUlJX1REX09EVChpKQkJKDB4MzU0ICsgOCAqIChpKSkNCiAjZGVmaW5l
ICBURF9ETV9EUlZQKHgpCQkJKCh4KSAmIDB4ZikNCiAjZGVmaW5lICBURF9ETV9EUlZOKHgpCQkJ
KCgoeCkgJiAweGYpIDw8IDQpDQogDQotI2RlZmluZSBHU1dfSU5URl9NT0RFCQkJMHgzOTANCi0j
ZGVmaW5lICBJTlRGX01PREVfVFJHTUlJCQlCSVQoMSkNCi0NCiAjZGVmaW5lIE1UNzUzMF9UUkdN
SUlfVENLX0NUUkwJCTB4N2E3OA0KICNkZWZpbmUgIFRDS19UQVAoeCkJCQkoKCh4KSAmIDB4Zikg
PDwgOCkNCiANCkBAIC00NDMsNyArNDM1LDYgQEAgc3RhdGljIGNvbnN0IGNoYXIgKnA1X2ludGZf
bW9kZXModW5zaWduZWQgaW50IHA1X2ludGVyZmFjZSkNCiAgKiBAZHM6CQkJVGhlIHBvaW50ZXIg
dG8gdGhlIGRzYSBjb3JlIHN0cnVjdHVyZQ0KICAqIEBidXM6CQlUaGUgYnVzIHVzZWQgZm9yIHRo
ZSBkZXZpY2UgYW5kIGJ1aWx0LWluIFBIWQ0KICAqIEByc3RjOgkJVGhlIHBvaW50ZXIgdG8gcmVz
ZXQgY29udHJvbCB1c2VkIGJ5IE1DTQ0KLSAqIEBldGhlcm5ldDoJCVRoZSByZWdtYXAgdXNlZCBm
b3IgYWNjZXNzIFRSR01JSS1iYXNlZCByZWdpc3RlcnMNCiAgKiBAY29yZV9wd3I6CQlUaGUgcG93
ZXIgc3VwcGxpZWQgaW50byB0aGUgY29yZQ0KICAqIEBpb19wd3I6CQlUaGUgcG93ZXIgc3VwcGxp
ZWQgaW50byB0aGUgSS9PDQogICogQHJlc2V0OgkJVGhlIGRlc2NyaXB0b3IgZm9yIEdQSU8gbGlu
ZSB0aWVkIHRvIGl0cyByZXNldCBwaW4NCkBAIC00NjAsNyArNDUxLDYgQEAgc3RydWN0IG10NzUz
MF9wcml2IHsNCiAJc3RydWN0IGRzYV9zd2l0Y2gJKmRzOw0KIAlzdHJ1Y3QgbWlpX2J1cwkJKmJ1
czsNCiAJc3RydWN0IHJlc2V0X2NvbnRyb2wJKnJzdGM7DQotCXN0cnVjdCByZWdtYXAJCSpldGhl
cm5ldDsNCiAJc3RydWN0IHJlZ3VsYXRvcgkqY29yZV9wd3I7DQogCXN0cnVjdCByZWd1bGF0b3IJ
KmlvX3B3cjsNCiAJc3RydWN0IGdwaW9fZGVzYwkqcmVzZXQ7DQotLSANCjIuMjUuMQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsg
bWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
