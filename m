Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D453A2DCF
	for <lists+linux-mediatek@lfdr.de>; Fri, 30 Aug 2019 05:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aEm2jlvY9BLCFqn/7pmhFpMoWaFAYvWnPB5V1axQ0c=; b=hfACk0ufaV8QPf
	zozmcWA7mF0ZyIkdGemSl/6dDoB8K0ur+b9XKOBJDgAFMXcSYkWwxW7IOIC3LdmkBHbw3yDjBytp3
	Fgo0IbabSAw5o+lAszSaRJ+T11+zcYQgUshIAcjqlFCRmFJujTLt/Nq4VJPta29pUW4ZsJHo5XWot
	XjuuDFTLPMFzS2B3yCy44Niq9i6seKnVdoxCTRMV5z0j0cIoe6Jo/qKEuyN6hJkesUjGTnMWRx9sM
	3WAFS2+0WJoCuxLaYEhRGLLYyca0ALnvxZ1c2UQVIx8ym2K3IjJEFOXBjIW3rNxm6s0uDFHZO5622
	SsOoVZwQQFZvYLL+rdbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Y2w-0002ns-RJ; Fri, 30 Aug 2019 03:57:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Y2s-0002lY-Fw
 for linux-mediatek@lists.infradead.org; Fri, 30 Aug 2019 03:57:56 +0000
X-UUID: eccad02f8bfd426989dd50089893c9d3-20190829
X-UUID: eccad02f8bfd426989dd50089893c9d3-20190829
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2001802554; Thu, 29 Aug 2019 19:57:56 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 20:57:55 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 11:57:48 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 30 Aug 2019 11:57:48 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v7 04/11] pwm: mediatek: allocate the clks array dynamically
Date: Fri, 30 Aug 2019 11:57:10 +0800
Message-ID: <1567137437-10041-5-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567137437-10041-1-git-send-email-sam.shih@mediatek.com>
References: <1567137437-10041-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_205754_570616_0B65F338 
X-CRM114-Status: GOOD (  16.02  )
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
Cc: linux-pwm@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 devicetree@vger.kernel.org, Sam
 Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SW5zdGVhZCBvZiB1c2luZyBmaXhlZCBzaXplIG9mIGFycmF5cywgYWxsb2NhdGUgdGhlIG1lbW9y
