Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F8A19A26A
	for <lists+linux-mediatek@lfdr.de>; Wed,  1 Apr 2020 01:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMwTW+mu3l8wrEYovkKQrvR1tOkydQqwDGYAT58xLFM=; b=bZBkM+ZwYxnvcX
	kGERi+84IR9fs9CSdWHf9Dn93gJl8QKSwv/bMtK2iCq+RuZAiKl12cJrLZDDKOE0kO/auPnzKHwEL
	KadcOUOB1whH8IM6AElxrSp/HP50O1Uoharr415in0GY5hTzaKXI8IW8F+ttiro1WmU7zf39JFMJX
	d0TN0dUVnGWBxqC2FF80lTu5hSo1uvsnlAzBzPdeHjBV4+WaR77NPrQiQaII1Q6A1LtYr36VI3NxK
	764As3Xy7il+yO+4+hhkgBMYk0ouNpmhnTs7C73KD1aH9DG40DayVANRSCdtWC9Yj3rdy5s7MY0Nz
	Ogg1nDdiFePnDSaqlCQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJQCa-0008Tp-SR; Tue, 31 Mar 2020 23:21:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJQCL-0008J2-8y; Tue, 31 Mar 2020 23:21:34 +0000
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD3C720BED;
 Tue, 31 Mar 2020 23:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585696893;
 bh=WsfCUnixUcuW/Hxxf0cDgSU2hILcghynbB0/ocxWSWA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BSUjiGPdigzSvDZ4tnofPNAagDsoCyjzK8WO8VypFo7BVQKLeb4MLtGK3iPKrLUPR
 GgnXsa6mIIMc6O+ZbIVKGdmokbqi1x1a5NNOkk0Hx1vjJB8QtCAhiM0wztg8SGQFMT
 h+fhYRJLiqdNUP+02qSloeg/C6wipkNF1IgHeDNQ=
Received: by mail-ed1-f52.google.com with SMTP id v1so27423884edq.8;
 Tue, 31 Mar 2020 16:21:32 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1HjMcdoo+Vym19Mi7djLQWpRfXBcmhn7nQTjrFISrZ0g1Tm+Fc
 WYVMMohKSrGHhjXEiyUCdrXOEZfSeiUmPNI3XQ==
X-Google-Smtp-Source: ADFU+vv3TGW/kwb5HMH/cRaDee3j5i5z0vjv/4XsV67d1Idq9Hu6wbNbfu8nd0HzCER7YmS8mN6zlRD2dLxeiQPcfX4=
X-Received: by 2002:a17:906:124f:: with SMTP id
 u15mr17040650eja.360.1585696891114; 
 Tue, 31 Mar 2020 16:21:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200331214609.1742152-1-enric.balletbo@collabora.com>
In-Reply-To: <20200331214609.1742152-1-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 1 Apr 2020 07:21:20 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-=y+t1tDnV_muYs9KS_-mQK9UtRzHe_O1AnStB1XqrLg@mail.gmail.com>
Message-ID: <CAAOTY_-=y+t1tDnV_muYs9KS_-mQK9UtRzHe_O1AnStB1XqrLg@mail.gmail.com>
Subject: Re: [PATCH 1/4] soc: mediatek: Enable mmsys driver by default if
 Mediatek arch is selected
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_162133_355071_5390891E 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Matthias Brugger <mbrugger@suse.com>,
 Stephen Boyd <sboyd@kernel.org>, matthias.bgg@kernel.org,
 linux-kernel@vger.kernel.org, ulrich.hecht+renesas@gmail.com,
 Nicolas Boichat <drinkcat@chromium.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, CK Hu <ck.hu@mediatek.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ05pyIMeaXpSDpgLHkuIkg5LiK5Y2INTo0NuWvq+mBk++8mgo+
