Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA4850F42
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 16:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IyT851YrjH2HHMpXlCa5VCljgmJz4WEAQiJXTyte8o=; b=iCJiLKG3jtdP76
	deWSrOVMujchH5s3MjDdQp/ddfmz+2Rcn7cAmd52HX/4INGJU09YMj9L4TAp7X09N7gq+X04f0scw
	yXs5QBWxdGxMB0bKm1aY6nDVa7/A5Dykdd7yeutgvpCBRRFwGtEeQ69zFM1Jmu1v9jvW07tojpEwE
	DB53ZmAV4HUlLj3di0kVS5LeAJj0EqvwUZneaAHdZ2DkdNWLgiIDxaez8TtFspcV1BpqdMyUba9ms
	Bhg2Z+Y0mZ4/IPu40z6MCsV7+zVHhDravys4CMauB2PFavMSRxKSt8q7SXo5VQsUks0A5aN3wNIoI
	eZWxlxfGIOgvAsPw0mag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQLt-0004um-TV; Mon, 24 Jun 2019 14:53:50 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQLc-0004hW-Le
 for linux-mediatek@lists.infradead.org; Mon, 24 Jun 2019 14:53:36 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 88C895FEAA;
 Mon, 24 Jun 2019 16:53:31 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="Z97OrP5c"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 4BAB41CC6F20;
 Mon, 24 Jun 2019 16:53:31 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 4BAB41CC6F20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1561388011;
 bh=o1+uw8+JtKHBlTBA6PNZjG1cJU17dwIWI/clg9n7HZM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z97OrP5cGmQX9952lOXduXvxBEa8mKL3zNXH/prknAEZgxU7TxHAkKWBjfD2AOFRs
 JgOSZW8l0lzWzb7mcAW8G29OKHfm12FYROoygcYQAImUFrLA2brWX6N8f3TZZ5gQHY
 0f8KhGNnHx1Wrgp1UHT+yzApmejZpmpPbD7HZqv6W4gnLvmT8qp3U09zaIWEDMj0p5
 jn+++VqeoezFH5Ttcqr6PQBc/ukG7UrSqccbuDuerqafROJTvXukRYVWuRoKJVxtSN
 xsYnhwAzcH2QTNoDevIkYC01TgllsQdqoiKQmsv5sAKm6ywfje2UhrpKPkNGOXZfMh
 vCjkLVw56pUqA==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: sean.wang@mediatek.com, f.fainelli@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, matthias.bgg@gmail.com, andrew@lunn.ch,
 vivien.didelot@gmail.com
Subject: [PATCH RFC net-next 5/5] net: dsa: mt7530: Add mediatek,
 ephy-handle to isolate external phy
Date: Mon, 24 Jun 2019 16:52:51 +0200
Message-Id: <20190624145251.4849-6-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624145251.4849-1-opensource@vdorst.com>
References: <20190624145251.4849-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_075333_040599_B4C174E4 
X-CRM114-Status: GOOD (  13.18  )
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

