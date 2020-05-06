Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FD01C6511
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 02:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmtzYwAdKX8+Hy2peyljXk6VpqF81nLkKUAw0hkhbDk=; b=csCI6gbX2Q+NTE
	f0O4j1iuDC5EArHQlF6V3ZsA6znU4l5+48k8Fu+X/nDB3NfS8AXmm/8LuBXWasQJuJCLVhVS1wqFW
	8fslNMMDT8qGGuzTqaqUM/CXXEtkml1fmPSqc6g8Aq2hov5S96DO4X/OjHJDpVGnf56mLruuK4CsA
	eV3E7yDlSiq/MtDUv+VgRJxss2Et719ZeCDi3/d/+Gb9Lw2rElFS4DoyDW4kKqDBHQDWgQMxfcX0S
	elmjES7Eh0cui596JsV+JOOdoMUbd+Z2bdBMUbpTNeS5s/iewD+A24TeC3bqOHDYkpQ25iN8KoaRx
	tpzjIPM6cID76cH+twdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7vM-0008Ly-TB; Wed, 06 May 2020 00:28:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7vE-0008Ee-Ij; Wed, 06 May 2020 00:28:25 +0000
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 008232075E;
 Wed,  6 May 2020 00:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588724904;
 bh=DWQzwXVi5jSpdNgL+w7PmIh4LeFt4VjFCSEDXC+7SwM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vPCVMxIGYGpadnCM+jgzVaFSvA1I9nglgBugGqwTM3AYb8hIYe2W3SZl4IeGrLHmp
 ALmred5Ng+DkaSqvPL2SlH2RYZYvWSgFroa04P1rPR5NGspbED9JIipwoyskh7uTFJ
 Q7ujj2Ue3DGl3Huxa5UGjol3FvS1V1HrZcjlK21o=
Received: by mail-ed1-f41.google.com with SMTP id w2so459526edx.4;
 Tue, 05 May 2020 17:28:23 -0700 (PDT)
X-Gm-Message-State: AGi0PubkQ9DwsMOyBj6axZOJl/xH3iHJtY2hfr2GNta7w3mU4j61Nv2B
 TApYe8AG+DZ5SZOX7FPFbogRgNf2Nt3vPOzUoA==
X-Google-Smtp-Source: APiQypIved3V8B2EWfluqDx98u8I6Wi+wk4pSnJc5XXqvvRqIaWvQAH7HQXR1ZWrM4QKK2OpRJ3waUIbH7TnOFtz2C0=
X-Received: by 2002:aa7:c649:: with SMTP id z9mr5024685edr.288.1588724902330; 
 Tue, 05 May 2020 17:28:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200420135045.27984-1-yuehaibing@huawei.com>
 <20200429071337.49528-1-yuehaibing@huawei.com>
 <CAAOTY__5rwRQhuy4vT8OiAKMM2bQtCb7w5AW9B5rqL+UVdVpsg@mail.gmail.com>
