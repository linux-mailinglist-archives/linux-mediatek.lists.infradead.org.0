Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779521A4844
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Apr 2020 18:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tNEYGiNPps80yebeWiqkbVa43ho+XIYCTfdWMH8LmA=; b=He5vsBrTP+9HCC
	RSQ8/VStQcbMG0sEE9RCh+zBHp7n+zqLdU0mJFbGZch8ORUsQrXcfxzaoe7LwuJdaNk0f/ZjfLli4
	07rn1CL+KGemvCxBBH5dfqE5AQwTJ1uXVhy4hMmdUTqRbh8F9GkJgFjzq+JVsM1ZP6ijx7xNGqmny
	pdsnCMRL8OzMH7+/PkMCm2/yJFA3n+6H6+VrU45vWcsE7My4ALW4Xexx5gFuptng8UwUD/41B0KzI
	RimjNaex+HrmBkuD4f3v3qE2PromNiTpGltcLUYUcsL7+90XiQXiYnTMOys5TXCddCXzzqixBYNMX
	WJXp9I0BDByV3bJQsVNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwGk-0003L1-3v; Fri, 10 Apr 2020 16:12:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwGc-0003F6-54; Fri, 10 Apr 2020 16:12:31 +0000
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D171420CC7;
 Fri, 10 Apr 2020 16:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586535149;
 bh=160JUGp3x1fpb1yme+uQZZt6RXsBzoX4rWwBvTmptUk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=W5wYd2EuxFFOf5RELEUzJliKZesmTsdbiM43S8uvK0l++0HiMbTrQt6XsIAGL4Wns
 y5YgMtu5OtZuC8hYq66rdGRTGWADpy/5wnBH0STWqvG+EhEbo54Rmbhq57vNgA9HDU
 l8ZFGOzumzy1DTerTfgkolsxj0YgGOA/Su1sveIQ=
Received: by mail-ed1-f46.google.com with SMTP id e5so2993304edq.5;
 Fri, 10 Apr 2020 09:12:28 -0700 (PDT)
X-Gm-Message-State: AGi0PuYxkvurnkXonG0wRgHEtmOkbDdxQQh7CBQfMgiOiF6tHyGLlgMA
 eFWITyWf30Fb5fp1925QM19CeXrgWW2qDAuWRg==
X-Google-Smtp-Source: APiQypKcvCktS/0AVOVss/azeh/f4lcTILgqeqaAL4onaaElSMhRA6mYYv8/89RCCzeYggvhT45miRzpgBtQ4McZm4g=
X-Received: by 2002:a05:6402:335:: with SMTP id
 q21mr5420732edw.47.1586535147130; 
 Fri, 10 Apr 2020 09:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200410043248.114384-1-jitao.shi@mediatek.com>
 <20200410043248.114384-5-jitao.shi@mediatek.com>
