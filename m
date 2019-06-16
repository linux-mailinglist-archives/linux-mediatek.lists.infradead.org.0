Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C15347656
	for <lists+linux-mediatek@lfdr.de>; Sun, 16 Jun 2019 20:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKlwNCuACIcSZqL6PfSFiItlcfG9wSLpGRq92f1cfIA=; b=i7XdnJV/pUovsg
	h7EbNorpfRx1m16gopfNCx+PyO0XQk0EOwW4Fgug29r2xC/Ob+lVHLBuVhU6bRNrHf6K7Gv/e0aWo
	QysDBAEPaZZe9+q6DSfFSObO5nEcGgaH9oRleuTX0nxdLzNU2sPkEJ4Jl6aJw1V+lPh1tBqA8zWBK
	MKbCEzEG/kJMcgERph4tKAsMXrlEZMiUZW1aCL2BX9otzJVtJrQ0tSNc+EFmMASMvdVgNnc1B831v
	I6BJKBgxRLH8C0w07/IXZs6RxzrxgkSiJKAN0t48ct80rybhSa3e4h2+E5FyEzt9wJr+r1CLwhb46
	kLGZpL0xc2J6aIsGrrgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcZlh-0003sK-Nc; Sun, 16 Jun 2019 18:20:41 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcZlY-0003ot-Q9
 for linux-mediatek@lists.infradead.org; Sun, 16 Jun 2019 18:20:35 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id CD2F4606F0;
 Sun, 16 Jun 2019 20:20:29 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="rqYc/K2g"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 9B9721C65C74;
 Sun, 16 Jun 2019 20:20:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 9B9721C65C74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1560709229;
 bh=jkCk3uJcoUHxaeiWoxc5qfuBTzCnR4/h0/TtYViIvzA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rqYc/K2gVLyj7qPNYzn0UtMkJ0sUBwee+WJ7dXwu91v2dDuAHePWmv/P5UhFISINQ
 p/eC4+qZtrIqU2Wo+R0OO1eOY42Npp1S7NQ9y3T2S/GyVhGCsZhcJrWb29gxTeMJ7p
 nnQiQT+G1RyPg46+Pd01Q8FRzbzpUpTzuq+3wErdpixUaDLxkHosio0nwZbbQBGNw2
 a5ngAMHJR/ulaThowNn6s2x96kNQALzJaPTUsYEwP1D+J1pJf8oC15F02PKSuS9x+H
 BOyVKbK57eDZwbuc8KffgO4DMBpFBv7bYuF6QCvGcwIgbg6kK4Qc0tX2+j7M10vwiR
 6CqUJ9puW4ySA==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: Sean Wang <sean.wang@mediatek.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: [PATCH net-next 1/2] net: ethernet: mediatek: Add MT7621 TRGMII mode
 support
Date: Sun, 16 Jun 2019 20:20:09 +0200
Message-Id: <20190616182010.18778-2-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190616182010.18778-1-opensource@vdorst.com>
References: <20190616182010.18778-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_112033_138123_6D44C33E 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-mips@vger.kernel.org, john@phrozen.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