In-Reply-To: <CAAOTY__5rwRQhuy4vT8OiAKMM2bQtCb7w5AW9B5rqL+UVdVpsg@mail.gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 6 May 2020 08:28:09 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-Zaa4ecbmzpP+ikw435ig5c9tR1vZH6mK8bGo2dVGVew@mail.gmail.com>
Message-ID: <CAAOTY_-Zaa4ecbmzpP+ikw435ig5c9tR1vZH6mK8bGo2dVGVew@mail.gmail.com>
Subject: Re: [PATCH v3 -next] drm/mediatek: Fix Kconfig warning
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_172824_658045_54C73297 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.orc, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksIFl1ZUhhaWJpbmc6CgpDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4g
5pa8IDIwMjDlubQ05pyIMjnml6Ug6YCx5LiJIOS4i+WNiDEwOjE15a+r6YGT77yaCj4KPiBIaSwg
WXVlSGFpYmluZzoKPgo+IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNvbT4g5pa8IDIw
MjDlubQ05pyIMjnml6Ug6YCx5LiJIOS4i+WNiDM6MTTlr6vpgZPvvJoKPiA+Cj4gPiBXQVJOSU5H
OiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVzIGRldGVjdGVkIGZvciBNVEtfTU1TWVMKPiA+ICAg
RGVwZW5kcyBvbiBbbl06IChBUkNIX01FRElBVEVLIFs9eV0gfHwgQ09NUElMRV9URVNUIFs9bl0p
ICYmIENPTU1PTl9DTEtfTVQ4MTczX01NU1lTIFs9bl0KPiA+ICAgU2VsZWN0ZWQgYnkgW3ldOgo+
ID4gICAtIERSTV9NRURJQVRFSyBbPXldICYmIEhBU19JT01FTSBbPXldICYmIERSTSBbPXldICYm
IChBUkNIX01FRElBVEVLIFs9eV0gfHwgQVJNICYmIENPTVBJTEVfVEVTVCBbPW5dKSAmJiBDT01N
T05fQ0xLIFs9eV0gJiYgSEFWRV9BUk1fU01DQ0MgWz15XSAmJiBPRiBbPXldCj4gPgo+ID4gTWFr
ZSBEUk1fTUVESUFURUsgZGVwZW5kIG9uIE1US19NTVNZUyB0byBmaXggdGhpcy4KPgo+IFJldmll
d2VkLWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4KPgoKQXBwbGll
ZCB0byBtZWRpYXRlay1kcm0tbmV4dCBbMV0sIHRoYW5rcy4KClsxXSBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9jaHVua3VhbmcuaHUvbGludXguZ2l0L2xv
Zy8/aD1tZWRpYXRlay1kcm0tbmV4dAoKUmVnYXJkcywKQ2h1bi1LdWFuZy4KCj4gPgo+ID4gRml4
ZXM6IDJjNzU4ZTMwMWVkOSAoInNvYyAvIGRybTogbWVkaWF0ZWs6IE1vdmUgcm91dGluZyBjb250
cm9sIHRvIG1tc3lzIGRldmljZSIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWliaW5nIDx5dWVo
YWliaW5nQGh1YXdlaS5jb20+Cj4gPiAtLS0KPiA+IHYzOiBtYWtlIERSTV9NRURJQVRFSyBkZXBl
bmRzIG9uIE1US19NTVNZUwo+ID4gdjI6IHNlbGVjdCBDT01NT05fQ0xLX01UODE3M19NTVNZUyBp
bnN0ZWFkIG9mIGFkZGluZyBEUk1fTUVESUFURUsgZGVwZW5kZW5jeQo+ID4gLS0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL21lZGlhdGVrL0tjb25maWcgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL0tj
b25maWcKPiA+IGluZGV4IGM0MjBmNWEzZDMzYi4uYWE3NGFhYzNjYmNjIDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL0tjb25maWcKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9tZWRpYXRlay9LY29uZmlnCj4gPiBAQCAtNiwxMiArNiwxMiBAQCBjb25maWcgRFJNX01F
RElBVEVLCj4gPiAgICAgICAgIGRlcGVuZHMgb24gQ09NTU9OX0NMSwo+ID4gICAgICAgICBkZXBl
bmRzIG9uIEhBVkVfQVJNX1NNQ0NDCj4gPiAgICAgICAgIGRlcGVuZHMgb24gT0YKPiA+ICsgICAg
ICAgZGVwZW5kcyBvbiBNVEtfTU1TWVMKPiA+ICAgICAgICAgc2VsZWN0IERSTV9HRU1fQ01BX0hF
TFBFUgo+ID4gICAgICAgICBzZWxlY3QgRFJNX0tNU19IRUxQRVIKPiA+ICAgICAgICAgc2VsZWN0
IERSTV9NSVBJX0RTSQo+ID4gICAgICAgICBzZWxlY3QgRFJNX1BBTkVMCj4gPiAgICAgICAgIHNl
bGVjdCBNRU1PUlkKPiA+IC0gICAgICAgc2VsZWN0IE1US19NTVNZUwo+ID4gICAgICAgICBzZWxl
Y3QgTVRLX1NNSQo+ID4gICAgICAgICBzZWxlY3QgVklERU9NT0RFX0hFTFBFUlMKPiA+ICAgICAg
ICAgaGVscAo+ID4gLS0KPiA+IDIuMTcuMQo+ID4KPiA+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGlu
dXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
