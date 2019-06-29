Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1B15AAE0
	for <lists+linux-mediatek@lfdr.de>; Sat, 29 Jun 2019 14:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mxugKpYuFbHnxy/Cb7zsvvAUj5ilwpdbx7qRxdIM5Gc=; b=qgk1KgZwlusVIi
	1jBd5SZdU+RdhRHOdYAJVJYcjmQtk0EhTSFSwPmVJCqJOuZ+1GcmJ5HCKBXrs09n58gl4/6Eg/wDz
	GzbptzM3D+Vip+U9IKk1FpIgnq6rF4jBlrCFva3qcZXNsd4WbxYRsejwtlnOXkALgb8CpzssUsk7T
	iq/EYxyR02b9yFib0Rc40hH7rEdzhOME1Jdk2AvK9K9RE7omFiOy24EVZ+/mqd6LhH6QqL3erlxRH
	n64Ypc+RTa69Vz5bItwNKqKTXOB/JBeprXmW8RIcMSl+tclRW61HtcxZoEyeqfG1m/BdRiDTTTSV7
	yIPpyNr7v/Pz/+aVftFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCPJ-0007F8-3w; Sat, 29 Jun 2019 12:24:41 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCPF-0007Cy-9r
 for linux-mediatek@lists.infradead.org; Sat, 29 Jun 2019 12:24:39 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id E3A885FE8C;
 Sat, 29 Jun 2019 14:24:32 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="navb87/B"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 9732F1CE6915;
 Sat, 29 Jun 2019 14:24:32 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 9732F1CE6915
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561811072;
 bh=S+aJCigz6fwF72k/RqnynZOytfAg53dL/P7AVyy/NFk=;
 h=From:To:Cc:Subject:Date:From;
 b=navb87/BGORIBmdir2smL2aIK21EEZq2HP+PltawpWQYfmzKTjVx+3QYR67t7AhRX
 L7UDL5GxjJt/Id8r6I6XZZ7rqhVh/KtetRwoi3HNDedY6/TeydYoZHgFcVew8CUOzh
 bWNsobgeyJ6htLWRdiQ1DpEJZX2VLrl8sOkNUTi6iIAzyJ6sEsWVkF+F6CI08eJ/1G
 IPKKdGoPV3wurvB4l4/UZG0x9/7RHUoMqw4dsYVSOAOJPC+LSLo3QWxBv93lg3uFXK
 97R3GO41An50a3+Z8CD1065fnJjMAr/Gvf8aFWyuKmAnc6/LdVyzrCwWmtkOFDSLvH
 gM+XEOYFWBMtw==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: sean.wang@mediatek.com, f.fainelli@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH] net: ethernet: mediatek: Fix overlapping capability bits.
Date: Sat, 29 Jun 2019 14:24:19 +0200
Message-Id: <20190629122419.19026-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_052437_659218_243E9EFA 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-mips@vger.kernel.org, frank-w@public-files.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Qm90aCBNVEtfVFJHTUlJX01UNzYyMV9DTEsgYW5kIE1US19QQVRIX0JJVCBhcmUgZGVmaW5lZCBh
cyBiaXQgMTAuCgpUaGlzIGNhdXNlcyBpc3N1ZXMgb24gbm9uLU1UNzYyMSBkZXZpY2VzIHdoaWNo
IGhhcyB0aGUKTVRLX1BBVEhfQklUKE1US19FVEhfUEFUSF9HTUFDMV9SR01JSSkgY2FwYWJpbGl0
eSBzZXQuClRoZSB3cm9uZyBUUkdNSUkgc2V0dXAgY29kZSBpcyBleGVjdXRlZC4KCk1vdmluZyB0
aGUgTVRLX1BBVEhfQklUIHRvIGJpdCAxMSBmaXhlcyB0aGUgaXNzdWUuCgpGaXhlczogOGVmYWE2
NTNhOGE1ICgibmV0OiBldGhlcm5ldDogbWVkaWF0ZWs6IEFkZCBNVDc2MjEgVFJHTUlJIG1vZGUK
c3VwcG9ydCIpClNpZ25lZC1vZmYtYnk6IFJlbsOpIHZhbiBEb3JzdCA8b3BlbnNvdXJjZUB2ZG9y
c3QuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmgg
fCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuaAppbmRleCA4NzZjZTY3
OTg3MDkuLjJjYjhhOTE1NzMxYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVk
aWF0ZWsvbXRrX2V0aF9zb2MuaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9t
dGtfZXRoX3NvYy5oCkBAIC02MjYsNyArNjI2LDcgQEAgZW51bSBtdGtfZXRoX3BhdGggewogI2Rl
ZmluZSBNVEtfVFJHTUlJX01UNzYyMV9DTEsJCUJJVCgxMCkKIAogLyogU3VwcG9ydGVkIHBhdGgg
cHJlc2VudCBvbiBTb0NzICovCi0jZGVmaW5lIE1US19QQVRIX0JJVCh4KSAgICAgICAgIEJJVCgo
eCkgKyAxMCkKKyNkZWZpbmUgTVRLX1BBVEhfQklUKHgpICAgICAgICAgQklUKCh4KSArIDExKQog
CiAjZGVmaW5lIE1US19HTUFDMV9SR01JSSBcCiAJKE1US19QQVRIX0JJVChNVEtfRVRIX1BBVEhf
R01BQzFfUkdNSUkpIHwgTVRLX1JHTUlJKQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0
CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