TVQ3NjIxIFNPQyBhbHNvIHN1cHBvcnRzIFRSR01JSS4KVFJHTUlJIHNwZWVkIGlzIDEyMDBNQml0
LgoKU2lnbmVkLW9mZi1ieTogUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+
Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYyB8IDM4ICsr
KysrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0
aF9zb2MuaCB8IDExICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVr
L210a19ldGhfc29jLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3Nv
Yy5jCmluZGV4IDM2MmVhY2Q4MmI5Mi4uNjI4YWRiZjc5NzEwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jCisrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKQEAgLTE0MCw2ICsxNDAsMjggQEAgc3RhdGlj
IGludCBtdGtfbWRpb19yZWFkKHN0cnVjdCBtaWlfYnVzICpidXMsIGludCBwaHlfYWRkciwgaW50
IHBoeV9yZWcpCiAJcmV0dXJuIF9tdGtfbWRpb19yZWFkKGV0aCwgcGh5X2FkZHIsIHBoeV9yZWcp
OwogfQogCitzdGF0aWMgaW50IG10NzYyMV9nbWFjMF9yZ21paV9hZGp1c3Qoc3RydWN0IG10a19l
dGggKmV0aCwKKwkJCQkgICAgIHBoeV9pbnRlcmZhY2VfdCBpbnRlcmZhY2UpCit7CisJdTMyIHZh
bDsKKworCS8qIENoZWNrIEREUiBtZW1vcnkgdHlwZS4gQ3VycmVudGx5IEREUjIgaXMgbm90IHN1
cHBvcnRlZC4gKi8KKwlyZWdtYXBfcmVhZChldGgtPmV0aHN5cywgRVRIU1lTX1NZU0NGRywgJnZh
bCk7CisJaWYgKHZhbCAmIFNZU0NGR19EUkFNX1RZUEVfRERSMikgeworCQlkZXZfZXJyKGV0aC0+
ZGV2LAorCQkJIlRSR01JSSBtb2RlIHdpdGggRERSMiBtZW1vcnkgaXMgbm90IHN1cHBvcnRlZCFc
biIpOworCQlyZXR1cm4gLUVPUE5PVFNVUFA7CisJfQorCisJdmFsID0gKGludGVyZmFjZSA9PSBQ
SFlfSU5URVJGQUNFX01PREVfVFJHTUlJKSA/CisJCUVUSFNZU19UUkdNSUlfTVQ3NjIxX0REUl9Q
TEwgOiAwOworCisJcmVnbWFwX3VwZGF0ZV9iaXRzKGV0aC0+ZXRoc3lzLCBFVEhTWVNfQ0xLQ0ZH
MCwKKwkJCSAgIEVUSFNZU19UUkdNSUlfTVQ3NjIxX01BU0ssIHZhbCk7CisKKwlyZXR1cm4gMDsK
K30KKwogc3RhdGljIHZvaWQgbXRrX2dtYWMwX3JnbWlpX2FkanVzdChzdHJ1Y3QgbXRrX2V0aCAq
ZXRoLCBpbnQgc3BlZWQpCiB7CiAJdTMyIHZhbDsKQEAgLTE4OSw5ICsyMTEsMTcgQEAgc3RhdGlj
IHZvaWQgbXRrX3BoeV9saW5rX2FkanVzdChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2KQogCQlicmVh
azsKIAl9CiAKLQlpZiAoTVRLX0hBU19DQVBTKG1hYy0+aHctPnNvYy0+Y2FwcywgTVRLX0dNQUMx
X1RSR01JSSkgJiYKLQkgICAgIW1hYy0+aWQgJiYgIW1hYy0+dHJnbWlpKQotCQltdGtfZ21hYzBf
cmdtaWlfYWRqdXN0KG1hYy0+aHcsIGRldi0+cGh5ZGV2LT5zcGVlZCk7CisJaWYgKE1US19IQVNf
Q0FQUyhtYWMtPmh3LT5zb2MtPmNhcHMsIE1US19HTUFDMV9UUkdNSUkpICYmICFtYWMtPmlkKSB7
CisJCWlmIChNVEtfSEFTX0NBUFMobWFjLT5ody0+c29jLT5jYXBzLCBNVEtfVFJHTUlJX01UNzYy
MV9DTEspKSB7CisJCQlpZiAobXQ3NjIxX2dtYWMwX3JnbWlpX2FkanVzdChtYWMtPmh3LAorCQkJ
CQkJICAgICAgZGV2LT5waHlkZXYtPmludGVyZmFjZSkpCisJCQkJcmV0dXJuOworCQl9IGVsc2Ug
eworCQkJaWYgKCFtYWMtPnRyZ21paSkKKwkJCQltdGtfZ21hYzBfcmdtaWlfYWRqdXN0KG1hYy0+
aHcsCisJCQkJCQkgICAgICAgZGV2LT5waHlkZXYtPnNwZWVkKTsKKwkJfQorCX0KIAogCWlmIChk
ZXYtPnBoeWRldi0+bGluaykKIAkJbWNyIHw9IE1BQ19NQ1JfRk9SQ0VfTElOSzsKQEAgLTI2MTMs
NyArMjY0Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX3NvY19kYXRhIG10MjcwMV9kYXRh
ID0gewogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfc29jX2RhdGEgbXQ3NjIxX2RhdGEg
PSB7Ci0JLmNhcHMgPSBNVEtfU0hBUkVEX0lOVCwKKwkuY2FwcyA9IE1UNzYyMV9DQVBTLAogCS5y
ZXF1aXJlZF9jbGtzID0gTVQ3NjIxX0NMS1NfQklUTUFQLAogCS5yZXF1aXJlZF9wY3RsID0gZmFs
c2UsCiB9OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0
aF9zb2MuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmgKaW5k
ZXggYTBhYTUwMDhkNWNjLi45YWJiNDAxNTQ3N2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmgKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
bWVkaWF0ZWsvbXRrX2V0aF9zb2MuaApAQCAtMzY5LDYgKzM2OSwxMCBAQAogI2RlZmluZSBNVDc2
MjJfRVRICQk3NjIyCiAjZGVmaW5lIE1UNzYyMV9FVEgJCTc2MjEKIAorLyogZXRoZXJuZXQgc3lz
dGVtIGNvbnRyb2wgcmVnaXN0ZXIgKi8KKyNkZWZpbmUgRVRIU1lTX1NZU0NGRwkJMHgxMAorI2Rl
ZmluZSBTWVNDRkdfRFJBTV9UWVBFX0REUjIJQklUKDQpCisKIC8qIGV0aGVybmV0IHN1YnN5c3Rl
bSBjb25maWcgcmVnaXN0ZXIgKi8KICNkZWZpbmUgRVRIU1lTX1NZU0NGRzAJCTB4MTQKICNkZWZp
bmUgU1lTQ0ZHMF9HRV9NQVNLCQkweDMKQEAgLTM4Myw2ICszODcsOSBAQAogLyogZXRoZXJuZXQg
c3Vic3lzdGVtIGNsb2NrIHJlZ2lzdGVyICovCiAjZGVmaW5lIEVUSFNZU19DTEtDRkcwCQkweDJj
CiAjZGVmaW5lIEVUSFNZU19UUkdNSUlfQ0xLX1NFTDM2Ml81CUJJVCgxMSkKKyNkZWZpbmUgRVRI
U1lTX1RSR01JSV9NVDc2MjFfTUFTSwkoQklUKDUpIHwgQklUKDYpKQorI2RlZmluZSBFVEhTWVNf
VFJHTUlJX01UNzYyMV9BUExMCUJJVCg2KQorI2RlZmluZSBFVEhTWVNfVFJHTUlJX01UNzYyMV9E
RFJfUExMCUJJVCg1KQogCiAvKiBldGhlcm5ldCByZXNldCBjb250cm9sIHJlZ2lzdGVyICovCiAj
ZGVmaW5lIEVUSFNZU19SU1RDVFJMCQkweDM0CkBAIC02MjIsNiArNjI5LDcgQEAgZW51bSBtdGtf
ZXRoX3BhdGggewogI2RlZmluZSBNVEtfU0hBUkVEX1NHTUlJCQlCSVQoNykKICNkZWZpbmUgTVRL
X0hXTFJPCQkJQklUKDgpCiAjZGVmaW5lIE1US19TSEFSRURfSU5UCQkJQklUKDkpCisjZGVmaW5l
IE1US19UUkdNSUlfTVQ3NjIxX0NMSwkJQklUKDEwKQogCiAvKiBTdXBwb3J0ZWQgcGF0aCBwcmVz
ZW50IG9uIFNvQ3MgKi8KICNkZWZpbmUgTVRLX1BBVEhfQklUKHgpICAgICAgICAgQklUKCh4KSAr
IDEwKQpAQCAtNjczLDYgKzY4MSw5IEBAIGVudW0gbXRrX2V0aF9wYXRoIHsKIAogI2RlZmluZSBN
VEtfSEFTX0NBUFMoY2FwcywgX3gpCQkoKChjYXBzKSAmIChfeCkpID09IChfeCkpCiAKKyNkZWZp
bmUgTVQ3NjIxX0NBUFMgIChNVEtfR01BQzFfUkdNSUkgfCBNVEtfR01BQzFfVFJHTUlJIHwgXAor
CQkgICAgICBNVEtfR01BQzJfUkdNSUkgfCBNVEtfU0hBUkVEX0lOVCB8IE1US19UUkdNSUlfTVQ3
NjIxX0NMSykKKwogI2RlZmluZSBNVDc2MjJfQ0FQUyAgKE1US19HTUFDMV9SR01JSSB8IE1US19H
TUFDMV9TR01JSSB8IE1US19HTUFDMl9SR01JSSB8IFwKIAkJICAgICAgTVRLX0dNQUMyX1NHTUlJ
IHwgTVRLX0dETTFfRVNXIHwgXAogCQkgICAgICBNVEtfTVVYX0dETTFfVE9fR01BQzFfRVNXIHwg
XAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tZWRpYXRlawo=
