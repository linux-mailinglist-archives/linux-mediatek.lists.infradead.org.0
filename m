Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C2A5AAE3
	for <lists+linux-mediatek@lfdr.de>; Sat, 29 Jun 2019 14:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U9MaOupL+NUdhZdOiu1rb8zeeN2MJv5zCma6asGiD4o=; b=ejlnaaRh9jtbWj
	2nBetwzB0oYfCPE4jaYhzan9xOaByjunR7WFEi7VvH2NnpqCn5oHQ2RPY6NUDtwJeZLh7sO+7lrXa
	HtbZvj0Pv2PatwkgjIh69qTDNtUPSFfHDN/zoHmzoJYIVnU82WTCs8XVmZmGn37jVuXXSSG0+Ok3F
	ibklXPuIJZXAMWfsqKnS4NsaKqtG8fRaQboqMPebi2cLS4PGz2+qLjcIu2CEwXU6QduX01I0kn3ib
	/s5Nu22pnF3bejboJt1Aw5GiEhXC277dacEQ9C8JJt9dXOxT4IzxjGae0Gqua7H85GxmrpADiup2l
	H+1GSTJxxnOGKm/q3cqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCPr-0008Uy-37; Sat, 29 Jun 2019 12:25:15 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCPn-0008Ue-Oa
 for linux-mediatek@lists.infradead.org; Sat, 29 Jun 2019 12:25:13 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id B87C45FE8C;
 Sat, 29 Jun 2019 14:25:10 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="aEffR9Jl"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 84F421CE691F;
 Sat, 29 Jun 2019 14:25:10 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 84F421CE691F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561811110;
 bh=Bu6E7/v0dN+ECBnl6aRpZhpeAg3S+W/5IW/5FrwWJIw=;
 h=From:To:Cc:Subject:Date:From;
 b=aEffR9JlqHiIo6LHHQKWWJmHDp7ZdKOWTyteHfr77OCeZZIhlA+nrzJ+XuokwILvR
 htzgQ0zUQgfdNUOMlKDFxkq6p0Ik1aPSMzjd8l1ftgQcJ07EtWNx0k5yk/8zhf8Eqk
 jOauos5ZEFrB1uenxLCF6/ai3m9frVJskIJeXyLMhirvNH2YfBenbpG1NAWEmASqBa
 LFOcaw30CHft9da3TEu4gj0fO4rA2pwAakO09Ug306FTzEiIr1Hu/PJS2mf4+CoFTa
 CBEIilfylObw3ok9aZQrJfx2Bb6DxrSibeJQNHZYRInnh8acA4C1yneM4MiCCNyYuC
 mDFbvn86S9ybg==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: sean.wang@mediatek.com, f.fainelli@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH] net: ethernet: mediatek: Allow non TRGMII mode with MT7621
 DDR2 devices
Date: Sat, 29 Jun 2019 14:24:51 +0200
Message-Id: <20190629122451.19578-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_052511_945978_90329521 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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

Tm8gcmVhc29uIHRvIGVycm9yIG91dCBvbiBhIE1UNzYyMSBkZXZpY2Ugd2l0aCBERFIyIG1lbW9y
eSB3aGVuIG5vbgpUUkdNSUkgbW9kZSBpcyBzZWxlY3RlZC4KT25seSBNVDc2MjEgRERSMiBjbG9j
ayBzZXR1cCBpcyBub3Qgc3VwcG9ydGVkIGZvciBUUkdNSUkgbW9kZS4KQnV0IG5vbiBUUkdNSUkg
bW9kZSBkb2Vzbid0IG5lZWQgYW55IHNwZWNpYWwgY2xvY2sgc2V0dXAuCgpTaWduZWQtb2ZmLWJ5
OiBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0LmNvbT4KLS0tCiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jIHwgNyArKysrKy0tCiAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jCmluZGV4IDA2NjcxMmYyZTk4NS4uYjIwYjNhNWEx
ZWJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3Nv
Yy5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKQEAg
LTEzOSw5ICsxMzksMTIgQEAgc3RhdGljIGludCBtdDc2MjFfZ21hYzBfcmdtaWlfYWRqdXN0KHN0
cnVjdCBtdGtfZXRoICpldGgsCiB7CiAJdTMyIHZhbDsKIAotCS8qIENoZWNrIEREUiBtZW1vcnkg
dHlwZS4gQ3VycmVudGx5IEREUjIgaXMgbm90IHN1cHBvcnRlZC4gKi8KKwkvKiBDaGVjayBERFIg
bWVtb3J5IHR5cGUuCisJICogQ3VycmVudGx5IFRSR01JSSBtb2RlIHdpdGggRERSMiBtZW1vcnkg
aXMgbm90IHN1cHBvcnRlZC4KKwkgKi8KIAlyZWdtYXBfcmVhZChldGgtPmV0aHN5cywgRVRIU1lT
X1NZU0NGRywgJnZhbCk7Ci0JaWYgKHZhbCAmIFNZU0NGR19EUkFNX1RZUEVfRERSMikgeworCWlm
IChpbnRlcmZhY2UgPT0gUEhZX0lOVEVSRkFDRV9NT0RFX1RSR01JSSAmJgorCSAgICB2YWwgJiBT
WVNDRkdfRFJBTV9UWVBFX0REUjIpIHsKIAkJZGV2X2VycihldGgtPmRldiwKIAkJCSJUUkdNSUkg
bW9kZSB3aXRoIEREUjIgbWVtb3J5IGlzIG5vdCBzdXBwb3J0ZWQhXG4iKTsKIAkJcmV0dXJuIC1F
T1BOT1RTVVBQOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVr
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1tZWRpYXRlawo=
