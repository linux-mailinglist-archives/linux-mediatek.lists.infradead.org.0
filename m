Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D628B87A8
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Sep 2019 00:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XtZPMGLbiwOiz+HnXM23X36LLonuKguxKOpniUyVrs=; b=PTewwhN8TffkUs
	TioVXbTSyqLJuDo44HKhu32WuQb6tujaQhBzsidQgtqrW/MYKyAMTlJemc7K4GTIiSytlcB5MAF8j
	7eyUeAJvWtsCahWoBPj/M8pgCDyVL5ZIYDfGpxJnYnpwJdbLRnuMe83BW+BEAp35kU/30NwHZMwrQ
	W2dGlTNitIeiQKZTrdlazDbcHA5Z4+AnR+BleS4IAVqa6bUwlMQhD1bE+LdnPO/up0IYKSlyY+MEz
	/2SMI4kwF3uUnFloYZxgEhQcY9/i9xD+67XnCAq8vEf6YKjZQjmLKaOGFzaBbHuytPyfc2wnhaqke
	2fkm+nZFre1XOHdPbGeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB5GE-0004Q5-Lv; Thu, 19 Sep 2019 22:50:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB5GA-0004Pe-TT
 for linux-mediatek@lists.infradead.org; Thu, 19 Sep 2019 22:50:48 +0000
X-UUID: b333204ac1a848a193e0ea7c6d686a71-20190919
X-UUID: b333204ac1a848a193e0ea7c6d686a71-20190919
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 596294535; Thu, 19 Sep 2019 14:50:42 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 15:50:39 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Sep 2019 06:50:36 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 20 Sep 2019 06:50:36 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v9 02/11] pwm: mediatek: droping the check for
 of_device_get_match_data
Date: Fri, 20 Sep 2019 06:49:02 +0800
Message-ID: <1568933351-8584-3-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
References: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_155046_953688_1913827A 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

VGhpcyBwYXRjaCBkcm9wIHRoZSBjaGVjayBmb3Igb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhLgpE
dWUgdG8gdGhlIG9ubHkgd2F5IGNhbGwgZHJpdmVyIHByb2JlIGlzIGNvbXBhdGlibGUgbWF0Y2gu
ClRoZSAuZGF0YSBwb2ludGVyIHdoaWNoIHBvaW50IHRvIHRoZSBTb0Mgc3BlY2lmeSBkYXRhIGlz
CmRpcmVjdGx5IHNldCBieSBkcml2ZXIsIGFuZCBpdCBzaG91bGQgbm90IGJlIE5VTEwgaW4gb3Vy
IGNhc2UuCldlIGNhbiBzYWZldHkgcmVtb3ZlIHRoZSBjaGVjayBmb3Igb2ZfZGV2aWNlX2dldF9t
YXRjaF9kYXRhLgoKU2lnbmVkLW9mZi1ieTogUnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBTYW0gU2hpaCA8c2FtLnNoaWhAbWVkaWF0ZWsuY29tPgpBY2tl
ZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
LS0tClVzZWQ6Cmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEwOTY5MDUvCkNo
YW5nZXMgc2luY2UgdjY6CkFkZCBhbiBBY2tlZC1ieSB0YWcKCkNoYW5nZXMgc2luY2UgdjQ6CkZv
bGxvdyByZXZpZXdlcidzIGNvbW1lbnRzOgpNb3ZlIHRoZSBjaGFuZ2VzIG9mIGRyb3BpbmcgdGhl
IGNoZWNrIGZvciBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEKcmV0dXJuaW5nIG5vbi1OVUxMIHRv
IHRoaXMgcGF0Y2gKCi0tLQogZHJpdmVycy9wd20vcHdtLW1lZGlhdGVrLmMgfCA2ICstLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jIGIvZHJpdmVycy9wd20vcHdtLW1lZGlhdGVr
LmMKaW5kZXggZTIxNGY0ZjU3MTA3Li5lYmQ2MjYyOWUzZmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
cHdtL3B3bS1tZWRpYXRlay5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jCkBAIC0y
MjYsNyArMjI2LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwd21fb3BzIG10a19wd21fb3BzID0g
ewogCiBzdGF0aWMgaW50IG10a19wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIHsKLQljb25zdCBzdHJ1Y3QgbXRrX3B3bV9wbGF0Zm9ybV9kYXRhICpkYXRhOwogCXN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAgPSBwZGV2LT5kZXYub2Zfbm9kZTsKIAlzdHJ1Y3QgbXRrX3B3bV9j
aGlwICpwYzsKIAlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKQEAgLTIzNywxMCArMjM2LDcgQEAgc3Rh
dGljIGludCBtdGtfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYg
KCFwYykKIAkJcmV0dXJuIC1FTk9NRU07CiAKLQlkYXRhID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9k
YXRhKCZwZGV2LT5kZXYpOwotCWlmIChkYXRhID09IE5VTEwpCi0JCXJldHVybiAtRUlOVkFMOwot
CXBjLT5zb2MgPSBkYXRhOworCXBjLT5zb2MgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoJnBk
ZXYtPmRldik7CiAKIAlyZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNPVVJD
RV9NRU0sIDApOwogCXBjLT5yZWdzID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKCZwZGV2LT5kZXYs
IHJlcyk7Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW1lZGlhdGVrCg==