In-Reply-To: <20200410043248.114384-5-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 11 Apr 2020 00:12:16 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-ZiMKn5wVuhECnL4E6BM_=QoF9goorHB-GK-hRL40gyA@mail.gmail.com>
Message-ID: <CAAOTY_-ZiMKn5wVuhECnL4E6BM_=QoF9goorHB-GK-hRL40gyA@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] drm/mediatek: config mipitx impedance with
 calibration data
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_091230_232881_CCD4D1E1 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksIEppdGFvOgoKSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5
tDTmnIgxMOaXpSDpgLHkupQg5LiL5Y2IMTI6MzPlr6vpgZPvvJoKPgo+IFJlYWQgY2FsaWJyYXRp
b24gZGF0YSBmcm9tIG52bWVtLCBhbmQgY29uZmlnIG1pcGl0eCBpbXBlZGFuY2Ugd2l0aAo+IGNh
bGlicmF0aW9uIGRhdGEgdG8gbWFrZSBzdXJlIHRoZWlyIGltcGVkYW5jZSBhcmUgMTAwb2htLgo+
Cj4gU2lnbmVkLW9mZi1ieTogSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX21pcGlfdHguYyAgICAgICAgfCA0MCAr
KysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbWlwaV90
eC5oICAgICAgICB8ICAzICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbXQ4MTgz
X21pcGlfdHguYyB8IDIxICsrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCA2NCBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19taXBp
X3R4LmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX21pcGlfdHguYwo+IGluZGV4IGUz
MDFhZjY0ODA5ZS4uNWU5MWZjMmMxMzE4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9t
ZWRpYXRlay9tdGtfbWlwaV90eC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19taXBpX3R4LmMKPiBAQCAtODgsNiArODgsNDQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlf
b3BzIG10a19taXBpX3R4X29wcyA9IHsKPiAgICAgICAgIC5vd25lciA9IFRISVNfTU9EVUxFLAo+
ICB9Owo+Cj4gK3N0YXRpYyB2b2lkIG10a19taXBpX3R4X2dldF9jYWxpYnJhdGlvbl9kYXRhbChz
dHJ1Y3QgbXRrX21pcGlfdHggKm1pcGlfdHgpCj4gK3sKPiArICAgICAgIHN0cnVjdCBudm1lbV9j
ZWxsICpjZWxsOwo+ICsgICAgICAgc2l6ZV90IGxlbjsKPiArICAgICAgIHUzMiAqYnVmOwo+ICsK
PiArICAgICAgIG1lbXNldChtaXBpX3R4LT5ydF9jb2RlLCAwLCBzaXplb2YobWlwaV90eC0+cnRf
Y29kZSkpOwoKWW91IHVzZSBremFsbG9jKCkgdG8gYWxsb2NhdGUgbWlwaV90eCwgc28gdGhpcyBp
cyBhbHJlYWR5IHplcm8taW5pdGlhbGl6ZWQuCgo+ICsgICAgICAgY2VsbCA9IG52bWVtX2NlbGxf
Z2V0KG1pcGlfdHgtPmRldiwgImNhbGlicmF0aW9uLWRhdGEiKTsKPiArICAgICAgIGlmIChJU19F
UlIoY2VsbCkpIHsKPiArICAgICAgICAgICAgICAgZGV2X2luZm8obWlwaV90eC0+ZGV2LCAiY2Fu
J3QgZ2V0IG52bWVtX2NlbGxfZ2V0LCBpZ25vcmUgaXRcbiIpOwo+ICsgICAgICAgfSBlbHNlIHsK
CklmIHlvdSByZXR1cm4gd2hlbiBlcnJvciwgeW91IGNvdWxkIGdldCByaWQgb2YgdGhlICdlbHNl
Jywgc28geW91CmNvdWxkIHJlZHVjZSBtYW55ICd0YWInIGFuZCByZWR1Y2UgdGhlIHByb2JhYmls
aXR5IG9mIG9uZSBsaW5lIG92ZXIgODAKY2hhcmFjdGVyLgoKPiArICAgICAgICAgICAgICAgYnVm
ID0gKHUzMiAqKW52bWVtX2NlbGxfcmVhZChjZWxsLCAmbGVuKTsKPiArICAgICAgICAgICAgICAg
bnZtZW1fY2VsbF9wdXQoY2VsbCk7Cj4gKwo+ICsgICAgICAgICAgICAgICBpZiAoSVNfRVJSKGJ1
ZikpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBkZXZfaW5mbyhtaXBpX3R4LT5kZXYsICJj
YW4ndCBnZXQgZGF0YSwgaWdub3JlIGl0XG4iKTsKPiArICAgICAgICAgICAgICAgfSBlbHNlIHsK
CkRpdHRvLgoKUmVnYXJkcywKQ2h1bi1LdWFuZy4KCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
aWYgKGxlbiA8IDMgKiBzaXplb2YodTMyKSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZGV2X2luZm8obWlwaV90eC0+ZGV2LCAiaW52YWxpZCBjYWxpYnJhdGlvbiBkYXRhXG4i
KTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGtmcmVlKGJ1Zik7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm47Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgfQo+ICsKPiArICAgICAgICAgICAgICAgICAgICAgICBtaXBpX3R4LT5ydF9jb2RlWzBdID0g
KChidWZbMF0gPj4gNiAmIDB4MWYpIDw8IDUpIHwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIChidWZbMF0gPj4gMTEgJiAweDFmKTsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBtaXBpX3R4LT5ydF9jb2RlWzFdID0gKChidWZbMV0gPj4gMjcgJiAweDFm
KSA8PCA1KSB8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAoYnVmWzBdID4+IDEgJiAweDFmKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBtaXBpX3R4
LT5ydF9jb2RlWzJdID0gKChidWZbMV0gPj4gMTcgJiAweDFmKSA8PCA1KSB8Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoYnVmWzFdID4+IDIyICYgMHgx
Zik7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgbWlwaV90eC0+cnRfY29kZVszXSA9ICgoYnVm
WzFdID4+IDcgJiAweDFmKSA8PCA1KSB8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAoYnVmWzFdID4+IDEyICYgMHgxZik7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgbWlwaV90eC0+cnRfY29kZVs0XSA9ICgoYnVmWzJdID4+IDI3ICYgMHgxZikgPDwg
NSkgfAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKGJ1
ZlsxXSA+PiAyICYgMHgxZik7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAga2ZyZWUoYnVmKTsK
PiArICAgICAgICAgICAgICAgfQo+ICsgICAgICAgfQo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IG10
a19taXBpX3R4X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIHsKPiAgICAg
ICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gQEAgLTE3NCw2ICsyMTIsOCBA
QCBzdGF0aWMgaW50IG10a19taXBpX3R4X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4KPiAgICAgICAgIG1pcGlfdHgtPmRldiA9IGRldjsKPgo+ICsgICAgICAgbXRrX21pcGlf
dHhfZ2V0X2NhbGlicmF0aW9uX2RhdGFsKG1pcGlfdHgpOwo+ICsKPiAgICAgICAgIHJldHVybiBv
Zl9jbGtfYWRkX3Byb3ZpZGVyKGRldi0+b2Zfbm9kZSwgb2ZfY2xrX3NyY19zaW1wbGVfZ2V0LAo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWlwaV90eC0+cGxsKTsKPiAgfQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX21pcGlfdHguaCBiL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbWlwaV90eC5oCj4gaW5kZXggZWVhNDQzMjdmZTlm
Li5jNzZmMDdjM2ZkZWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19taXBpX3R4LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX21pcGlfdHgu
aAo+IEBAIC0xMiw5ICsxMiwxMSBAQAo+ICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiAgI2lu
Y2x1ZGUgPGxpbnV4L2lvLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiArI2luY2x1
ZGUgPGxpbnV4L252bWVtLWNvbnN1bWVyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2Uu
aD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvcGh5L3BoeS5oPgo+ICsjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+Cj4gIHN0cnVjdCBtdGtf
bWlwaXR4X2RhdGEgewo+ICAgICAgICAgY29uc3QgdTMyIG1wcGxsX3ByZXNlcnZlOwo+IEBAIC0y
OCw2ICszMCw3IEBAIHN0cnVjdCBtdGtfbWlwaV90eCB7Cj4gICAgICAgICB2b2lkIF9faW9tZW0g
KnJlZ3M7Cj4gICAgICAgICB1MzIgZGF0YV9yYXRlOwo+ICAgICAgICAgdTMyIG1pcGl0eF9kcml2
ZTsKPiArICAgICAgIHUzMiBydF9jb2RlWzVdOwo+ICAgICAgICAgY29uc3Qgc3RydWN0IG10a19t
aXBpdHhfZGF0YSAqZHJpdmVyX2RhdGE7Cj4gICAgICAgICBzdHJ1Y3QgY2xrX2h3IHBsbF9odzsK
PiAgICAgICAgIHN0cnVjdCBjbGsgKnBsbDsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L21lZGlhdGVrL210a19tdDgxODNfbWlwaV90eC5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19tdDgxODNfbWlwaV90eC5jCj4gaW5kZXggZTRjYzk2Nzc1MGNiLi45ZjNlNTVhZWViYjIg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19tdDgxODNfbWlwaV90
eC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19tdDgxODNfbWlwaV90eC5j
Cj4gQEAgLTI4LDYgKzI4LDcgQEAKPiAgI2RlZmluZSBNSVBJVFhfUExMX0NPTjQgICAgICAgICAg
ICAgICAgMHgwMDNjCj4gICNkZWZpbmUgUkdfRFNJX1BMTF9JQklBUyAgICAgICAgICAgICAgICgz
IDw8IDEwKQo+Cj4gKyNkZWZpbmUgTUlQSVRYX0QyUF9SVENPREUgICAgICAweDAxMDAKPiAgI2Rl
ZmluZSBNSVBJVFhfRDJfU1dfQ1RMX0VOICAgIDB4MDE0NAo+ICAjZGVmaW5lIE1JUElUWF9EMF9T
V19DVExfRU4gICAgMHgwMjQ0Cj4gICNkZWZpbmUgTUlQSVRYX0NLX0NLTU9ERV9FTiAgICAweDAz
MjgKPiBAQCAtMTA4LDYgKzEwOSwyNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGNsa19vcHMgbXRr
X21pcGlfdHhfcGxsX29wcyA9IHsKPiAgICAgICAgIC5yZWNhbGNfcmF0ZSA9IG10a19taXBpX3R4
X3BsbF9yZWNhbGNfcmF0ZSwKPiAgfTsKPgo+ICtzdGF0aWMgdm9pZCBtdGtfbWlwaV90eF9jb25m
aWdfY2FsaWJyYXRpb25fZGF0YShzdHJ1Y3QgbXRrX21pcGlfdHggKm1pcGlfdHgpCj4gK3sKPiAr
ICAgICAgIGludCBpLCBqOwo+ICsKPiArICAgICAgIGZvciAoaSA9IDA7IGkgPCA1OyBpKyspIHsK
PiArICAgICAgICAgICAgICAgaWYgKChtaXBpX3R4LT5ydF9jb2RlW2ldICYgMHgxZikgPT0gMCkK
PiArICAgICAgICAgICAgICAgICAgICAgICBtaXBpX3R4LT5ydF9jb2RlW2ldIHw9IDB4MTA7Cj4g
Kwo+ICsgICAgICAgICAgICAgICBpZiAoKG1pcGlfdHgtPnJ0X2NvZGVbaV0gPj4gNSAmIDB4MWYp
ID09IDApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgbWlwaV90eC0+cnRfY29kZVtpXSB8PSAw
eDEwIDw8IDU7Cj4gKwo+ICsgICAgICAgICAgICAgICBmb3IgKGogPSAwOyBqIDwgMTA7IGorKykK
PiArICAgICAgICAgICAgICAgICAgICAgICBtdGtfbWlwaV90eF91cGRhdGVfYml0cyhtaXBpX3R4
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTUlQSVRYX0QyUF9SVENPREUgKiAo
aSArIDEpICsgaiAqIDQsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxLCBtaXBp
X3R4LT5ydF9jb2RlW2ldID4+IGogJiAxKTsKPiArICAgICAgIH0KPiArfQo+ICsKPiAgc3RhdGlj
IHZvaWQgbXRrX21pcGlfdHhfcG93ZXJfb25fc2lnbmFsKHN0cnVjdCBwaHkgKnBoeSkKPiAgewo+
ICAgICAgICAgc3RydWN0IG10a19taXBpX3R4ICptaXBpX3R4ID0gcGh5X2dldF9kcnZkYXRhKHBo
eSk7Cj4gQEAgLTEzMCw2ICsxNDksOCBAQCBzdGF0aWMgdm9pZCBtdGtfbWlwaV90eF9wb3dlcl9v
bl9zaWduYWwoc3RydWN0IHBoeSAqcGh5KQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgUkdfRFNJX0hTVFhfTERPX1JFRl9TRUwsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAobWlwaV90eC0+bWlwaXR4X2RyaXZlIC0gMzAwMCkgLyAyMDAgPDwgNik7Cj4KPiArICAg
ICAgIG10a19taXBpX3R4X2NvbmZpZ19jYWxpYnJhdGlvbl9kYXRhKG1pcGlfdHgpOwo+ICsKPiAg
ICAgICAgIG10a19taXBpX3R4X3NldF9iaXRzKG1pcGlfdHgsIE1JUElUWF9DS19DS01PREVfRU4s
IERTSV9DS19DS01PREVfRU4pOwo+ICB9Cj4KPiAtLQo+IDIuMjEuMAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlz
dAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0
CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
