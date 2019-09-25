Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9191BE021
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 16:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7Vnhav6lX6Yjzo9n2+/1peQmyvOVbsq6jc9FqQyZp8=; b=T6j4I7N6QYa4aq
	Ti+mfeQeUEGQ1Ifz2DUN/nbb2WtZ28ghgh77wIFdGNEqIqlML1mzfeuecy/znRZxPxWoGUViW+/Pz
	I7/JJJxZv/1Nj/BQoIapoeCDKTZ+GOc+2EsvgeKKspgJXpPS+i0+e5um20elh9x8tE4B3NDOF7IdU
	CB7Bu9Lmd2PkMa2XaeWp0YQJwD+0bgVQ4EvjcLP4oNKBnbxZfTSjyJinh1XAMN8khlzWRBfUFpoDI
	aRGRim7fyopp/SA87Cz/DzEAwcqvD49yAFJ//6FA/9QaKYrcTZbR01hjcOuCynncWwkPZdbH6u3PF
	/Ds0m+v4MBNZjvj06fjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8M3-000171-68; Wed, 25 Sep 2019 14:33:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8M0-00016g-4Q
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 14:33:17 +0000
X-UUID: 469238f5502449d2a473bb3b2bb20ec8-20190925
X-UUID: 469238f5502449d2a473bb3b2bb20ec8-20190925
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 47472794; Wed, 25 Sep 2019 06:33:14 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 07:33:13 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 22:33:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 25 Sep 2019 22:33:00 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v10 01/12] pwm: mediatek: add a property "num-pwms"
Date: Wed, 25 Sep 2019 22:32:26 +0800
Message-ID: <1569421957-20765-2-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
References: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3D52695687DF3C185C06E0655DFEB67D3175B7DC05C5106F518F784E6BB2D66D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_073316_180715_33D1B366 
X-CRM114-Status: GOOD (  13.36  )
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

RnJvbTogUnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgoKVGhpcyBhZGRzIGEgcHJv
cGVydHkgIm51bS1wd21zIiB0byBhdm9pZCBoYXZpbmcgYW4gZW5kbGVzcwpsaXN0IG9mIGNvbXBh
dGlibGVzIHdpdGggbm8gZGlmZmVyZW5jZXMgZm9yIHRoZSBzYW1lIGRyaXZlci4KClNpZ25lZC1v
ZmYtYnk6IFJ5ZGVyIExlZSA8cnlkZXIubGVlQG1lZGlhdGVrLmNvbT4KU2lnbmVkLW9mZi1ieTog
U2FtIFNoaWggPHNhbS5zaGloQG1lZGlhdGVrLmNvbT4KUmV2aWV3ZWQtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQpDaGFuZ2VzIHNpbmNl
IHY2OgpBZGQgYSBSZXZpZXdlZC1ieSB0YWcKCkNoYW5nZXMgc2luY2UgdjU6CkNoZWNrIG51bS1w
d21zIHZhbHVlIGlzIG5vIG1vcmUgdGhhbiBNVEtfQ0xLX01BWCAtIDIgKE1BSU4gKyBUT1ApCgpD
aGFuZ2VzIHNpbmNlIHY0OgpGb2xsb3cgcmV2aWV3ZXIncyBjb21tZW50czoKTW92ZSB0aGUgY2hh
bmdlcyBvZiBkcm9waW5nIHRoZSBjaGVjayBmb3Igb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhIHJl
dHVybmluZyBub24tTlVMTCB0byBuZXh0IHBhdGNoCgotLS0KIGRyaXZlcnMvcHdtL3B3bS1tZWRp
YXRlay5jIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3B3bS9wd20tbWVkaWF0ZWsuYyBiL2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jCmlu
ZGV4IGViNjY3NGNlOTk1Zi4uZTIxNGY0ZjU3MTA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9w
d20tbWVkaWF0ZWsuYworKysgYi9kcml2ZXJzL3B3bS9wd20tbWVkaWF0ZWsuYwpAQCAtNTUsNyAr
NTUsNyBAQCBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IG10a19wd21fY2xrX25hbWVbTVRLX0NM
S19NQVhdID0gewogfTsKIAogc3RydWN0IG10a19wd21fcGxhdGZvcm1fZGF0YSB7Ci0JdW5zaWdu
ZWQgaW50IG51bV9wd21zOworCXVuc2lnbmVkIGludCBmYWxsYmFja19ucHdtczsKIAlib29sIHB3
bTQ1X2ZpeHVwOwogCWJvb2wgaGFzX2Nsa3M7CiB9OwpAQCAtMjI3LDkgKzIyNywxMCBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IHB3bV9vcHMgbXRrX3B3bV9vcHMgPSB7CiBzdGF0aWMgaW50IG10a19w
d21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAljb25zdCBzdHJ1Y3Qg
bXRrX3B3bV9wbGF0Zm9ybV9kYXRhICpkYXRhOworCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBw
ZGV2LT5kZXYub2Zfbm9kZTsKIAlzdHJ1Y3QgbXRrX3B3bV9jaGlwICpwYzsKIAlzdHJ1Y3QgcmVz
b3VyY2UgKnJlczsKLQl1bnNpZ25lZCBpbnQgaTsKKwl1bnNpZ25lZCBpbnQgaSwgbnB3bXM7CiAJ
aW50IHJldDsKIAogCXBjID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqcGMpLCBH
RlBfS0VSTkVMKTsKQEAgLTI0Niw3ICsyNDcsMjYgQEAgc3RhdGljIGludCBtdGtfcHdtX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKElTX0VSUihwYy0+cmVncykpCiAJ
CXJldHVybiBQVFJfRVJSKHBjLT5yZWdzKTsKIAotCWZvciAoaSA9IDA7IGkgPCBkYXRhLT5udW1f
cHdtcyArIDIgJiYgcGMtPnNvYy0+aGFzX2Nsa3M7IGkrKykgeworCXJldCA9IG9mX3Byb3BlcnR5
X3JlYWRfdTMyKG5wLCAibnVtLXB3bXMiLCAmbnB3bXMpOworCWlmIChyZXQgPCAwKSB7CisJCS8q
IEl0J3MgZGVwcmVjYXRlZCwgd2Ugc2hvdWxkIHNwZWNpZnkgbnVtX3B3bXMgdmlhIERUIG5vdy4g
Ki8KKwkJaWYgKHBjLT5zb2MtPmZhbGxiYWNrX25wd21zKSB7CisJCQlucHdtcyA9IHBjLT5zb2Mt
PmZhbGxiYWNrX25wd21zOworCQkJZGV2X3dhcm4oJnBkZXYtPmRldiwgIkRUIGlzIG91dGRhdGVk
LCBwbGVhc2UgdXBkYXRlIGl0XG4iKTsKKwkJfSBlbHNlIHsKKwkJCWRldl9lcnIoJnBkZXYtPmRl
diwgImZhaWxlZCB0byBnZXQgbnVtYmVyIG9mIFBXTXNcbiIpOworCQkJcmV0dXJuIHJldDsKKwkJ
fQorCX0KKworCS8qIE1BSU4gKyBUT1AgKyBOUFdNIDwgTVRLX0NMS19NQVggKi8KKwlpZiAoKG5w
d21zICsgMikgPiBNVEtfQ0xLX01BWCkgeworCQlkZXZfd2FybigmcGRldi0+ZGV2LCAibnVtYmVy
IG9mIFBXTXMgaXMgbGFyZ2VyIHRoYW4gJWRcbiIsCisJCQkgTVRLX0NMS19NQVggLSAyKTsKKwkJ
bnB3bXMgPSBNVEtfQ0xLX01BWCAtIDI7CisJfQorCisJZm9yIChpID0gMDsgaSA8IG5wd21zICsg
MiAmJiBwYy0+c29jLT5oYXNfY2xrczsgaSsrKSB7CiAJCXBjLT5jbGtzW2ldID0gZGV2bV9jbGtf
Z2V0KCZwZGV2LT5kZXYsIG10a19wd21fY2xrX25hbWVbaV0pOwogCQlpZiAoSVNfRVJSKHBjLT5j
bGtzW2ldKSkgewogCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiY2xvY2s6ICVzIGZhaWw6ICVsZFxu
IiwKQEAgLTI2MCw3ICsyODAsNyBAQCBzdGF0aWMgaW50IG10a19wd21fcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAlwYy0+Y2hpcC5kZXYgPSAmcGRldi0+ZGV2OwogCXBjLT5j
aGlwLm9wcyA9ICZtdGtfcHdtX29wczsKIAlwYy0+Y2hpcC5iYXNlID0gLTE7Ci0JcGMtPmNoaXAu
bnB3bSA9IGRhdGEtPm51bV9wd21zOworCXBjLT5jaGlwLm5wd20gPSBucHdtczsKIAogCXJldCA9
IHB3bWNoaXBfYWRkKCZwYy0+Y2hpcCk7CiAJaWYgKHJldCA8IDApIHsKQEAgLTI3OSwyNSArMjk5
LDI1IEBAIHN0YXRpYyBpbnQgbXRrX3B3bV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfcHdtX3BsYXRmb3JtX2RhdGEgbXQy
NzEyX3B3bV9kYXRhID0gewotCS5udW1fcHdtcyA9IDgsCisJLmZhbGxiYWNrX25wd21zID0gOCwK
IAkucHdtNDVfZml4dXAgPSBmYWxzZSwKIAkuaGFzX2Nsa3MgPSB0cnVlLAogfTsKIAogc3RhdGlj
IGNvbnN0IHN0cnVjdCBtdGtfcHdtX3BsYXRmb3JtX2RhdGEgbXQ3NjIyX3B3bV9kYXRhID0gewot
CS5udW1fcHdtcyA9IDYsCisJLmZhbGxiYWNrX25wd21zID0gNiwKIAkucHdtNDVfZml4dXAgPSBm
YWxzZSwKIAkuaGFzX2Nsa3MgPSB0cnVlLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtf
cHdtX3BsYXRmb3JtX2RhdGEgbXQ3NjIzX3B3bV9kYXRhID0gewotCS5udW1fcHdtcyA9IDUsCisJ
LmZhbGxiYWNrX25wd21zID0gNSwKIAkucHdtNDVfZml4dXAgPSB0cnVlLAogCS5oYXNfY2xrcyA9
IHRydWUsCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG10a19wd21fcGxhdGZvcm1fZGF0YSBt
dDc2MjhfcHdtX2RhdGEgPSB7Ci0JLm51bV9wd21zID0gNCwKKwkuZmFsbGJhY2tfbnB3bXMgPSA0
LAogCS5wd200NV9maXh1cCA9IHRydWUsCiAJLmhhc19jbGtzID0gZmFsc2UsCiB9OwotLSAKMi4x
Ny4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRp
YXRlawo=
