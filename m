Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD35A50F3C
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 16:53:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMBlhxzuyoEUF8go6VbDLdYd8PcnSttGb2iejtTicL8=; b=rSy7KkSGO4lTyW
	6LYLRTacmcyFa2l+/Vlj8gN6v+x6QfdBBKMFq1UiXv2wXjfsqzosQ30fXeF0sFA8RE1p/9QrQ2Dtk
	qXGIYbEELDIkzjhbZUnEBEFSbBUeO51qgqEIa6MoAMZ0L8U792Q5TYKoHrY5Xx6NGb5rJPOBKAFz0
	oB/WdFhwDyTqBnbNWvP8yLy4xNVK2UZUUzr5763Eg6pSZM7sQHMAxxAJRsLzOAfrvDEDUQ/MG1icr
	HZl1kBdl+6GkIpKjExtuMopAU2FQYJOBWkBYUQWa494iUS13xF/I5XwtjSzgnOBT8B6BsVlXHiBQx
	gBsE/aeII/kajkLEmxZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQLd-0004fr-P9; Mon, 24 Jun 2019 14:53:33 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQLK-0004RZ-5E
 for linux-mediatek@lists.infradead.org; Mon, 24 Jun 2019 14:53:16 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 716AE5FAF1;
 Mon, 24 Jun 2019 16:53:13 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="GJtV9xSq"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 39F131CC6F02;
 Mon, 24 Jun 2019 16:53:13 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 39F131CC6F02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561387993;
 bh=ntWgRRFlEq74/wAxR4H5vmKgfUgKV2R2TR8EFS2knZA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GJtV9xSq5TWbzBPby9kcGLiQan+Oux2wVD+O029i8Azb1b0jjj+qO+2H3LwBsdIBS
 +9nEV06p6Hvs5pbIxf0Jxxr6YZ/0swVAt/76lVqTBmN2vfTzsteHJV1usROUCDShIz
 BvJqQSmb0pjB+V2vjH8yh1qgT8JfMnj//hcRJD9fPfjhPFnAwH9m1WfPDaJzxRbp77
 zDmGWhq3joBb/yP+UjwIgClM/5MrxOJcL2bQYLsiVYpsgPTObN/CZPnMO/VbCZTTB6
 Ud2S4d9MfGFRYQCqpxOEP5evtZCURTgXSUMpEMgtwoqPBGSi0Sappe/WdC2pfcIpRn
 uMr1yUu5nQNmQ==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: sean.wang@mediatek.com, f.fainelli@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Date: Mon, 24 Jun 2019 16:52:47 +0200
Message-Id: <20190624145251.4849-2-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624145251.4849-1-opensource@vdorst.com>
References: <20190624145251.4849-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_075314_386906_47749EC3 
X-CRM114-Status: GOOD (  15.66  )
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