Cj4gVGhlIG1tc3lzIGRyaXZlciBzdXBwb3J0cyBvbmx5IE1UODE3MyBkZXZpY2UgZm9yIG5vdywg
YnV0IGxpa2Ugb3RoZXIgc3lzdGVtCj4gY29udHJvbGxlcnMgaXMgYW4gaW1wb3J0YW50IHBpZWNl
IGZvciBvdGhlciBNZWRpYXRlayBkZXZpY2VzLiBBY3R1YWxseQo+IGl0IGRlcGVuZHMgb24gdGhl
IG10ODE3MyBjbG9jayBzcGVjaWZpYyBkcml2ZXIgYnV0IHRoYXQgZGVwZW5kZW5jeSBpcwo+IG5v
dCByZWFsIGFzIGl0IGNhbiBidWlsZCB3aXRob3V0IHRoZSBjbG9jayBkcml2ZXIuIEluc3RlYWQg
b2YgZGVwZW5kcyBvbgo+IGEgc3BlY2lmaWMgbW9kZWwsIG1ha2UgdGhlIGRyaXZlciBkZXBlbmRz
IG9uIHRoZSBnZW5lcmljIEFSQ0hfTUVESUFURUsgYW5kCj4gZW5hYmxlIGJ5IGRlZmF1bHQgc28g
b3RoZXIgTWVkaWF0ZWsgZGV2aWNlcyBjYW4gc3RhcnQgdXNpbmcgaXQgd2l0aG91dAo+IGZsb29k
IHRoZSBLY29uZmlnLgoKSSd2ZSBubyBpZGVhIGFib3V0ICdlbmFibGUgYnkgZGVmYXVsdCcuIEZv
ciBzb21lIHByb2R1Y3Qgd2hpY2ggaGFzIG5vCmRpc3BsYXksIGl0IGRvZXMgbm90IG5lZWQgbW1z
eXMgcGFydGl0aW9uIChpbmNsdWRlIGRybSBhbmQgbWRwKS4gQnV0CnRoZSBjb2RlIHNpemUgb2Yg
bW1zeXMgaXMgbm90IGxhcmdlLCBzbyBpdCBzZWVtcyBlbmFibGUgaXQgYnkgZGVmYXVsdApoYXMg
bm8gaGFybS4gSnVzdCBwcm92aWRlIHNvbWUgaW5mb3JtYXRpb24gZm9yIHlvdS4KClJlZ2FyZHMs
CkNodW4tS3VhbmcuCgo+Cj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8
ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPiAtLS0KPgo+ICBkcml2ZXJzL3NvYy9tZWRp
YXRlay9LY29uZmlnIHwgMyArLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAy
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL21lZGlhdGVrL0tjb25m
aWcgYi9kcml2ZXJzL3NvYy9tZWRpYXRlay9LY29uZmlnCj4gaW5kZXggZTg0NTEzMzE4NzI1Li41
OWE1NmNkNzkwZWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2MvbWVkaWF0ZWsvS2NvbmZpZwo+
ICsrKyBiL2RyaXZlcnMvc29jL21lZGlhdGVrL0tjb25maWcKPiBAQCAtNDYsOCArNDYsNyBAQCBj
b25maWcgTVRLX1NDUFNZUwo+Cj4gIGNvbmZpZyBNVEtfTU1TWVMKPiAgICAgICAgIGJvb2wgIk1l
ZGlhVGVrIE1NU1lTIFN1cHBvcnQiCj4gLSAgICAgICBkZXBlbmRzIG9uIENPTU1PTl9DTEtfTVQ4
MTczX01NU1lTCj4gLSAgICAgICBkZWZhdWx0IENPTU1PTl9DTEtfTVQ4MTczX01NU1lTCj4gKyAg
ICAgICBkZWZhdWx0IEFSQ0hfTUVESUFURUsKPiAgICAgICAgIGhlbHAKPiAgICAgICAgICAgU2F5
IHllcyBoZXJlIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgTWVkaWFUZWsgTXVsdGltZWRpYQo+ICAg
ICAgICAgICBTdWJzeXN0ZW0gKE1NU1lTKS4KPiAtLQo+IDIuMjUuMQo+Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LW1lZGlhdGVrIG1h
aWxpbmcgbGlzdAo+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRl
ayBtYWlsaW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
