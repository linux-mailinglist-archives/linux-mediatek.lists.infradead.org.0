Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B34F54D546
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Jun 2019 19:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8ItbXMJfRTwaRG806f+XZJxit35OI/lmLQJcQWHuaY=; b=NPeCXPUPzIstiS
	xg8Hm1cg7TeJ1esXBKCkygqj/77LUuRCYmN1bxKjA0ciYzpKj/+0bN6g+ZijEBF3meRZ2vOIsznfl
	hbOVXlrD9NXjFTn/+rOjmVog3B5o9rp/65rfpHd9HdIv/5AAmyKF3JetBr97NKjWS9bMHkR0FQE1i
	KpHsUzEpnRrOGdcyMNosLOH0gxMAQHKk0qrdY1gI22MN2Up4Dg37ErripwPuO/QH7Tv/fG5zGbiZm
	2Bm8vBEG+igIIsDl82NsQjYBvXucjv1RTuGzWNbtGVWeOorArdYlR9cHmkgIL9aVo8uM6QwIS0A9p
	RxC+9xONCRK088bUSXwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0vb-0006vD-Va; Thu, 20 Jun 2019 17:32:52 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0vX-0006td-LY
 for linux-mediatek@lists.infradead.org; Thu, 20 Jun 2019 17:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561051945;
 bh=b/EYg7frIiOEmVO+jC5QgzH+HdXi9h+6Yrw5OYnfDig=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=Gu7nyI4deTxSMkboNCOlV0EYjr3oPehMyPRdOXDKzcN8QkXUXKPUmRd6EX2nQ20l0
 WMy7LHs8Bqw+Y3C48WSSoiEnVCkqCFAjqu3IiScIJvbO48s+cjaSvZMOiD7ImPADKO
 WAWt4Ylf+6RPN8R8k/t4eloIF3U9xzsV4y6x8SUU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.218.201.146] ([88.128.81.70]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MhAAr-1hzgXg1GXR-00MMgv; Thu, 20
 Jun 2019 19:32:25 +0200
Date: Thu, 20 Jun 2019 19:32:19 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20190620122155.32078-3-opensource@vdorst.com>
References: <20190620122155.32078-1-opensource@vdorst.com>
 <20190620122155.32078-3-opensource@vdorst.com>
MIME-Version: 1.0
Subject: Re: [PATCH v2 net-next 2/2] net: dsa: mt7530: Add MT7621 TRGMII mode
 support
To: =?ISO-8859-1?Q?Ren=E9_van_Dorst?= <opensource@vdorst.com>,
 sean.wang@mediatek.com, f.fainelli@gmail.com, davem@davemloft.net,
 matthias.bgg@gmail.com, andrew@lunn.ch, vivien.didelot@gmail.com
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <E48021B2-3B82-4630-A9D1-290479988806@public-files.de>
X-Provags-ID: V03:K1:6VMlnX0wvZhaTY+S0ue9uKAasb97bCR4UAmPo4NG4svsppHAHCd
 Dx3o7Giw8H2uGj4oh6BqbOU30jlj7Jw6fhlHvsfaQNtR+0FQRgLzrdjjGWon/Z2VKVyiqMT
 6ip/DMzMbQTXACvHiAZyGXhUOfgnDLwX2dwnO8IGmzKlY8LY9c5EnsVbB1iSHZKL7viJDh6
 4tMJu0uhKNbkGhkK9N+Fw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qnjLQTpK8m4=:4zXdyWggRS2y6JkYb8I8+c
 y7SdBphUSX7GIXnlTBAGdfkXL17yqbiPMVNF+wfSMISe8tv3Kw+5A8QUGC//PVbLE+RuLeQ1o
 QFixWkMGCpJ2EXpNThrnwJWLtq+FYWSjYY8sphsE0ZuMj9cEnhjc5BRc9h9/r3VGb/IvlcaFt
 ivmzCDy6F8+n04iwJDG4frTWWIZKiGZeYmsCluHYNqcYgeYWF6m2+NArFy+4TqmSnoeeasyO3
 Occi1esioOwh71QK01at9jJsWUlIfkkmMi3KG0TAzlxtdHT1URZWfDZNCxNpkuxfwnB2+VWTN
 iNbaA7homH5KKQym5DIGx2345boXhPgmX2aReep7YF1F3koLAmeBG9CLPlvkiSrTIzmntZHkn
 wFvbVUB4Oqgv+hBrCaiNMJnT0q0wxe+q2RApI9tXrGVkjgDsH2Xmkf3g8At/7fDlWTsgw1PPs
 FapN+qk4aVgQGMp9DvRKWNPz/ImcnMVEPpe4UxNsv/zcOO4FwV2d23xLf+1ySyB/xymuyDv1c
 6+dZIEYxsacHPwdQE56XH7LHBH8vtCQxexztqbBVVVcAgXS0XBR6n/OwcWJyFJ0aRENV5rGr9
 wUBYZggIFLbv7b1wkLd//b0xhITRiuw1tzzEkISVm/uDyjNOSTYN7JMDHOcA/9mTNdfhwa+yi
 z1FXEDMebJD8k3fljeugk5pSuUTPHziCNthXNXuVnga2KmHzQQXkpjX0O0IfJ9O1a/wIHQS3+
 0xtuEfe5su5UYE0d64Gr+XXoJLd7xcL9rQzHbq/zdglGzVeyxLyRUiazQ/xxctFpnUcv8VKw/
 kzcqH0GqVZjS77XVTj3zAL+KxxywfW5XWC3WqhXYvdsczsoKMAaJ2xOUSQbUQK/gGZ+c+RUeF
 649mLTV1PE/gCBovx0JaejSolsuFCtqGGA8lfVFYS2AKUvo0ubZKJS2w0ZMznGd5WcFyoxZnI
 HkkCq/3O65r3ZgVQ1J3+gxWxnTWwM5IWEhw4gHsVtMIjZXINP3twW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_103248_047779_FA18A643 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: frank-w@public-files.de
Cc: netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-mips@vger.kernel.org, john@phrozen.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

VGVzdGVkIG9uIEJhbmFuYXBpIFIyIChtdDc2MjMpIHdpdGggNS4yLXJjNSArIG5ldC1uZXh0CgpU
ZXN0ZWQtYnk6IEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgoKQW0g
MjAuIEp1bmkgMjAxOSAxNDoyMTo1NSBNRVNaIHNjaHJpZWIgIlJlbsOpIHZhbiBEb3JzdCIgPG9w
ZW5zb3VyY2VAdmRvcnN0LmNvbT46Cj5UaGlzIHBhdGNoIGFkZCBzdXBwb3J0IFRSR01JSSBtb2Rl
IGZvciBNVDc2MjEgaW50ZXJuYWwgTVQ3NTMwIHN3aXRjaC4KPk1UNzYyMSBUUkdNSUkgaGFzIG9u
bHkgb25lIGZpeCBzcGVlZCBtb2RlIG9mIDEyMDBNQml0Lgo+Cj5BbHNvIGFkZGluZyBzdXBwb3J0
IGZvciBtdDc1MzAgMjVNSHogYW5kIDQwTUh6IGNyeXN0YWwgY2xvY2tzb3VyY2UuCj5WYWx1ZXMg
YXJlIGJhc2VkIG9uIEJhbmFuYSBQaSBSMiBic3AgWzFdLgo+Cj5Eb24ndCBjaGFuZ2UgTVQ3NjIz
IHJlZ2lzdGVycyBvbiBhIE1UNzYyMSBkZXZpY2UuCj4KPlsxXQo+aHR0cHM6Ly9naXRodWIuY29t
L0JQSS1TSU5PVk9JUC9CUEktUjItYnNwL2Jsb2IvbWFzdGVyL2xpbnV4LW10L2RyaXZlcnMvbmV0
L2V0aGVybmV0L21lZGlhdGVrL2dzd19tdDc2MjMuYyNMNzY5Cj4KPlNpZ25lZC1vZmYtYnk6IFJl
bsOpIHZhbiBEb3JzdCA8b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgo+LS0tCj4gZHJpdmVycy9uZXQv
ZHNhL210NzUzMC5jIHwgNDYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LQo+IGRyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaCB8ICA0ICsrKysKPiAyIGZpbGVzIGNoYW5nZWQs
IDQwIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZHNhL210NzUzMC5jIGIvZHJpdmVycy9uZXQvZHNhL210NzUzMC5jCj5pbmRleCBjN2Qz
NTJkYTU0NDguLjMxODFlOTU1ODZkNiAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvbmV0L2RzYS9tdDc1
MzAuYwo+KysrIGIvZHJpdmVycy9uZXQvZHNhL210NzUzMC5jCj5AQCAtNDI4LDI0ICs0MjgsNDgg
QEAgc3RhdGljIGludAo+IG10NzUzMF9wYWRfY2xrX3NldHVwKHN0cnVjdCBkc2Ffc3dpdGNoICpk
cywgaW50IG1vZGUpCj4gewo+IAlzdHJ1Y3QgbXQ3NTMwX3ByaXYgKnByaXYgPSBkcy0+cHJpdjsK
Pi0JdTMyIG5jcG8xLCBzc2NfZGVsdGEsIHRyZ2ludCwgaTsKPisJdTMyIG5jcG8xLCBzc2NfZGVs
dGEsIHRyZ2ludCwgaSwgeHRhbDsKPisKPisJeHRhbCA9IG10NzUzMF9yZWFkKHByaXYsIE1UNzUz
MF9NSFdUUkFQKSAmIEhXVFJBUF9YVEFMX01BU0s7Cj4rCj4rCWlmICh4dGFsID09IEhXVFJBUF9Y
VEFMXzIwTUhaKSB7Cj4rCQlkZXZfZXJyKHByaXYtPmRldiwKPisJCQkiJXM6IE1UNzUzMCB3aXRo
IGEgMjBNSHogWFRBTCBpcyBub3Qgc3VwcG9ydGVkIVxuIiwKPisJCQlfX2Z1bmNfXyk7Cj4rCQly
ZXR1cm4gLUVJTlZBTDsKPisJfQo+IAo+IAlzd2l0Y2ggKG1vZGUpIHsKPiAJY2FzZSBQSFlfSU5U
RVJGQUNFX01PREVfUkdNSUk6Cj4gCQl0cmdpbnQgPSAwOwo+KwkJLyogUExMIGZyZXF1ZW5jeTog
MTI1TUh6ICovCj4gCQluY3BvMSA9IDB4MGM4MDsKPi0JCXNzY19kZWx0YSA9IDB4ODc7Cj4gCQli
cmVhazsKPiAJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfVFJHTUlJOgo+IAkJdHJnaW50ID0gMTsK
Pi0JCW5jcG8xID0gMHgxNDAwOwo+LQkJc3NjX2RlbHRhID0gMHg1NzsKPisJCWlmIChwcml2LT5p
ZCA9PSBJRF9NVDc2MjEpIHsKPisJCQkvKiBQTEwgZnJlcXVlbmN5OiAxNTBNSHo6IDEuMkdCaXQg
Ki8KPisJCQlpZiAoeHRhbCA9PSBIV1RSQVBfWFRBTF80ME1IWikKPisJCQkJbmNwbzEgPSAweDA3
ODA7Cj4rCQkJaWYgKHh0YWwgPT0gSFdUUkFQX1hUQUxfMjVNSFopCj4rCQkJCW5jcG8xID0gMHgw
YTAwOwo+KwkJfSBlbHNlIHsgLyogUExMIGZyZXF1ZW5jeTogMjUwTUh6OiAyLjBHYml0ICovCj4r
CQkJaWYgKHh0YWwgPT0gSFdUUkFQX1hUQUxfNDBNSFopCj4rCQkJCW5jcG8xID0gMHgwYzgwOwo+
KwkJCWlmICh4dGFsID09IEhXVFJBUF9YVEFMXzI1TUhaKQo+KwkJCQluY3BvMSA9IDB4MTQwMDsK
PisJCX0KPiAJCWJyZWFrOwo+IAlkZWZhdWx0Ogo+IAkJZGV2X2Vycihwcml2LT5kZXYsICJ4TUlJ
IG1vZGUgJWQgbm90IHN1cHBvcnRlZFxuIiwgbW9kZSk7Cj4gCQlyZXR1cm4gLUVJTlZBTDsKPiAJ
fQo+IAo+KwlpZiAoeHRhbCA9PSBIV1RSQVBfWFRBTF8yNU1IWikKPisJCXNzY19kZWx0YSA9IDB4
NTc7Cj4rCWVsc2UKPisJCXNzY19kZWx0YSA9IDB4ODc7Cj4rCj4gCW10NzUzMF9ybXcocHJpdiwg
TVQ3NTMwX1A2RUNSLCBQNl9JTlRGX01PREVfTUFTSywKPiAJCSAgIFA2X0lOVEZfTU9ERSh0cmdp
bnQpKTsKPiAKPkBAIC01MDcsNyArNTMxLDkgQEAgbXQ3NTMwX3BhZF9jbGtfc2V0dXAoc3RydWN0
IGRzYV9zd2l0Y2ggKmRzLCBpbnQKPm1vZGUpCj4gCQkJbXQ3NTMwX3Jtdyhwcml2LCBNVDc1MzBf
VFJHTUlJX1JEKGkpLAo+IAkJCQkgICBSRF9UQVBfTUFTSywgUkRfVEFQKDE2KSk7Cj4gCWVsc2UK
Pi0JCW10NzYyM190cmdtaWlfc2V0KHByaXYsIEdTV19JTlRGX01PREUsIElOVEZfTU9ERV9UUkdN
SUkpOwo+KwkJaWYgKHByaXYtPmlkICE9IElEX01UNzYyMSkKPisJCQltdDc2MjNfdHJnbWlpX3Nl
dChwcml2LCBHU1dfSU5URl9NT0RFLAo+KwkJCQkJICBJTlRGX01PREVfVFJHTUlJKTsKPiAKPiAJ
cmV0dXJuIDA7Cj4gfQo+QEAgLTYxMywxMyArNjM5LDEzIEBAIHN0YXRpYyB2b2lkIG10NzUzMF9h
ZGp1c3RfbGluayhzdHJ1Y3QgZHNhX3N3aXRjaAo+KmRzLCBpbnQgcG9ydCwKPiAJc3RydWN0IG10
NzUzMF9wcml2ICpwcml2ID0gZHMtPnByaXY7Cj4gCj4gCWlmIChwaHlfaXNfcHNldWRvX2ZpeGVk
X2xpbmsocGh5ZGV2KSkgewo+LQkJaWYgKHByaXYtPmlkID09IElEX01UNzUzMCkgewo+LQkJCWRl
dl9kYmcocHJpdi0+ZGV2LCAicGh5LW1vZGUgZm9yIG1hc3RlciBkZXZpY2UgPSAleFxuIiwKPi0J
CQkJcGh5ZGV2LT5pbnRlcmZhY2UpOwo+KwkJZGV2X2RiZyhwcml2LT5kZXYsICJwaHktbW9kZSBm
b3IgbWFzdGVyIGRldmljZSA9ICV4XG4iLAo+KwkJCXBoeWRldi0+aW50ZXJmYWNlKTsKPiAKPi0J
CQkvKiBTZXR1cCBUWCBjaXJjdWl0IGluY2x1aW5nIHJlbGV2YW50IFBBRCBhbmQgZHJpdmluZyAq
Lwo+LQkJCW10NzUzMF9wYWRfY2xrX3NldHVwKGRzLCBwaHlkZXYtPmludGVyZmFjZSk7Cj4rCQkv
KiBTZXR1cCBUWCBjaXJjdWl0IGluY2x1aW5nIHJlbGV2YW50IFBBRCBhbmQgZHJpdmluZyAqLwo+
KwkJbXQ3NTMwX3BhZF9jbGtfc2V0dXAoZHMsIHBoeWRldi0+aW50ZXJmYWNlKTsKPiAKPisJCWlm
IChwcml2LT5pZCA9PSBJRF9NVDc1MzApIHsKPiAJCQkvKiBTZXR1cCBSWCBjaXJjdWl0LCByZWxl
dmFudCBQQUQgYW5kIGRyaXZpbmcgb24gdGhlCj4gCQkJICogaG9zdCB3aGljaCBtdXN0IGJlIHBs
YWNlZCBhZnRlciB0aGUgc2V0dXAgb24gdGhlCj4gCQkJICogZGV2aWNlIHNpZGUgaXMgYWxsIGZp
bmlzaGVkLgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaCBiL2RyaXZlcnMv
bmV0L2RzYS9tdDc1MzAuaAo+aW5kZXggNDMzMTQyOTk2OWZhLi5iZmFjOTBmNDgxMDIgMTAwNjQ0
Cj4tLS0gYS9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmgKPisrKyBiL2RyaXZlcnMvbmV0L2RzYS9t
dDc1MzAuaAo+QEAgLTI0NCw2ICsyNDQsMTAgQEAgZW51bSBtdDc1MzBfdmxhbl9wb3J0X2F0dHIg
ewo+IAo+IC8qIFJlZ2lzdGVyIGZvciBodyB0cmFwIHN0YXR1cyAqLwo+ICNkZWZpbmUgTVQ3NTMw
X0hXVFJBUAkJCTB4NzgwMAo+KyNkZWZpbmUgIEhXVFJBUF9YVEFMX01BU0sJCShCSVQoMTApIHwg
QklUKDkpKQo+KyNkZWZpbmUgIEhXVFJBUF9YVEFMXzI1TUhaCQkoQklUKDEwKSB8IEJJVCg5KSkK
PisjZGVmaW5lICBIV1RSQVBfWFRBTF80ME1IWgkJKEJJVCgxMCkpCj4rI2RlZmluZSAgSFdUUkFQ
X1hUQUxfMjBNSFoJCShCSVQoOSkpCj4gCj4gLyogUmVnaXN0ZXIgZm9yIGh3IHRyYXAgbW9kaWZp
Y2F0aW9uICovCj4gI2RlZmluZSBNVDc1MzBfTUhXVFJBUAkJCTB4NzgwNAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGlu
ZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
