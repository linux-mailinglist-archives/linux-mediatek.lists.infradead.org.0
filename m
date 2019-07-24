Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A32737B6
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 21:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BVh01Eb258TPwH5HydZ5OqOn9aII9GTsgv+IgI8gAso=; b=NuD/TI1G8N+eVD
	6K8T32BCzHcnegpab2CU0SkPiVwr+UdvFTeSglQ0yc4HO/pbMBrflyNMrk9HtMqA76N6ZqoO6hm/i
	HVv12+C3Uo/FB28h0o2UHbvCmHPsmtsyOfiXeSA6sZ1E8+hozJZz13lAA3WacQuC8V1plDH0mZQad
	4qolz7S/t32O5z6kUjgjNaV8HodmPzh5UraDfkyoNkkJOQYU1B+b7fSI5/6BLOGtygPaI+NoOWc+U
	qZS8xwHNYEsM7Vp1OfaglZLi7wpkdPMUpZZXGXRi+vT4qIPDx4dOcE2FAhJIbQ3qI3xproR0EozA0
	8XBwM03KGdxm6+S9+wRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMml-0000q7-Nj; Wed, 24 Jul 2019 19:18:47 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMmg-0000p9-5g
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 19:18:45 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 0FA3B5FD5A;
 Wed, 24 Jul 2019 21:18:38 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="qk4AZsEl"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id B55091D25CA9;
 Wed, 24 Jul 2019 21:18:37 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com B55091D25CA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1563995917;
 bh=weikOzuhvuizQxHFtpYezAOwp5TBaaOl/uv7IuspKpQ=;
 h=From:To:Cc:Subject:Date:From;
 b=qk4AZsEllY3v75JVxR6ajoFWPeuoPeo2b6yXCZTaYGB8drhLwBYb6jjhjdejvvZ8i
 XX/8uhoWK57x3pVsZjs/vBQyo1Ghxy5qYRSesADZgTRsKt9i8TUbEpHjfaoy5Fgqx2
 BwLEt2NsYOUnEiXi8ZD7fiYuvop1rEDc4M/nrMD5f3EHxIv3wfla0tQqKcyUzmjZat
 pmE92U+n8xil0eXTHse1/d580opj0BS6+6P6ZIalndBhHrWbtypE9Q8qSWufBiu9Sb
 GXdZYezkOylEG7wHzkfG/FL7mGfh5WTYuAz/YcIBgj5yV0ePzP1ECBE6DUpCA5NbOw
 b6GxLdGQ+0TNA==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/3] net: ethernet: mediatek: convert to phylink.
Date: Wed, 24 Jul 2019 21:17:23 +0200
Message-Id: <20190724191725.3903-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_121842_775535_EB53F533 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Frank Wunderlich <frank-w@public-files.de>,
 Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Russell King <linux@armlinux.org.uk>,
 linux-mips@vger.kernel.org,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

VGhlc2UgcGF0Y2hlcyBjb252ZXJ0cyBtZWRpYXRlayBkcml2ZXIgdG8gcGh5bGluayBhcGkuClNH
TUlJIHN1cHBvcnQgaXMgb25seSB0ZXN0ZWQgd2l0aCBmaXhlZCBzcGVlZCBvZiAyLjVHYml0IG9u
IGEgQmFuYW5hcGkgUjY0LgpGcmFuayB0ZXN0ZWQgdGhlc2UgcGF0Y2hlcyBvbiB0aGlzIEJhbmFu
YXBpIFI2NCAobXQ3NjIyKSBhbmQKQmFuYW5hcGkgUjIgKG10NzYyMykuClRlc3RlZCBvbiBoYXJk
d2FyZTogbXQ3NjIxLCBtdDc2MjIgYW5kIG10NzYyMy4KClJlbsOpIHZhbiBEb3JzdCAoMyk6CiAg
bmV0OiBldGhlcm5ldDogbWVkaWF0ZWs6IEFkZCBiYXNpYyBQSFlMSU5LIHN1cHBvcnQKICBuZXQ6
IGV0aGVybmV0OiBtZWRpYXRlazogUmUtYWRkIHN1cHBvcnQgU0dNSUkKICBkdC1iaW5kaW5nczog
bmV0OiBldGhlcm5ldDogVXBkYXRlIG10NzYyMiBkb2NzIGFuZCBkdHMgdG8gcmVmbGVjdCB0aGUK
ICAgIG5ldyBwaHlsaW5rIEFQSQoKIC4uLi9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWssc2dtaWlzeXMu
dHh0ICAgICAgICB8ICAgMiAtCiAuLi4vZHRzL21lZGlhdGVrL210NzYyMi1iYW5hbmFwaS1icGkt
cjY0LmR0cyAgfCAgMjggKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLmR0
c2kgICAgICB8ICAgMSAtCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9LY29uZmlnICAg
ICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfcGF0
aC5jICB8ICA3MiArLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29j
LmMgICB8IDQ4NiArKysrKysrKysrKystLS0tLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlh
dGVrL210a19ldGhfc29jLmggICB8ICA2NyArKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlh
dGVrL210a19zZ21paS5jICAgICB8ICA2NSArKy0KIDggZmlsZXMgY2hhbmdlZCwgNDM2IGluc2Vy
dGlvbnMoKyksIDI4NyBkZWxldGlvbnMoLSkKClRvOiA8bmV0ZGV2QHZnZXIua2VybmVsLm9yZz4K
Q2M6IFNlYW4gV2FuZyA8c2Vhbi53YW5nQG1lZGlhdGVrLmNvbT4KQ2M6IEFuZHJldyBMdW5uIDxh
bmRyZXdAbHVubi5jaD4KQ2M6IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4K
Q2M6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgpDYzogUm9iIEhlcnJp
bmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCkNj
OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KQ2M6IFJ1c3NlbGwg
S2luZyA8bGludXhAYXJtbGludXgub3JnLnVrPgpDYzogbGludXgtbWVkaWF0ZWtAbGlzdHMuaW5m
cmFkZWFkLm9yZwpDYzogbGludXgtbWlwc0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IEpvaG4gQ3Jpc3Bp
biA8am9obkBwaHJvemVuLm9yZz4KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51
eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
