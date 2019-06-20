Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88DE4CDA5
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Jun 2019 14:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkZDpjOEYfM3TYL7JaXJvDTKtjilXDf1zD/SaBKIGcQ=; b=qVvQ33cTb0ukPF
	luWFSPIAC+MY5OBZrGt3sxUnnTzobqU4M/DTDpQMSs3WC3hOEeMQPLENt9JZHj/Y0PAvwhoIHqZnP
	wH6y2ZXPaBc8sfOZTnpy3vVypDUJ7usU2NZ2yI6X6yuzBtPBl+b+RMfqEKnn8rb8DLcbmeSRNvaZB
	iEUICyyauAE4ZwlWwVIeH7UAtp+SKTBsEfJvc4QrPPw9k4fRR6NK76atAO3+SLZGnLbZOE7OdjHfQ
	Kxjrcf0qe16OKxwtFmNOboheUTKeqRilBdpHqRxldcPMN4CC5NwJLWKdhA4bybF455FexLV0sjjGD
	wwWDA17VSazFqVwIaZ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdw67-0007LH-9w; Thu, 20 Jun 2019 12:23:23 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdw61-0007It-9V
 for linux-mediatek@lists.infradead.org; Thu, 20 Jun 2019 12:23:19 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 107CC5FEA3;
 Thu, 20 Jun 2019 14:23:12 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="g7BR92yl"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id BE5AE1CB7226;
 Thu, 20 Jun 2019 14:23:11 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com BE5AE1CB7226
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561033391;
 bh=t3u4+GFTt7AWzr0gX5MB+fy6a8Ysaz6JhNtAzReRx1s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g7BR92ylFiMAx5nRGIDi2XQrD2KPcZc9sIFU67kvHHcO2PCUHmikUifqlBee1IcGE
 MgO78VJP3mNGstXyonYjfi6U7mJlQ3UXKE6f0lcNypi/SeTzhLVQOWpTIM9bkqQGZa
 ngsR2T1/AYYZDdt2ddoypnKyV5TdEBt1X5UwrFjyISZPY7KQ+1pQ7W0zwSdpwdY8cW
 VgmRWj+60ZJhe7po/d8TMtC0MFSQe1TxqAtll6C/UfgkX2+nkJ98KUronhxzS2QXuv
 QdaX9l8qKQwtwNzFIrwY7hNyxnNClZpN46k83AdVrbxZdbtMlabVjNKPjtC/WA0VS/
 C7HyUL9B0VTNg==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: frank-w@public-files.de, sean.wang@mediatek.com, f.fainelli@gmail.com,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH v2 net-next 1/2] net: ethernet: mediatek: Add MT7621 TRGMII
 mode support
Date: Thu, 20 Jun 2019 14:21:54 +0200
Message-Id: <20190620122155.32078-2-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620122155.32078-1-opensource@vdorst.com>
References: <20190620122155.32078-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_052317_757010_B5E25B82 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Yy5jCmluZGV4IGYyN2VmZTQxMTBjYy4uMDY2NzEyZjJlOTg1IDEwMDY0NAotLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jCisrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKQEAgLTEzNCw2ICsxMzQsMjggQEAgc3RhdGlj
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
ZXRoLCBpbnQgc3BlZWQpCiB7CiAJdTMyIHZhbDsKQEAgLTE4Myw5ICsyMDUsMTcgQEAgc3RhdGlj
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
ZXYtPnBoeWRldi0+bGluaykKIAkJbWNyIHw9IE1BQ19NQ1JfRk9SQ0VfTElOSzsKQEAgLTI2MDcs
NyArMjYzNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX3NvY19kYXRhIG10MjcwMV9kYXRh
ID0gewogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfc29jX2RhdGEgbXQ3NjIxX2RhdGEg
PSB7Ci0JLmNhcHMgPSBNVEtfU0hBUkVEX0lOVCwKKwkuY2FwcyA9IE1UNzYyMV9DQVBTLAogCS5y
ZXF1aXJlZF9jbGtzID0gTVQ3NjIxX0NMS1NfQklUTUFQLAogCS5yZXF1aXJlZF9wY3RsID0gZmFs
c2UsCiB9OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0
aF9zb2MuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmgKaW5k
ZXggODVlMzE0NGYxYWY1Li44NzZjZTY3OTg3MDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmgKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
bWVkaWF0ZWsvbXRrX2V0aF9zb2MuaApAQCAtMzYzLDYgKzM2MywxMCBAQAogI2RlZmluZSBNVDc2
MjJfRVRICQk3NjIyCiAjZGVmaW5lIE1UNzYyMV9FVEgJCTc2MjEKIAorLyogZXRoZXJuZXQgc3lz
dGVtIGNvbnRyb2wgcmVnaXN0ZXIgKi8KKyNkZWZpbmUgRVRIU1lTX1NZU0NGRwkJMHgxMAorI2Rl
ZmluZSBTWVNDRkdfRFJBTV9UWVBFX0REUjIJQklUKDQpCisKIC8qIGV0aGVybmV0IHN1YnN5c3Rl
bSBjb25maWcgcmVnaXN0ZXIgKi8KICNkZWZpbmUgRVRIU1lTX1NZU0NGRzAJCTB4MTQKICNkZWZp
bmUgU1lTQ0ZHMF9HRV9NQVNLCQkweDMKQEAgLTM3Nyw2ICszODEsOSBAQAogLyogZXRoZXJuZXQg
c3Vic3lzdGVtIGNsb2NrIHJlZ2lzdGVyICovCiAjZGVmaW5lIEVUSFNZU19DTEtDRkcwCQkweDJj
CiAjZGVmaW5lIEVUSFNZU19UUkdNSUlfQ0xLX1NFTDM2Ml81CUJJVCgxMSkKKyNkZWZpbmUgRVRI
U1lTX1RSR01JSV9NVDc2MjFfTUFTSwkoQklUKDUpIHwgQklUKDYpKQorI2RlZmluZSBFVEhTWVNf
VFJHTUlJX01UNzYyMV9BUExMCUJJVCg2KQorI2RlZmluZSBFVEhTWVNfVFJHTUlJX01UNzYyMV9E
RFJfUExMCUJJVCg1KQogCiAvKiBldGhlcm5ldCByZXNldCBjb250cm9sIHJlZ2lzdGVyICovCiAj
ZGVmaW5lIEVUSFNZU19SU1RDVFJMCQkweDM0CkBAIC02MTYsNiArNjIzLDcgQEAgZW51bSBtdGtf
ZXRoX3BhdGggewogI2RlZmluZSBNVEtfU0hBUkVEX1NHTUlJCQlCSVQoNykKICNkZWZpbmUgTVRL
X0hXTFJPCQkJQklUKDgpCiAjZGVmaW5lIE1US19TSEFSRURfSU5UCQkJQklUKDkpCisjZGVmaW5l
IE1US19UUkdNSUlfTVQ3NjIxX0NMSwkJQklUKDEwKQogCiAvKiBTdXBwb3J0ZWQgcGF0aCBwcmVz
ZW50IG9uIFNvQ3MgKi8KICNkZWZpbmUgTVRLX1BBVEhfQklUKHgpICAgICAgICAgQklUKCh4KSAr
IDEwKQpAQCAtNjY3LDYgKzY3NSw5IEBAIGVudW0gbXRrX2V0aF9wYXRoIHsKIAogI2RlZmluZSBN
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