eSBmb3IgdGhlbQpiYXNlZCBvbiB0aGUgaW5mb3JtYXRpb24gd2UgZ2V0IGZyb20gdGhlIERULgoK
QWxzbyByZW1vdmUgdGhlIGNoZWNrIGZvciBudW1fcHdtcywgZHVlIHRvIGR5bmFtaWNhbGx5IGFs
bG9jYXRlIHB3bQpzaG91bGQgbm90IGNhdXNlIGFycmF5IGluZGV4IG91dCBvZiBib3VuZC4KClNp
Z25lZC1vZmYtYnk6IFJ5ZGVyIExlZSA8cnlkZXIubGVlQG1lZGlhdGVrLmNvbT4KU2lnbmVkLW9m
Zi1ieTogU2FtIFNoaWggPHNhbS5zaGloQG1lZGlhdGVrLmNvbT4KUmV2aWV3ZWQtYnk6IFV3ZSBL
bGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQpDaGFuZ2Vz
IHNpbmNlIHY2OgotIEFkZCBhIFJldmlld2VkLWJ5IHRhZwoKQ2hhbmdlcyBzaW5jZSB2NToKLSBG
b2xsb3cgcmV2aWV3ZXJzJ3MgY29tbWVudHMKTWFrZSB0aGUgY2hhbmdlcyBvZiBhbGxvY2F0ZSB0
aGUgY2xrcyBhcnJheSBkeW5hbWljYWxseSBhcyBhIHNpbmdsZSBwYXRjaAoKQ2hhbmdlcyBzaW5j
ZSB2NDoKLSBGb2xsb3cgcmV2aWV3ZXJzJ3MgY29tbWVudHMKMS4gdXNlIHBjLT5zb2MtPmhhc19j
bGtzIHRvIGNoZWNrIGNsb2NrcyBleGlzdCBvciBub3QuCjIuIEFkZCBlcnJvciBtZXNzYWdlIHdo
ZW4gcHJvYmUoKSB1bmFibGUgdG8gZ2V0IGNsa3MKLSBGaXhlcyBidWcgd2hlbiBTb0MgaXMgb2xk
IG1pcHMgd2hpY2ggaGFzIG5vIGNvbXBsZXggY2xvY2sgdHJlZS4KaWYgY2xvY2tzIG5vdCBleGlz
dCwgdXNlIHRoZSBuZXcgcHJvcGVydHkgZnJvbSBEVCB0byBhcHBseSBwZXJpb2QgY2FjdWxhdGlv
bjsKb3RoZXJ3aXNlLCB1c2UgY2xrX2dldF9yYXRlIHRvIGdldCBjbG9jayBmcmVxdWVuY3kgYW5k
IGFwcGx5IHBlcmlvZCBjYWN1bGF0aW9uLgoKLS0tCiBkcml2ZXJzL3B3bS9wd20tbWVkaWF0ZWsu
YyB8IDg0ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wd20vcHdtLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3B3bS9wd20tbWVkaWF0ZWsuYwppbmRl
eCAwN2U4NDNhZWRkYjEuLjcxYmZhYjdlMmUxOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdt
LW1lZGlhdGVrLmMKKysrIGIvZHJpdmVycy9wd20vcHdtLW1lZGlhdGVrLmMKQEAgLTM1LDI1ICsz
NSw2IEBACiAKICNkZWZpbmUgUFdNX0NMS19ESVZfTUFYCQk3CiAKLWVudW0gewotCU1US19DTEtf
TUFJTiA9IDAsCi0JTVRLX0NMS19UT1AsCi0JTVRLX0NMS19QV00xLAotCU1US19DTEtfUFdNMiwK
LQlNVEtfQ0xLX1BXTTMsCi0JTVRLX0NMS19QV000LAotCU1US19DTEtfUFdNNSwKLQlNVEtfQ0xL
X1BXTTYsCi0JTVRLX0NMS19QV003LAotCU1US19DTEtfUFdNOCwKLQlNVEtfQ0xLX01BWCwKLX07
Ci0KLXN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgbXRrX3B3bV9jbGtfbmFtZVtNVEtfQ0xLX01B
WF0gPSB7Ci0JIm1haW4iLCAidG9wIiwgInB3bTEiLCAicHdtMiIsICJwd20zIiwgInB3bTQiLCAi
cHdtNSIsICJwd202IiwgInB3bTciLAotCSJwd204IgotfTsKLQogc3RydWN0IG10a19wd21fcGxh
dGZvcm1fZGF0YSB7CiAJdW5zaWduZWQgaW50IGZhbGxiYWNrX25wd21zOwogCWJvb2wgcHdtNDVf
Zml4dXA7CkBAIC02MywxMiArNDQsMTcgQEAgc3RydWN0IG10a19wd21fcGxhdGZvcm1fZGF0YSB7
CiAgKiBzdHJ1Y3QgbXRrX3B3bV9jaGlwIC0gc3RydWN0IHJlcHJlc2VudGluZyBQV00gY2hpcAog
ICogQGNoaXA6IGxpbnV4IFBXTSBjaGlwIHJlcHJlc2VudGF0aW9uCiAgKiBAcmVnczogYmFzZSBh
ZGRyZXNzIG9mIFBXTSBjaGlwCi0gKiBAY2xrczogbGlzdCBvZiBjbG9ja3MKKyAqIEBjbGtfdG9w
OiB0aGUgdG9wIGNsb2NrIGdlbmVyYXRvcgorICogQGNsa19tYWluOiB0aGUgY2xvY2sgdXNlZCBi
eSBQV00gY29yZQorICogQGNsa19wd21zOiB0aGUgY2xvY2sgdXNlZCBieSBlYWNoIFBXTSBjaGFu
bmVsCisgKiBAY2xrX2ZyZXE6IHRoZSBmaXggY2xvY2sgZnJlcXVlbmN5IG9mIGxlZ2FjeSBNSVBT
IFNvQwogICovCiBzdHJ1Y3QgbXRrX3B3bV9jaGlwIHsKIAlzdHJ1Y3QgcHdtX2NoaXAgY2hpcDsK
IAl2b2lkIF9faW9tZW0gKnJlZ3M7Ci0Jc3RydWN0IGNsayAqY2xrc1tNVEtfQ0xLX01BWF07CisJ
c3RydWN0IGNsayAqY2xrX3RvcDsKKwlzdHJ1Y3QgY2xrICpjbGtfbWFpbjsKKwlzdHJ1Y3QgY2xr
ICoqY2xrX3B3bXM7CiAJY29uc3Qgc3RydWN0IG10a19wd21fcGxhdGZvcm1fZGF0YSAqc29jOwog
fTsKIApAQCAtODYsMjQgKzcyLDI0IEBAIHN0YXRpYyBpbnQgbXRrX3B3bV9jbGtfZW5hYmxlKHN0
cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSkKIAlzdHJ1Y3QgbXRr
X3B3bV9jaGlwICpwYyA9IHRvX210a19wd21fY2hpcChjaGlwKTsKIAlpbnQgcmV0OwogCi0JcmV0
ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHBjLT5jbGtzW01US19DTEtfVE9QXSk7CisJcmV0ID0gY2xr
X3ByZXBhcmVfZW5hYmxlKHBjLT5jbGtfdG9wKTsKIAlpZiAocmV0IDwgMCkKIAkJcmV0dXJuIHJl
dDsKIAotCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwYy0+Y2xrc1tNVEtfQ0xLX01BSU5dKTsK
KwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocGMtPmNsa19tYWluKTsKIAlpZiAocmV0IDwgMCkK
IAkJZ290byBkaXNhYmxlX2Nsa190b3A7CiAKLQlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocGMt
PmNsa3NbTVRLX0NMS19QV00xICsgcHdtLT5od3B3bV0pOworCXJldCA9IGNsa19wcmVwYXJlX2Vu
YWJsZShwYy0+Y2xrX3B3bXNbcHdtLT5od3B3bV0pOwogCWlmIChyZXQgPCAwKQogCQlnb3RvIGRp
c2FibGVfY2xrX21haW47CiAKIAlyZXR1cm4gMDsKIAogZGlzYWJsZV9jbGtfbWFpbjoKLQljbGtf
ZGlzYWJsZV91bnByZXBhcmUocGMtPmNsa3NbTVRLX0NMS19NQUlOXSk7CisJY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKHBjLT5jbGtfbWFpbik7CiBkaXNhYmxlX2Nsa190b3A6Ci0JY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKHBjLT5jbGtzW01US19DTEtfVE9QXSk7CisJY2xrX2Rpc2FibGVfdW5wcmVwYXJl
KHBjLT5jbGtfdG9wKTsKIAogCXJldHVybiByZXQ7CiB9CkBAIC0xMTIsOSArOTgsOSBAQCBzdGF0
aWMgdm9pZCBtdGtfcHdtX2Nsa19kaXNhYmxlKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0
IHB3bV9kZXZpY2UgKnB3bSkKIHsKIAlzdHJ1Y3QgbXRrX3B3bV9jaGlwICpwYyA9IHRvX210a19w
d21fY2hpcChjaGlwKTsKIAotCWNsa19kaXNhYmxlX3VucHJlcGFyZShwYy0+Y2xrc1tNVEtfQ0xL
X1BXTTEgKyBwd20tPmh3cHdtXSk7Ci0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBjLT5jbGtzW01U
S19DTEtfTUFJTl0pOwotCWNsa19kaXNhYmxlX3VucHJlcGFyZShwYy0+Y2xrc1tNVEtfQ0xLX1RP
UF0pOworCWNsa19kaXNhYmxlX3VucHJlcGFyZShwYy0+Y2xrX3B3bXNbcHdtLT5od3B3bV0pOwor
CWNsa19kaXNhYmxlX3VucHJlcGFyZShwYy0+Y2xrX21haW4pOworCWNsa19kaXNhYmxlX3VucHJl
cGFyZShwYy0+Y2xrX3RvcCk7CiB9CiAKIHN0YXRpYyBpbmxpbmUgdTMyIG10a19wd21fcmVhZGwo
c3RydWN0IG10a19wd21fY2hpcCAqY2hpcCwgdW5zaWduZWQgaW50IG51bSwKQEAgLTIyMiw3ICsy
MDgsNyBAQCBzdGF0aWMgaW50IG10a19wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gcGRldi0+ZGV2Lm9mX25vZGU7CiAJc3Ry
dWN0IG10a19wd21fY2hpcCAqcGM7CiAJc3RydWN0IHJlc291cmNlICpyZXM7Ci0JdW5zaWduZWQg
aW50IGksIG5wd21zOworCXVuc2lnbmVkIGludCBucHdtczsKIAlpbnQgcmV0OwogCiAJcGMgPSBk
ZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpwYyksIEdGUF9LRVJORUwpOwpAQCAtMjQ4
LDIxICsyMzQsMzUgQEAgc3RhdGljIGludCBtdGtfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCiAJCX0KIAl9CiAKLQkvKiBNQUlOICsgVE9QICsgTlBXTSA8IE1US19DTEtf
TUFYICovCi0JaWYgKChucHdtcyArIDIpID4gTVRLX0NMS19NQVgpIHsKLQkJZGV2X3dhcm4oJnBk
ZXYtPmRldiwgIm51bWJlciBvZiBQV01zIGlzIGxhcmdlciB0aGFuICVkXG4iLAotCQkJIE1US19D
TEtfTUFYIC0gMik7Ci0JCW5wd21zID0gTVRLX0NMS19NQVggLSAyOworCWludCBpOworCisJcGMt
PmNsa19wd21zID0gZGV2bV9rY2FsbG9jKCZwZGV2LT5kZXYsIG5wd21zLAorCQkJCSAgICBzaXpl
b2YoKnBjLT5jbGtfcHdtcyksIEdGUF9LRVJORUwpOworCWlmICghcGMtPmNsa19wd21zKQorCQly
ZXR1cm4gLUVOT01FTTsKKworCXBjLT5jbGtfdG9wID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYs
ICJ0b3AiKTsKKwlpZiAoSVNfRVJSKHBjLT5jbGtfdG9wKSkgeworCQlkZXZfZXJyKCZwZGV2LT5k
ZXYsICJjbG9jazogdG9wIGZhaWw6ICVsZFxuIiwKKwkJCVBUUl9FUlIocGMtPmNsa190b3ApKTsK
KwkJcmV0dXJuIFBUUl9FUlIocGMtPmNsa190b3ApOworCX0KKworCXBjLT5jbGtfbWFpbiA9IGRl
dm1fY2xrX2dldCgmcGRldi0+ZGV2LCAibWFpbiIpOworCWlmIChJU19FUlIocGMtPmNsa19tYWlu
KSkgeworCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJjbG9jazogbWFpbiBmYWlsOiAlbGRcbiIsCisJ
CQlQVFJfRVJSKHBjLT5jbGtfbWFpbikpOworCQlyZXR1cm4gUFRSX0VSUihwYy0+Y2xrX21haW4p
OwogCX0KKwlmb3IgKGkgPSAwOyBpIDwgbnB3bXM7IGkrKykgeworCQljaGFyIG5hbWVbOF07CiAK
LQlmb3IgKGkgPSAwOyBpIDwgbnB3bXMgKyAyIDsgaSsrKSB7Ci0JCXBjLT5jbGtzW2ldID0gZGV2
bV9jbGtfZ2V0KCZwZGV2LT5kZXYsCi0JCQkJCSAgbXRrX3B3bV9jbGtfbmFtZVtpXSk7Ci0JCWlm
IChJU19FUlIocGMtPmNsa3NbaV0pKSB7CisJCXNucHJpbnRmKG5hbWUsIHNpemVvZihuYW1lKSwg
InB3bSVkIiwgaSArIDEpOworCQlwYy0+Y2xrX3B3bXNbaV0gPSBkZXZtX2Nsa19nZXQoJnBkZXYt
PmRldiwgbmFtZSk7CisJCWlmIChJU19FUlIocGMtPmNsa19wd21zW2ldKSkgewogCQkJZGV2X2Vy
cigmcGRldi0+ZGV2LCAiY2xvY2s6ICVzIGZhaWw6ICVsZFxuIiwKLQkJCQltdGtfcHdtX2Nsa19u
YW1lW2ldLAotCQkJCVBUUl9FUlIocGMtPmNsa3NbaV0pKTsKLQkJCXJldHVybiBQVFJfRVJSKHBj
LT5jbGtzW2ldKTsKKwkJCQluYW1lLCBQVFJfRVJSKHBjLT5jbGtfcHdtc1tpXSkpOworCQkJcmV0
dXJuIFBUUl9FUlIocGMtPmNsa19wd21zW2ldKTsKIAkJfQogCX0KIAotLSAKMi4xNy4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0
ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
