Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1829E12943
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 May 2019 09:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KnHd5neU09vmCPyuA/q4Fgyy7k5GbBjyJcCAQUFcTg=; b=pIH5cyukW4iM31
	3o2HK84fBpZ7zZNXU5i8yycEYgjtN59A960m27yc2KUPcmDyT119Y2OUn40v7HIKvZnE/1jQbbfoq
	kzCreYc5/gWMh/h/hIgoAO0Yvpm44x1Z+vluPdMTJF0sdyv3QSkIq4Ox63j6aOOjlIQg8UuSu4tT/
	hCR/CfLR+naaPJlnzBpyG/TTOtxSucOQcMQAdhot+EEyK6KHvT7jJ0Qp4bxmJDye2tY07ryjhRpl0
	wgB83ZyqSuF2O1RaUYkfr1eV2xmTp2cPFUGz2QNfazJyhIiRSDn3FHFvQRlUi7WT58Q3IC8W3NSut
	4DGv62sKTSxAS8ls9l4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMT4E-0001Gu-0h; Fri, 03 May 2019 07:57:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMT3r-0000jF-Gd; Fri, 03 May 2019 07:56:56 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A43CE3586;
 Fri,  3 May 2019 09:56:49 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 65504862;
 Fri, 3 May 2019 09:56:48 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 QCA ath9k Development <ath9k-devel@qca.qualcomm.com>,
 Kalle Valo <kvalo@codeaurora.org>, Stanislaw Gruszka <sgruszka@redhat.com>,
 Helmut Schaa <helmut.schaa@googlemail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 07/10] net: wireless: support of_get_mac_address new
 ERR_PTR error
Date: Fri,  3 May 2019 09:56:04 +0200
Message-Id: <1556870168-26864-8-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556870168-26864-1-git-send-email-ynezz@true.cz>
References: <1556870168-26864-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_005652_400669_904AD003 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-mediatek@lists.infradead.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

VGhlcmUgd2FzIE5WTUVNIHN1cHBvcnQgYWRkZWQgdG8gb2ZfZ2V0X21hY19hZGRyZXNzLCBzbyBp
dCBjb3VsZCBub3cKcmV0dXJuIE5VTEwgYW5kIEVSUl9QVFIgZW5jb2RlZCBlcnJvciB2YWx1ZXMs
IHNvIHdlIG5lZWQgdG8gYWRqdXN0IGFsbApjdXJyZW50IHVzZXJzIG9mIG9mX2dldF9tYWNfYWRk
cmVzcyB0byB0aGlzIG5ldyBmYWN0LgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5l
enpAdHJ1ZS5jej4KLS0tCiBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoOWsvaW5pdC5jICAg
ICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9lZXByb20u
YyAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3JhbGluay9ydDJ4MDAvcnQyeDAwZGV2
LmMgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoOWsvaW5pdC5jIGIv
ZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDlrL2luaXQuYwppbmRleCA5ODE0MWI2Li44YmUy
ZGE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoOWsvaW5pdC5jCisr
KyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGg5ay9pbml0LmMKQEAgLTY0Miw3ICs2NDIs
NyBAQCBzdGF0aWMgaW50IGF0aDlrX29mX2luaXQoc3RydWN0IGF0aF9zb2Z0YyAqc2MpCiAJfQog
CiAJbWFjID0gb2ZfZ2V0X21hY19hZGRyZXNzKG5wKTsKLQlpZiAobWFjKQorCWlmICghSVNfRVJS
X09SX05VTEwobWFjKSkKIAkJZXRoZXJfYWRkcl9jb3B5KGNvbW1vbi0+bWFjYWRkciwgbWFjKTsK
IAogCXJldHVybiAwOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsv
bXQ3Ni9lZXByb20uYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvZWVwcm9t
LmMKaW5kZXggYTE1Mjk5MjBkLi43Y2IxNmJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJl
bGVzcy9tZWRpYXRlay9tdDc2L2VlcHJvbS5jCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21l
ZGlhdGVrL210NzYvZWVwcm9tLmMKQEAgLTk0LDcgKzk0LDcgQEAKIAkJcmV0dXJuOwogCiAJbWFj
ID0gb2ZfZ2V0X21hY19hZGRyZXNzKG5wKTsKLQlpZiAobWFjKQorCWlmICghSVNfRVJSX09SX05V
TEwobWFjKSkKIAkJbWVtY3B5KGRldi0+bWFjYWRkciwgbWFjLCBFVEhfQUxFTik7CiAjZW5kaWYK
IApkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvcmFsaW5rL3J0MngwMC9ydDJ4MDBk
ZXYuYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3JhbGluay9ydDJ4MDAvcnQyeDAwZGV2LmMKaW5k
ZXggMzU3YzA5NC4uZWY1MjQ2NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvcmFs
aW5rL3J0MngwMC9ydDJ4MDBkZXYuYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9yYWxpbmsv
cnQyeDAwL3J0MngwMGRldi5jCkBAIC0xMDA3LDcgKzEwMDcsNyBAQCB2b2lkIHJ0MngwMGxpYl9z
ZXRfbWFjX2FkZHJlc3Moc3RydWN0IHJ0MngwMF9kZXYgKnJ0MngwMGRldiwgdTggKmVlcHJvbV9t
YWNfYWRkcgogCWNvbnN0IGNoYXIgKm1hY19hZGRyOwogCiAJbWFjX2FkZHIgPSBvZl9nZXRfbWFj
X2FkZHJlc3MocnQyeDAwZGV2LT5kZXYtPm9mX25vZGUpOwotCWlmIChtYWNfYWRkcikKKwlpZiAo
IUlTX0VSUl9PUl9OVUxMKG1hY19hZGRyKSkKIAkJZXRoZXJfYWRkcl9jb3B5KGVlcHJvbV9tYWNf
YWRkciwgbWFjX2FkZHIpOwogCiAJaWYgKCFpc192YWxpZF9ldGhlcl9hZGRyKGVlcHJvbV9tYWNf
YWRkcikpIHsKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1tZWRpYXRlawo=