Q29udmVydCBtdDc1MzAgdG8gUEhZTElOSyBBUEkKClNpZ25lZC1vZmYtYnk6IFJlbsOpIHZhbiBE
b3JzdCA8b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgotLS0KIGRyaXZlcnMvbmV0L2RzYS9tdDc1MzAu
YyB8IDIzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIGRyaXZlcnMv
bmV0L2RzYS9tdDc1MzAuaCB8ICAgOSArKwogMiBmaWxlcyBjaGFuZ2VkLCAxODcgaW5zZXJ0aW9u
cygrKSwgNTkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZHNhL210NzUz
MC5jIGIvZHJpdmVycy9uZXQvZHNhL210NzUzMC5jCmluZGV4IDMxODFlOTU1ODZkNi4uOWM1ZTRk
ZDAwODI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMKKysrIGIvZHJpdmVy
cy9uZXQvZHNhL210NzUzMC5jCkBAIC0xMyw3ICsxMyw3IEBACiAjaW5jbHVkZSA8bGludXgvb2Zf
bWRpby5oPgogI2luY2x1ZGUgPGxpbnV4L29mX25ldC5oPgogI2luY2x1ZGUgPGxpbnV4L29mX3Bs
YXRmb3JtLmg+Ci0jaW5jbHVkZSA8bGludXgvcGh5Lmg+CisjaW5jbHVkZSA8bGludXgvcGh5bGlu
ay5oPgogI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgogI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRv
ci9jb25zdW1lci5oPgogI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+CkBAIC02MzMsNjMgKzYzMyw2
IEBAIG10NzUzMF9nZXRfc3NldF9jb3VudChzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMsIGludCBwb3J0
LCBpbnQgc3NldCkKIAlyZXR1cm4gQVJSQVlfU0laRShtdDc1MzBfbWliKTsKIH0KIAotc3RhdGlj
IHZvaWQgbXQ3NTMwX2FkanVzdF9saW5rKHN0cnVjdCBkc2Ffc3dpdGNoICpkcywgaW50IHBvcnQs
Ci0JCQkgICAgICAgc3RydWN0IHBoeV9kZXZpY2UgKnBoeWRldikKLXsKLQlzdHJ1Y3QgbXQ3NTMw
X3ByaXYgKnByaXYgPSBkcy0+cHJpdjsKLQotCWlmIChwaHlfaXNfcHNldWRvX2ZpeGVkX2xpbmso
cGh5ZGV2KSkgewotCQlkZXZfZGJnKHByaXYtPmRldiwgInBoeS1tb2RlIGZvciBtYXN0ZXIgZGV2
aWNlID0gJXhcbiIsCi0JCQlwaHlkZXYtPmludGVyZmFjZSk7Ci0KLQkJLyogU2V0dXAgVFggY2ly
Y3VpdCBpbmNsdWluZyByZWxldmFudCBQQUQgYW5kIGRyaXZpbmcgKi8KLQkJbXQ3NTMwX3BhZF9j
bGtfc2V0dXAoZHMsIHBoeWRldi0+aW50ZXJmYWNlKTsKLQotCQlpZiAocHJpdi0+aWQgPT0gSURf
TVQ3NTMwKSB7Ci0JCQkvKiBTZXR1cCBSWCBjaXJjdWl0LCByZWxldmFudCBQQUQgYW5kIGRyaXZp
bmcgb24gdGhlCi0JCQkgKiBob3N0IHdoaWNoIG11c3QgYmUgcGxhY2VkIGFmdGVyIHRoZSBzZXR1
cCBvbiB0aGUKLQkJCSAqIGRldmljZSBzaWRlIGlzIGFsbCBmaW5pc2hlZC4KLQkJCSAqLwotCQkJ
bXQ3NjIzX3BhZF9jbGtfc2V0dXAoZHMpOwotCQl9Ci0JfSBlbHNlIHsKLQkJdTE2IGxjbF9hZHYg
PSAwLCBybXRfYWR2ID0gMDsKLQkJdTggZmxvd2N0cmw7Ci0JCXUzMiBtY3IgPSBQTUNSX1VTRVJQ
X0xJTksgfCBQTUNSX0ZPUkNFX01PREU7Ci0KLQkJc3dpdGNoIChwaHlkZXYtPnNwZWVkKSB7Ci0J
CWNhc2UgU1BFRURfMTAwMDoKLQkJCW1jciB8PSBQTUNSX0ZPUkNFX1NQRUVEXzEwMDA7Ci0JCQli
cmVhazsKLQkJY2FzZSBTUEVFRF8xMDA6Ci0JCQltY3IgfD0gUE1DUl9GT1JDRV9TUEVFRF8xMDA7
Ci0JCQlicmVhazsKLQkJfQotCi0JCWlmIChwaHlkZXYtPmxpbmspCi0JCQltY3IgfD0gUE1DUl9G
T1JDRV9MTks7Ci0KLQkJaWYgKHBoeWRldi0+ZHVwbGV4KSB7Ci0JCQltY3IgfD0gUE1DUl9GT1JD
RV9GRFg7Ci0KLQkJCWlmIChwaHlkZXYtPnBhdXNlKQotCQkJCXJtdF9hZHYgPSBMUEFfUEFVU0Vf
Q0FQOwotCQkJaWYgKHBoeWRldi0+YXN5bV9wYXVzZSkKLQkJCQlybXRfYWR2IHw9IExQQV9QQVVT
RV9BU1lNOwotCi0JCQlsY2xfYWR2ID0gbGlua21vZGVfYWR2X3RvX2xjbF9hZHZfdCgKLQkJCQlw
aHlkZXYtPmFkdmVydGlzaW5nKTsKLQkJCWZsb3djdHJsID0gbWlpX3Jlc29sdmVfZmxvd2N0cmxf
ZmR4KGxjbF9hZHYsIHJtdF9hZHYpOwotCi0JCQlpZiAoZmxvd2N0cmwgJiBGTE9XX0NUUkxfVFgp
Ci0JCQkJbWNyIHw9IFBNQ1JfVFhfRkNfRU47Ci0JCQlpZiAoZmxvd2N0cmwgJiBGTE9XX0NUUkxf
UlgpCi0JCQkJbWNyIHw9IFBNQ1JfUlhfRkNfRU47Ci0JCX0KLQkJbXQ3NTMwX3dyaXRlKHByaXYs
IE1UNzUzMF9QTUNSX1AocG9ydCksIG1jcik7Ci0JfQotfQotCiBzdGF0aWMgaW50CiBtdDc1MzBf
Y3B1X3BvcnRfZW5hYmxlKHN0cnVjdCBtdDc1MzBfcHJpdiAqcHJpdiwKIAkJICAgICAgIGludCBw
b3J0KQpAQCAtMTMyMyw2ICsxMjY2LDE3OCBAQCBtdDc1MzBfc2V0dXAoc3RydWN0IGRzYV9zd2l0
Y2ggKmRzKQogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZCBtdDc1MzBfcGh5bGlua19tYWNf
Y29uZmlnKHN0cnVjdCBkc2Ffc3dpdGNoICpkcywgaW50IHBvcnQsCisJCQkJICAgICAgdW5zaWdu
ZWQgaW50IG1vZGUsCisJCQkJICAgICAgY29uc3Qgc3RydWN0IHBoeWxpbmtfbGlua19zdGF0ZSAq
c3RhdGUpCit7CisJc3RydWN0IG10NzUzMF9wcml2ICpwcml2ID0gZHMtPnByaXY7CisJdTMyIG1j
ciA9IFBNQ1JfSUZHX1hNSVQoMSkgfCBQTUNSX01BQ19NT0RFIHwgUE1DUl9CQUNLT0ZGX0VOIHwK
KwkJICBQTUNSX0JBQ0tQUl9FTiB8IFBNQ1JfVFhfRU4gfCBQTUNSX1JYX0VOOworCisJc3dpdGNo
IChwb3J0KSB7CisJY2FzZSAwOiAvKiBJbnRlcm5hbCBwaHkgKi8KKwljYXNlIDE6CisJY2FzZSAy
OgorCWNhc2UgMzoKKwljYXNlIDQ6CisJCWlmIChzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9JTlRF
UkZBQ0VfTU9ERV9HTUlJKQorCQkJZ290byB1bnN1cHBvcnRlZDsKKwkJYnJlYWs7CisJLyogY2Fz
ZSA1OiBQb3J0IDUgaXMgbm90IHN1cHBvcnRlZCEgKi8KKwljYXNlIDY6IC8qIDFzdCBjcHUgcG9y
dCAqLworCQlpZiAoc3RhdGUtPmludGVyZmFjZSAhPSBQSFlfSU5URVJGQUNFX01PREVfUkdNSUkg
JiYKKwkJICAgIHN0YXRlLT5pbnRlcmZhY2UgIT0gUEhZX0lOVEVSRkFDRV9NT0RFX1RSR01JSSkK
KwkJCWdvdG8gdW5zdXBwb3J0ZWQ7CisKKwkJLyogU2V0dXAgVFggY2lyY3VpdCBpbmNsdWluZyBy
ZWxldmFudCBQQUQgYW5kIGRyaXZpbmcgKi8KKwkJbXQ3NTMwX3BhZF9jbGtfc2V0dXAoZHMsIHN0
YXRlLT5pbnRlcmZhY2UpOworCisJCWlmIChwcml2LT5pZCA9PSBJRF9NVDc1MzApIHsKKwkJCS8q
IFNldHVwIFJYIGNpcmN1aXQsIHJlbGV2YW50IFBBRCBhbmQgZHJpdmluZyBvbiB0aGUKKwkJCSAq
IGhvc3Qgd2hpY2ggbXVzdCBiZSBwbGFjZWQgYWZ0ZXIgdGhlIHNldHVwIG9uIHRoZQorCQkJICog
ZGV2aWNlIHNpZGUgaXMgYWxsIGZpbmlzaGVkLgorCQkJICovCisJCQltdDc2MjNfcGFkX2Nsa19z
ZXR1cChkcyk7CisJCX0KKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJZGV2X2Vycihkcy0+ZGV2LCAi
JXM6IHVuc3VwcG9ydGVkIHBvcnQ6ICVpXG4iLCBfX2Z1bmNfXywgcG9ydCk7CisJCXJldHVybjsK
Kwl9CisKKwlpZiAoIXN0YXRlLT5hbl9lbmFibGVkIHx8IG1vZGUgPT0gTUxPX0FOX0ZJWEVEKSB7
CisJCW1jciB8PSBQTUNSX0ZPUkNFX01PREU7CisKKwkJaWYgKHN0YXRlLT5zcGVlZCA9PSBTUEVF
RF8xMDAwKQorCQkJbWNyIHw9IFBNQ1JfRk9SQ0VfU1BFRURfMTAwMDsKKwkJaWYgKHN0YXRlLT5z
cGVlZCA9PSBTUEVFRF8xMDApCisJCQltY3IgfD0gUE1DUl9GT1JDRV9TUEVFRF8xMDA7CisJCWlm
IChzdGF0ZS0+ZHVwbGV4ID09IERVUExFWF9GVUxMKQorCQkJbWNyIHw9IFBNQ1JfRk9SQ0VfRkRY
OworCQlpZiAoc3RhdGUtPmxpbmsgfHwgbW9kZSA9PSBNTE9fQU5fRklYRUQpCisJCQltY3IgfD0g
UE1DUl9GT1JDRV9MTks7CisJCWlmIChzdGF0ZS0+cGF1c2UgfHwgcGh5bGlua190ZXN0KHN0YXRl
LT5hZHZlcnRpc2luZywgUGF1c2UpKQorCQkJbWNyIHw9IFBNQ1JfVFhfRkNfRU4gfCBQTUNSX1JY
X0ZDX0VOOworCQlpZiAoc3RhdGUtPnBhdXNlICYgTUxPX1BBVVNFX1RYKQorCQkJbWNyIHw9IFBN
Q1JfVFhfRkNfRU47CisJCWlmIChzdGF0ZS0+cGF1c2UgJiBNTE9fUEFVU0VfUlgpCisJCQltY3Ig
fD0gUE1DUl9SWF9GQ19FTjsKKwl9CisKKwltdDc1MzBfd3JpdGUocHJpdiwgTVQ3NTMwX1BNQ1Jf
UChwb3J0KSwgbWNyKTsKKworCXJldHVybjsKKwordW5zdXBwb3J0ZWQ6CisJZGV2X2Vycihkcy0+
ZGV2LCAiJXM6IFAlZDogVW5zdXBwb3J0ZWQgcGh5X2ludGVyZmFjZSBtb2RlOiAlZCAoJXMpXG4i
LAorCQlfX2Z1bmNfXywgcG9ydCwgc3RhdGUtPmludGVyZmFjZSwgcGh5X21vZGVzKHN0YXRlLT5p
bnRlcmZhY2UpKTsKK30KKworc3RhdGljIHZvaWQgbXQ3NTMwX3BoeWxpbmtfbWFjX2xpbmtfZG93
bihzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMsIGludCBwb3J0LAorCQkJCQkgdW5zaWduZWQgaW50IG1v
ZGUsCisJCQkJCSBwaHlfaW50ZXJmYWNlX3QgaW50ZXJmYWNlKQoreworCS8qIERvIG5vdGhpbmcg
Ki8KK30KKworc3RhdGljIHZvaWQgbXQ3NTMwX3BoeWxpbmtfbWFjX2xpbmtfdXAoc3RydWN0IGRz
YV9zd2l0Y2ggKmRzLCBpbnQgcG9ydCwKKwkJCQkgICAgICAgdW5zaWduZWQgaW50IG1vZGUsCisJ
CQkJICAgICAgIHBoeV9pbnRlcmZhY2VfdCBpbnRlcmZhY2UsCisJCQkJICAgICAgIHN0cnVjdCBw
aHlfZGV2aWNlICpwaHlkZXYpCit7CisJLyogRG8gbm90aGluZyAqLworfQorCitzdGF0aWMgdm9p
ZCBtdDc1MzBfcGh5bGlua192YWxpZGF0ZShzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMsIGludCBwb3J0
LAorCQkJCSAgICB1bnNpZ25lZCBsb25nICpzdXBwb3J0ZWQsCisJCQkJICAgIHN0cnVjdCBwaHls
aW5rX2xpbmtfc3RhdGUgKnN0YXRlKQoreworCV9fRVRIVE9PTF9ERUNMQVJFX0xJTktfTU9ERV9N
QVNLKG1hc2spID0geyAwLCB9OworCisJc3dpdGNoIChwb3J0KSB7CisJY2FzZSAwOiAvKiBJbnRl
cm5hbCBwaHkgKi8KKwljYXNlIDE6CisJY2FzZSAyOgorCWNhc2UgMzoKKwljYXNlIDQ6CisJCWlm
IChzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9JTlRFUkZBQ0VfTU9ERV9OQSAmJgorCQkgICAgc3Rh
dGUtPmludGVyZmFjZSAhPSBQSFlfSU5URVJGQUNFX01PREVfR01JSSkKKwkJCWdvdG8gdW5zdXBw
b3J0ZWQ7CisJCWJyZWFrOworCS8qIGNhc2UgNTogUG9ydCA1IG5vdCBzdXBwb3J0ZWQhICovCisJ
Y2FzZSA2OiAvKiAxc3QgY3B1IHBvcnQgKi8KKwkJaWYgKHN0YXRlLT5pbnRlcmZhY2UgIT0gUEhZ
X0lOVEVSRkFDRV9NT0RFX1JHTUlJICYmCisJCSAgICBzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9J
TlRFUkZBQ0VfTU9ERV9UUkdNSUkpCisJCQlnb3RvIHVuc3VwcG9ydGVkOworCQlicmVhazsKKwlk
ZWZhdWx0OgorCQlsaW5rbW9kZV96ZXJvKHN1cHBvcnRlZCk7CisJCWRldl9lcnIoZHMtPmRldiwg
IiVzOiB1bnN1cHBvcnRlZCBwb3J0OiAlaVxuIiwgX19mdW5jX18sIHBvcnQpOworCQlyZXR1cm47
CisJfQorCisJcGh5bGlua19zZXQobWFzaywgQXV0b25lZyk7CisJcGh5bGlua19zZXQobWFzaywg
UGF1c2UpOworCXBoeWxpbmtfc2V0KG1hc2ssIEFzeW1fUGF1c2UpOworCXBoeWxpbmtfc2V0KG1h
c2ssIE1JSSk7CisKKwlwaHlsaW5rX3NldChtYXNrLCAxMGJhc2VUX0hhbGYpOworCXBoeWxpbmtf
c2V0KG1hc2ssIDEwYmFzZVRfRnVsbCk7CisJcGh5bGlua19zZXQobWFzaywgMTAwYmFzZVRfSGFs
Zik7CisJcGh5bGlua19zZXQobWFzaywgMTAwYmFzZVRfRnVsbCk7CisJcGh5bGlua19zZXQobWFz
aywgMTAwMGJhc2VUX0Z1bGwpOworCXBoeWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlVF9IYWxmKTsK
KworCWxpbmttb2RlX2FuZChzdXBwb3J0ZWQsIHN1cHBvcnRlZCwgbWFzayk7CisJbGlua21vZGVf
YW5kKHN0YXRlLT5hZHZlcnRpc2luZywgc3RhdGUtPmFkdmVydGlzaW5nLCBtYXNrKTsKKwlyZXR1
cm47CisKK3Vuc3VwcG9ydGVkOgorCWxpbmttb2RlX3plcm8oc3VwcG9ydGVkKTsKKwlkZXZfZXJy
KGRzLT5kZXYsICIlczogdW5zdXBwb3J0ZWQgaW50ZXJmYWNlIG1vZGU6IFsweCV4XSAlc1xuIiwK
KwkJX19mdW5jX18sIHN0YXRlLT5pbnRlcmZhY2UsIHBoeV9tb2RlcyhzdGF0ZS0+aW50ZXJmYWNl
KSk7Cit9CisKK3N0YXRpYyBpbnQKK210NzUzMF9waHlsaW5rX21hY19saW5rX3N0YXRlKHN0cnVj
dCBkc2Ffc3dpdGNoICpkcywgaW50IHBvcnQsCisJCQkgICAgICBzdHJ1Y3QgcGh5bGlua19saW5r
X3N0YXRlICpzdGF0ZSkKK3sKKwlzdHJ1Y3QgbXQ3NTMwX3ByaXYgKnByaXYgPSBkcy0+cHJpdjsK
Kwl1MzIgcG1zcjsKKworCWlmIChwb3J0IDwgMCB8fCBwb3J0ID49IE1UNzUzMF9OVU1fUE9SVFMp
CisJCXJldHVybiAtRUlOVkFMOworCisJcG1zciA9IG10NzUzMF9yZWFkKHByaXYsIE1UNzUzMF9Q
TVNSX1AocG9ydCkpOworCisJc3RhdGUtPmxpbmsgPSAocG1zciAmIFBNU1JfTElOSyk7CisJc3Rh
dGUtPmFuX2NvbXBsZXRlID0gc3RhdGUtPmxpbms7CisJc3RhdGUtPmR1cGxleCA9IChwbXNyICYg
UE1TUl9EUFgpID4+IDE7CisKKwlzd2l0Y2ggKHBtc3IgJiAoUE1TUl9TUEVFRF8xMDAwIHwgUE1T
Ul9TUEVFRF8xMDApKSB7CisJY2FzZSAwOgorCQlzdGF0ZS0+c3BlZWQgPSBTUEVFRF8xMDsKKwkJ
YnJlYWs7CisJY2FzZSBQTVNSX1NQRUVEXzEwMDoKKwkJc3RhdGUtPnNwZWVkID0gU1BFRURfMTAw
OworCQlicmVhazsKKwljYXNlIFBNU1JfU1BFRURfMTAwMDoKKwkJc3RhdGUtPnNwZWVkID0gU1BF
RURfMTAwMDsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJc3RhdGUtPnNwZWVkID0gU1BFRURfVU5L
Tk9XTjsKKwkJYnJlYWs7CisJfQorCisJc3RhdGUtPnBhdXNlID0gMDsKKwlpZiAocG1zciAmIFBN
U1JfUlhfRkMpCisJCXN0YXRlLT5wYXVzZSB8PSBNTE9fUEFVU0VfUlg7CisJaWYgKHBtc3IgJiBQ
TVNSX1RYX0ZDKQorCQlzdGF0ZS0+cGF1c2UgfD0gTUxPX1BBVVNFX1RYOworCisJcmV0dXJuIDE7
Cit9CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHNhX3N3aXRjaF9vcHMgbXQ3NTMwX3N3aXRjaF9v
cHMgPSB7CiAJLmdldF90YWdfcHJvdG9jb2wJPSBtdGtfZ2V0X3RhZ19wcm90b2NvbCwKIAkuc2V0
dXAJCQk9IG10NzUzMF9zZXR1cCwKQEAgLTEzMzEsNyArMTQ0Niw2IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZHNhX3N3aXRjaF9vcHMgbXQ3NTMwX3N3aXRjaF9vcHMgPSB7CiAJLnBoeV93cml0ZQkJ
PSBtdDc1MzBfcGh5X3dyaXRlLAogCS5nZXRfZXRodG9vbF9zdGF0cwk9IG10NzUzMF9nZXRfZXRo
dG9vbF9zdGF0cywKIAkuZ2V0X3NzZXRfY291bnQJCT0gbXQ3NTMwX2dldF9zc2V0X2NvdW50LAot
CS5hZGp1c3RfbGluawkJPSBtdDc1MzBfYWRqdXN0X2xpbmssCiAJLnBvcnRfZW5hYmxlCQk9IG10
NzUzMF9wb3J0X2VuYWJsZSwKIAkucG9ydF9kaXNhYmxlCQk9IG10NzUzMF9wb3J0X2Rpc2FibGUs
CiAJLnBvcnRfc3RwX3N0YXRlX3NldAk9IG10NzUzMF9zdHBfc3RhdGVfc2V0LApAQCAtMTM0NCw2
ICsxNDU4LDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHNhX3N3aXRjaF9vcHMgbXQ3NTMwX3N3
aXRjaF9vcHMgPSB7CiAJLnBvcnRfdmxhbl9wcmVwYXJlCT0gbXQ3NTMwX3BvcnRfdmxhbl9wcmVw
YXJlLAogCS5wb3J0X3ZsYW5fYWRkCQk9IG10NzUzMF9wb3J0X3ZsYW5fYWRkLAogCS5wb3J0X3Zs
YW5fZGVsCQk9IG10NzUzMF9wb3J0X3ZsYW5fZGVsLAorCS5waHlsaW5rX3ZhbGlkYXRlCT0gbXQ3
NTMwX3BoeWxpbmtfdmFsaWRhdGUsCisJLnBoeWxpbmtfbWFjX2xpbmtfc3RhdGUgPSBtdDc1MzBf
cGh5bGlua19tYWNfbGlua19zdGF0ZSwKKwkucGh5bGlua19tYWNfY29uZmlnCT0gbXQ3NTMwX3Bo
eWxpbmtfbWFjX2NvbmZpZywKKwkucGh5bGlua19tYWNfbGlua19kb3duCT0gbXQ3NTMwX3BoeWxp
bmtfbWFjX2xpbmtfZG93biwKKwkucGh5bGlua19tYWNfbGlua191cAk9IG10NzUzMF9waHlsaW5r
X21hY19saW5rX3VwLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbXQ3
NTMwX29mX21hdGNoW10gPSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmgg
Yi9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmgKaW5kZXggYmZhYzkwZjQ4MTAyLi40MWQ5YTEzMmFj
NzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaAorKysgYi9kcml2ZXJzL25l
dC9kc2EvbXQ3NTMwLmgKQEAgLTE5OCw2ICsxOTgsNyBAQCBlbnVtIG10NzUzMF92bGFuX3BvcnRf
YXR0ciB7CiAjZGVmaW5lICBQTUNSX0ZPUkNFX1NQRUVEXzEwMAkJQklUKDIpCiAjZGVmaW5lICBQ
TUNSX0ZPUkNFX0ZEWAkJCUJJVCgxKQogI2RlZmluZSAgUE1DUl9GT1JDRV9MTksJCQlCSVQoMCkK
KyNkZWZpbmUgIFBNQ1JfRk9SQ0VfTE5LX0RPV04JCVBNQ1JfRk9SQ0VfTU9ERQogI2RlZmluZSAg
UE1DUl9DT01NT05fTElOSwkJKFBNQ1JfSUZHX1hNSVQoMSkgfCBQTUNSX01BQ19NT0RFIHwgXAog
CQkJCQkgUE1DUl9CQUNLT0ZGX0VOIHwgUE1DUl9CQUNLUFJfRU4gfCBcCiAJCQkJCSBQTUNSX1RY
X0VOIHwgUE1DUl9SWF9FTiB8IFwKQEAgLTIxOCw2ICsyMTksMTQgQEAgZW51bSBtdDc1MzBfdmxh
bl9wb3J0X2F0dHIgewogCQkJCQkgUE1DUl9UWF9GQ19FTiB8IFBNQ1JfUlhfRkNfRU4pCiAKICNk
ZWZpbmUgTVQ3NTMwX1BNU1JfUCh4KQkJKDB4MzAwOCArICh4KSAqIDB4MTAwKQorI2RlZmluZSAg
UE1TUl9FRUUxRwkJCUJJVCg3KQorI2RlZmluZSAgUE1TUl9FRUUxMDBNCQkJQklUKDYpCisjZGVm
aW5lICBQTVNSX1JYX0ZDCQkJQklUKDUpCisjZGVmaW5lICBQTVNSX1RYX0ZDCQkJQklUKDQpCisj
ZGVmaW5lICBQTVNSX1NQRUVEXzEwMDAJCUJJVCgzKQorI2RlZmluZSAgUE1TUl9TUEVFRF8xMDAJ
CQlCSVQoMikKKyNkZWZpbmUgIFBNU1JfRFBYCQkJQklUKDEpCisjZGVmaW5lICBQTVNSX0xJTksJ
CQlCSVQoMCkKIAogLyogUmVnaXN0ZXIgZm9yIE1JQiAqLwogI2RlZmluZSBNVDc1MzBfUE9SVF9N
SUJfQ09VTlRFUih4KQkoMHg0MDAwICsgKHgpICogMHgxMDApCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBt
YWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
