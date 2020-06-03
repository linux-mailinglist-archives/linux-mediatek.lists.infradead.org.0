Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B791ED1FF
	for <lists+linux-mediatek@lfdr.de>; Wed,  3 Jun 2020 16:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCQzGhYgv5pXY6IT71yxqYNHKQ7pn/8IpzL8bmUMzLc=; b=gNcnxBK4pD7mnN
	Ri+bFqjSqQels5urXYKaFbe6b0DdjC3nH3idB3jpjpzzw0sdOTrzaBkYK6xNcW9ck11lKvrqPtCQk
	K85ZUmcAv6KBqHp/I4Jizh7qnbAVuzyVqywfs3mdnbZEx5n+ybOlnFVpskUQZaJQwLTft09gCsMm7
	7w9FVo27/f6raSYSQjAR/8ik4eqoplZ4xbtPBi2pgG9GRWCVr9Rr6mXLIbbVRoIJjZGhUD/IEv1Jb
	QdicvtAH9BnOWI1WZZUJJmHfzofKwcz1Vn8DlgKy+yOtyCnUqc4tTn/aaucqYRyajxam63IW6LAPD
	glWyyjWuk6JbczE1YQXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgUIP-00038X-BF; Wed, 03 Jun 2020 14:23:09 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgUIM-00037u-Pa; Wed, 03 Jun 2020 14:23:08 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 4CA9A2000F;
 Wed,  3 Jun 2020 14:23:02 +0000 (UTC)
Date: Wed, 3 Jun 2020 16:23:01 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH] mtd: rawnand: mtk: Convert the driver to exec_op()
Message-ID: <20200603162301.705af422@xps13>
In-Reply-To: <20200518170321.321697-1-boris.brezillon@collabora.com>
References: <20200518170321.321697-1-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_072306_962324_187019F3 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Xiaolei Li <xiaolei.li@mediatek.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGVsbG8sCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3
cm90ZSBvbiBNb24sIDE4IE1heQoyMDIwIDE5OjAzOjIxICswMjAwOgoKPiBMZXQncyBjb252ZXJ0
IHRoZSBkcml2ZXIgdG8gZXhlY19vcCgpIHRvIGhhdmUgb25lIGxlc3MgZHJpdmVyIHJlbHlpbmcK
PiBvbiB0aGUgbGVnYWN5IGludGVyZmFjZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6
aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jIHwgMTE2ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3MSBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlvbnMoLSkK
CkFueW9uZSB0byB0ZXN0IHRoaXMgc2VyaWVzPwoKSWYgbm90IEkgd2lsbCBhcHBseSBpdCBhcyBz
b29uIGFzIHY1LjgtcmMxIGlzIHJlbGVhc2VkLgoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFp
bGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