T24gc29tZSBwbGF0Zm9ybXMgdGhlIGV4dGVybmFsIHBoeSBjYW4gb25seSBpbnRlcmZhY2Ugd2l0
aCB0aGUgcG9ydCA1IG9mCnRoZSBzd2l0Y2ggYmVjYXVzZSB0aGUgeE1JSSBUWCBhbmQgUlggbGlu
ZXMgYXJlIHN3YXBwZWQuIEJ1dCBpdCBzdGlsbCBjYW4KYmUgdXNlZnVsIHRvIHVzZSB0aGUgaW50
ZXJuYWwgcGh5IG9mIHRoZSBzd2l0Y2ggdG8gYWN0IGFzIGEgV0FOIHBvcnQgd2hpY2gKY29ubmVj
dGVzIHRvIHRoZSAybmQgR01BQy4gVGhpcyBnaXZlcyB0aGUgU09DIGEgZG91YmxlIHRoZSBiYW5k
d2lkdGgKYmV0d2VlbiBMQU4gYW5kIFdBTi4gQmVjYXVzZSBMQU4gYW5kIFdBTiBkb24ndCBzaGFy
ZSB0aGUgc2FtZSBpbnRlcmZhY2UKYW55bW9yZS4KCkJ5IGFkZGluZyBhbiBvcHRpb25hbCBwcm9w
ZXJ0eSBtZWRpYXRlayxlcGh5LWhhbmRsZSwgdGhlIGV4dGVybmFsIHBoeQppcyBwdXQgaW4gaXNv
bGF0aW9uIG1vZGUgd2hlbiBpbnRlcm5hbCBwaHkgaXMgbGlua2VkIHdpdGggMm5kIEdNQUMgdmlh
CnBoeS1oYW5kbGUgcHJvcGVydHkuCgpTaWduZWQtb2ZmLWJ5OiBSZW7DqSB2YW4gRG9yc3QgPG9w
ZW5zb3VyY2VAdmRvcnN0LmNvbT4KLS0tCiBkcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMgfCAyOCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmggfCAg
MiArKwogMiBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZHNhL210NzUzMC5jIGIvZHJpdmVycy9uZXQvZHNhL210NzUzMC5jCmluZGV4IDgz
OGE5MjFjYTgzZS4uMjViMGYzNWRmNzViIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9kc2EvbXQ3
NTMwLmMKKysrIGIvZHJpdmVycy9uZXQvZHNhL210NzUzMC5jCkBAIC02MzMsNiArNjMzLDI2IEBA
IG10NzUzMF9nZXRfc3NldF9jb3VudChzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMsIGludCBwb3J0LCBp
bnQgc3NldCkKIAlyZXR1cm4gQVJSQVlfU0laRShtdDc1MzBfbWliKTsKIH0KIAorc3RhdGljIGlu
dCBtdDc1MzBfaXNvbGF0ZV9lcGh5KHN0cnVjdCBkc2Ffc3dpdGNoICpkcywKKwkJCSAgICAgICBz
dHJ1Y3QgZGV2aWNlX25vZGUgKmVwaHlfbm9kZSkKK3sKKwlzdHJ1Y3QgcGh5X2RldmljZSAqcGh5
ZGV2ID0gb2ZfcGh5X2ZpbmRfZGV2aWNlKGVwaHlfbm9kZSk7CisJaW50IHJldDsKKworCWlmICgh
cGh5ZGV2KQorCQlyZXR1cm4gMDsKKworCXJldCA9IHBoeV9tb2RpZnkocGh5ZGV2LCBNSUlfQk1D
UiwgMCwgKEJNQ1JfSVNPTEFURSB8IEJNQ1JfUERPV04pKTsKKwlpZiAocmV0KQorCQlkZXZfZXJy
KGRzLT5kZXYsICJGYWlsZWQgdG8gcHV0IHBoeSAlcyBpbiBpc29sYXRpb24gbW9kZSFcbiIsCisJ
CQllcGh5X25vZGUtPmZ1bGxfbmFtZSk7CisJZWxzZQorCQlkZXZfaW5mbyhkcy0+ZGV2LCAiUGh5
ICVzIGluIGlzb2xhdGlvbiBtb2RlIVxuIiwKKwkJCSBlcGh5X25vZGUtPmZ1bGxfbmFtZSk7CisK
KwlyZXR1cm4gcmV0OworfQorCiBzdGF0aWMgdm9pZCBtdDc1MzBfc2V0dXBfcG9ydDUoc3RydWN0
IGRzYV9zd2l0Y2ggKmRzLCBwaHlfaW50ZXJmYWNlX3QgaW50ZXJmYWNlKQogewogCXN0cnVjdCBt
dDc1MzBfcHJpdiAqcHJpdiA9IGRzLT5wcml2OwpAQCAtNjU1LDYgKzY3NSwxMCBAQCBzdGF0aWMg
dm9pZCBtdDc1MzBfc2V0dXBfcG9ydDUoc3RydWN0IGRzYV9zd2l0Y2ggKmRzLCBwaHlfaW50ZXJm
YWNlX3QgaW50ZXJmYWNlKQogCQkvKiBNVDc1MzBfUDVfTU9ERV9HUEhZX1A0OiAybmQgR01BQyAt
PiBQNSAtPiBQNCAqLwogCQl2YWwgJj0gfk1IV1RSQVBfUDVfTUFDX1NFTCAmIH5NSFdUUkFQX1A1
X0RJUzsKIAorCQkvKiBJc29sYXRlIHRoZSBleHRlcm5hbCBwaHkgKi8KKwkJaWYgKHByaXYtPmVw
aHlfbm9kZSkKKwkJCWlmIChtdDc1MzBfaXNvbGF0ZV9lcGh5KGRzLCBwcml2LT5lcGh5X25vZGUp
IDwgMCkKKwkJCQlnb3RvIHVubG9ja19leGl0OwogCQkvKiBTZXR1cCB0aGUgTUFDIGJ5IGRlZmF1
bHQgZm9yIHRoZSBjcHUgcG9ydCAqLwogCQltdDc1MzBfd3JpdGUocHJpdiwgTVQ3NTMwX1BNQ1Jf
UCg1KSwgMHg1NjMwMCk7CiAJCWJyZWFrOwpAQCAtMTMzMCw2ICsxMzU0LDEwIEBAIG10NzUzMF9z
ZXR1cChzdHJ1Y3QgZHNhX3N3aXRjaCAqZHMpCiAJCQltdDc1MzBfcG9ydF9kaXNhYmxlKGRzLCBp
KTsKIAl9CiAKKwkvKiBHZXQgZXh0ZXJuYWwgcGh5IHBoYW5kbGUgKi8KKwlwcml2LT5lcGh5X25v
ZGUgPSBvZl9wYXJzZV9waGFuZGxlKHByaXYtPmRldi0+b2Zfbm9kZSwKKwkJCQkJICAgIm1lZGlh
dGVrLGVwaHktaGFuZGxlIiwgMCk7CisKIAkvKiBTZXR1cCBwb3J0IDUgKi8KIAlwcml2LT5wNV9t
b2RlID0gUDVfTU9ERV9ESVNBQkxFRDsKIAlpbnRlcmZhY2UgPSBQSFlfSU5URVJGQUNFX01PREVf
TkE7CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmggYi9kcml2ZXJzL25ldC9k
c2EvbXQ3NTMwLmgKaW5kZXggZjJhODRlZjQ4NTQ4Li5lYjA3OWU4MWE4ZTggMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaAorKysgYi9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmgK
QEAgLTQ1OSw2ICs0NTksNyBAQCBzdGF0aWMgY29uc3QgY2hhciAqcDVfbW9kZXModW5zaWduZWQg
aW50IHA1X21vZGUpCiAgKiBAcmVnX211dGV4OgkJVGhlIGxvY2sgZm9yIHByb3RlY3RpbmcgYW1v
bmcgcHJvY2VzcyBhY2Nlc3NpbmcKICAqCQkJcmVnaXN0ZXJzCiAgKiBAcDVfbW9kZToJCVBPUlQg
NSBtb2RlIHN0YXR1cworICogQGVwaHlfbm9kZToJCUV4dGVybmFsIHBoeSBvZl9ub2RlLgogICov
CiBzdHJ1Y3QgbXQ3NTMwX3ByaXYgewogCXN0cnVjdCBkZXZpY2UJCSpkZXY7CkBAIC00NzIsNiAr
NDczLDcgQEAgc3RydWN0IG10NzUzMF9wcml2IHsKIAl1bnNpZ25lZCBpbnQJCWlkOwogCWJvb2wJ
CQltY207CiAJdW5zaWduZWQgaW50CQlwNV9tb2RlOworCXN0cnVjdCBkZXZpY2Vfbm9kZQkqZXBo
eV9ub2RlOwogCiAJc3RydWN0IG10NzUzMF9wb3J0CXBvcnRzW01UNzUzMF9OVU1fUE9SVFNdOwog
CS8qIHByb3RlY3QgYW1vbmcgcHJvY2Vzc2VzIGZvciByZWdpc3RlcnMgYWNjZXNzKi8KLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVk
aWF0ZWsK
