Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7611D2320
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 01:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dy+wrsHYZ6WjFcL62J2+MN1UDl7cA7TMDlGjaI1pm8Q=; b=tGC07PqUK2qAoh
	IgsgSzKP4iMApvnHbRpKeeIjz9wo20dc4euQXeQg7sDQWFxLWzZGcOpvE/pEMNqjJyxsu0c2GGPn+
	wOP5UPwRRSsMQWa/7VkvPDybHUxbpofWBE3+28UDx/C7JZmtnbtHJGN9NNxGCA8TLLC01vd4Eic2J
	8+85Y1Y/ze0ogymcA8ffO81rGJjvyUYxPVTWGMvqGsGnyd+Q//6fJ56qHDlJhKSLaQO9P2QcgqfT7
	78xRmEoAesH6R3DdByci4oz0oOsUJEeH60HUtdNtx72KHQoyaXB9tE2OmvKnrEy+3P1Qn+Ty0IzxN
	tdbvNaf6UE8PuGq8e5Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0sz-0006K8-PC; Wed, 13 May 2020 23:34:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0sw-0006Ji-M2
 for linux-mediatek@lists.infradead.org; Wed, 13 May 2020 23:34:00 +0000
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B5322078C
 for <linux-mediatek@lists.infradead.org>; Wed, 13 May 2020 23:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589412838;
 bh=FQuPkqpW++CMzJul/k9K8Nnk3Fs3wLzOZa3EDUaPXog=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Thj16xFwYv0atkm2x2IcXHD7uqQYMxLXqNE/UTSABTbapDxOcSWShu4VYx4hePhmx
 M2h4p2eorE9Y6DPoVXOnihBMgKe3tu78/I2z+aeDKCDHVOjhkcKW11PpTpzA9uutBD
 2Fsrdztnd6LJqQqoBS28tIZXs6SQb6+PUTYowFlw=
Received: by mail-ed1-f53.google.com with SMTP id l3so801600edq.13
 for <linux-mediatek@lists.infradead.org>; Wed, 13 May 2020 16:33:57 -0700 (PDT)
X-Gm-Message-State: AOAM530pznxfPmUs2k8ZfblZa8Y7pNAexnP1YhJEaU+qwyl30zrdufqL
 zTCOutBaMHzFEJPLAUQ05XdpUrs//pYIqEXCZA==
X-Google-Smtp-Source: ABdhPJyVQ+dsY7afdzjDkIWyXH9yX0zKdVoRpMYkusBkVhSHzVYUi19neBEjM3Nh8TM6YyY490G2hualHumhvwHD8Tk=
X-Received: by 2002:a50:fe09:: with SMTP id f9mr1758763edt.47.1589412836070;
 Wed, 13 May 2020 16:33:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAAOTY_8gJNpWXcMnHiZzg_sgyiJ6BDsBYRxaLX0OXWRuLF1NCg@mail.gmail.com>
 <20200513194518.GN206103@phenom.ffwll.local>
In-Reply-To: <20200513194518.GN206103@phenom.ffwll.local>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Thu, 14 May 2020 07:33:44 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-77au87rXwULY4Ki4rShO8Pz9FUaoVHZh0DCjRfGroBA@mail.gmail.com>
Message-ID: <CAAOTY_-77au87rXwULY4Ki4rShO8Pz9FUaoVHZh0DCjRfGroBA@mail.gmail.com>
Subject: Re: [GIT PULL] mediatek drm next for 5.8
To: Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_163358_769207_366283F3 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Jitao Shi <jitao.shi@mediatek.com>,
 David Airlie <airlied@linux.ie>, Bernard Zhao <bernard@vivo.com>,
 YueHaibing <yuehaibing@huawei.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Hsin-Yi Wang <hsinyi@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Anand K Mistry <amistry@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksIERhbmllbDoKCkRhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4g5pa8IDIwMjDlubQ1
5pyIMTTml6Ug6YCx5ZubIOS4iuWNiDM6NDXlr6vpgZPvvJoKPgo+IE9uIFRodSwgTWF5IDE0LCAy
MDIwIGF0IDEyOjE2OjU5QU0gKzA4MDAsIENodW4tS3VhbmcgSHUgd3JvdGU6Cj4gPiBIaSwgRGF2
ZSAmIERhbmllbDoKPiA+Cj4gPiBUaGlzIGluY2x1ZGUgZHBpIHBpbiBtb2RlIHN3YXAsIGNvbmZp
ZyBtaXBpX3R4IGN1cnJlbnQgYW5kIGltcGVkYW5jZSwKPiA+IGNvbnZlcnQgbXRrLWRwaSB0byBk
cm1fYnJpZGdlIEFQSSwgYW5kIHNvbWUgZml4dXAuCj4gPgo+ID4gVGhlIGZvbGxvd2luZyBjaGFu
Z2VzIHNpbmNlIGNvbW1pdCA4ZjNkOWYzNTQyODY3NDVjNzUxMzc0ZjVmMWZjYWZlZTZiM2YzMTM2
Ogo+ID4gICBMaW51eCA1LjctcmMxICgyMDIwLTA0LTEyIDEyOjM1OjU1IC0wNzAwKQo+ID4gYXJl
IGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cj4gPiAgIHNzaDovL2dpdEBnaXRv
bGl0ZS5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9jaHVua3VhbmcuaHUvbGlu
dXguZ2l0Cj4gPiB0YWdzL21lZGlhdGVrLWRybS1uZXh0LTUuOAo+Cj4gWW91ciBwdWxsIHJlcXVl
c3QgaXMgYmFkbHkgbGluZSB3cmFwcGVkLCBhbmQgSSBkb24ndCBoYXZlIGFuIHNzaCBhY2NvdW50
Cj4gb24gdGhhdCBtYWNoaW5lIC4uLiBNYXliZSBhaXJsaWVkIGhhcywgbm90IHN1cmUuIGh0dHA6
Ly8gb3IgZ2l0Oi8vIHdvdWxkCj4gYmUgYSBidW5jaCBlYXNpZXIsIGFuZCB0aGVuIHNpZ25lZCB0
aGF0LiBQbHVzIGlmIHlvdXIgcHVsbCBpc24ndAo+IGxpbmV3cmFwcGVkIHdlIGNhbiBzdHVmZiBp
dCBkaXJlY3RseSBpbnRvIHNjcmlwdHMuCgpUaGlzIGlzIG15IGZpcnN0IHRpbWUgdG8gcmVxdWVz
dC1wdWxsIG9uIHRoYXQgc2VydmVyLCBJIHdvdWxkIHRyeSB0bwptYWtlIHRoaW5ncyBlYXNpZXIg
YW5kIHJlc2VuZCByZXF1ZXN0LgoKPgo+IEFsbCBJIHF1aWNrbHkgd2FudGVkIHRvIHF1aWNrbHkg
Y2hlY2sgaXMgeW91ciBuZXcgYnJpZGdlIGRyaXZlci4KPiAtIHdhcyB0aGF0IHJldmlld2VkL2Fj
a2VkIGJ5IGJyaWRnZSBtYWludGFpbmVycz8gVGhlcmUncyBhIGxvdCBvZiByZXdvcmsKPiAgIGdv
aW5nIG9uIHJpZ2h0IG5vdywgbmVlZCB0byBtYWtlIHN1cmUgd2UncmUgbm90IGFkZGluZyBuZXcg
YnJpZGdlCj4gICBkcml2ZXJzIHRoYXQgdXNlIG9sZCBzdHlsZQo+Cj4gLSB3aHkgaXMgdGhpcyBi
cmlkZ2UgZHJpdmVyIG5vdCBpbiBkcm0vYnJpZGdlLyBkaXJlY3Rvcnk/CgpJIGRvZXMgbm90IG5v
dGljZSB0aGF0IGRybSBicmlkZ2UgaGFzIG1haW50YWluZXIsIEkgd291bGQgZHJvcCBicmlkZ2UK
c2VyaWVzIGZpcnN0LCBhbmQgd2FpdCBmb3IgYWNrIG9mIGJyaWRnZSBtYWludGFpbmVyLgptdGst
ZHBpIGlzIGFsc28gYSBkcm0gZW5jb2RlciwgYW5kIEkgZ3JlcCAnZHJtX2JyaWRnZV9hZGQnIGFu
ZCBmaW5kCm1hbnkgb3V0IHNpZGUgb2YgYnJpZGdlIGZvbGRlciwgc28gbWF5YmUgd2UgbmVlZCB0
byBkaXNjdXNzIG1vcmUgYWJvdXQKdGhpcy4KClJlZ2FyZHMsCkNodW4tS3VhbmcuCgo+Cj4gQ2hl
ZXJzLCBEYW5pZWwKPgo+ID4gZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDIzYjI5ZmY5
ZjEzYThmYjVhMTJiZTlmZWRiOGI2MTRiOWRlZGU0NmE6Cj4gPiAgIGRybS9tZWRpYXRlazogRWxp
bWluYXRlIHRoZSBtYWdpYyBudW1iZXIgaW4gYXJyYXkgc2l6ZSAoMjAyMC0wNS0xMAo+ID4gMDk6
MDg6MzAgKzA4MDApCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiBNZWRpYXRlayBEUk0gTmV4dCBmb3IgTGludXgg
NS44Cj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4gPiBBbmFuZCBLIE1pc3RyeSAoMSk6Cj4gPiAgICAgICBkcm0vbWVk
aWF0ZWs6IFN0b3AgaXRlcmF0aW5nIGRtYSBhZGRyZXNzZXMgd2hlbiBzZ19kbWFfbGVuKCkgPT0g
MAo+ID4gQmVybmFyZCBaaGFvICgyKToKPiA+ICAgICAgIGRybS9tZWRpYXRlazogQ2xlYW51cCBj
b2Rpbmcgc3R5bGUgaW4gbWVkaWF0ZWsgYSBiaXQKPiA+ICAgICAgIGRybS9tZWRpYXRlazogRWxp
bWluYXRlIHRoZSBtYWdpYyBudW1iZXIgaW4gYXJyYXkgc2l6ZQo+ID4gQ2h1bi1LdWFuZyBIdSAo
MSk6Cj4gPiAgICAgICBNZXJnZSB0YWcgJ3Y1LjctbmV4dC1kcm0tc3RhYmxlJyBvZgo+ID4gc3No
Oi8vZ2l0b2xpdGUua2VybmVsLm9yZy8uLi4vbWF0dGhpYXMuYmdnL2xpbnV4IGludG8KPiA+IG1l
ZGlhdGVrLWRybS1uZXh0Cj4gPiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhICg3KToKPiA+ICAgICAg
IGR0LWJpbmRpbmdzOiBtZWRpYXRlazogVXBkYXRlIG1tc3lzIGJpbmRpbmcgdG8gcmVmbGVjdCBp
dCBpcyBhCj4gPiBzeXN0ZW0gY29udHJvbGxlcgo+ID4gICAgICAgc29jIC8gZHJtOiBtZWRpYXRl
azogTW92ZSByb3V0aW5nIGNvbnRyb2wgdG8gbW1zeXMgZGV2aWNlCj4gPiAgICAgICBzb2MgLyBk
cm06IG1lZGlhdGVrOiBGaXggbWVkaWF0ZWstZHJtIGRldmljZSBwcm9iaW5nCj4gPiAgICAgICBk
cm0vbWVkaWF0ZWs6IFJlbW92ZSBkZWJ1ZyBtZXNzYWdlcyBmb3IgZnVuY3Rpb24gY2FsbHMKPiA+
ICAgICAgIGRybS9tZWRpYXRlazogbXRrX2RwaTogUmVuYW1lIGJyaWRnZSB0byBuZXh0X2JyaWRn
ZQo+ID4gICAgICAgZHJtL21lZGlhdGVrOiBtdGtfZHBpOiBDb252ZXJ0IHRvIGJyaWRnZSBkcml2
ZXIKPiA+ICAgICAgIGRybS9tZWRpYXRlazogbXRrX2RwaTogVXNlIHNpbXBsZSBlbmNvZGVyCj4g
PiBIc2luLVlpIFdhbmcgKDEpOgo+ID4gICAgICAgZHJtL21lZGlhdGVrOiBGaXggZGV2aWNlIHBh
c3NlZCB0byBjbWRxCj4gPiBKaXRhbyBTaGkgKDYpOgo+ID4gICAgICAgZHQtYmluZGluZ3M6IGRp
c3BsYXk6IG1lZGlhdGVrOiBjb250cm9sIGRwaSBwaW5zIG1vZGUgdG8gYXZvaWQgbGVha2FnZQo+
ID4gICAgICAgZHJtL21lZGlhdGVrOiBzZXQgZHBpIHBpbiBtb2RlIHRvIGdwaW8gbG93IHRvIGF2
b2lkIGxlYWthZ2UgY3VycmVudAo+ID4gICAgICAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IG1lZGlh
dGVrOiBhZGQgcHJvcGVydHkgdG8gY29udHJvbCBtaXBpIHR4Cj4gPiBkcml2ZSBjdXJyZW50Cj4g
PiAgICAgICBkdC1iaW5kaW5nczogZGlzcGxheTogbWVkaWF0ZWs6IGdldCBtaXBpdHggY2FsaWJy
YXRpb24gZGF0YSBmcm9tIG52bWVtCj4gPiAgICAgICBkcm0vbWVkaWF0ZWs6IGFkZCB0aGUgbWlw
aXR4IGRyaXZpbmcgY29udHJvbAo+ID4gICAgICAgZHJtL21lZGlhdGVrOiBjb25maWcgbWlwaXR4
IGltcGVkYW5jZSB3aXRoIGNhbGlicmF0aW9uIGRhdGEKPiA+IE1hdHRoaWFzIEJydWdnZXIgKDIp
Ogo+ID4gICAgICAgZHJtL21lZGlhdGVrOiBPbWl0IHdhcm5pbmcgb24gcHJvYmUgZGVmZXJzCj4g
PiAgICAgICBjbGsgLyBzb2M6IG1lZGlhdGVrOiBNb3ZlIG10ODE3MyBNTVNZUyB0byBwbGF0Zm9y
bSBkcml2ZXIKPiA+IFl1ZUhhaWJpbmcgKDEpOgo+ID4gICAgICAgZHJtL21lZGlhdGVrOiBGaXgg
S2NvbmZpZyB3YXJuaW5nCj4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9tZWRpYXRlay9tZWRpYXRlayxtbXN5cy50eHQgICB8ICAgNyArLQo+ID4gIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRwaS50eHQg
fCAgIDYgKwo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21l
ZGlhdGVrL21lZGlhdGVrLGRzaS50eHQgfCAgMTAgKysKPiA+ICBkcml2ZXJzL2Nsay9tZWRpYXRl
ay9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsK
PiA+ICBkcml2ZXJzL2Nsay9tZWRpYXRlay9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAxICsKPiA+ICBkcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQ4
MTczLW1tLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiA+IDE0NiArKysrKysr
KysrKysrKysrKysrCj4gPiAgZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10ODE3My5jICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gPiAxMDQgLS0tLS0tLS0tLS0tLS0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICAxICsKPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rp
c3BfY29sb3IuYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA1ICstCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX292bC5jICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgNSArLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9yZG1h
LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDUgKy0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RwaS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwK
PiA+IDEyNyArKysrKysrKysrLS0tLS0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHJtX2NydGMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMjcgKystLQo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2RkcC5jICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfAo+ID4gMjU5ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kZHAuaCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICA3IC0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRr
X2RybV9kcnYuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiA+ICA1MCArKystLS0t
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmggICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgMiArLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHJtX2dlbS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKwo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDggKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWku
YyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIyICsrLQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9tZWRpYXRlay9tdGtfbWlwaV90eC5jICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfAo+ID4gIDU0ICsrKysrKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX21p
cGlfdHguaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA0ICsKPiA+ICBkcml2ZXJz
L2dwdS9kcm0vbWVkaWF0ZWsvbXRrX210ODE4M19taXBpX3R4LmMgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDI4ICsrKysKPiA+ICBkcml2ZXJzL3NvYy9tZWRpYXRlay9LY29uZmlnICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA4ICsrCj4gPiAgZHJpdmVycy9zb2Mv
bWVkaWF0ZWsvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgMSArCj4gPiAgZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8Cj4gPiAzMzcgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKPiA+ICBpbmNsdWRlL2xpbnV4L3NvYy9tZWRpYXRlay9tdGst
bW1zeXMuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIwICsrKwo+ID4gIDI3IGZp
bGVzIGNoYW5nZWQsIDc3OCBpbnNlcnRpb25zKCspLCA0NzYgZGVsZXRpb25zKC0pCj4gPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDgxNzMtbW0uYwo+ID4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstbW1zeXMuYwo+ID4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3NvYy9tZWRpYXRlay9tdGstbW1zeXMu
aAo+Cj4gLS0KPiBEYW5pZWwgVmV0dGVyCj4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBv
cmF0aW9uCj4gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1t
ZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
