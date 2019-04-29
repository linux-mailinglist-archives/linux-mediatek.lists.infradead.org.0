Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5E4DD15
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 09:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nD1pSEAHKhqoacKzp6sOz3AeMDYvHBXMjBbHrrSsxlI=; b=rFOPDbXwWpEVYK
	+IOXb1NmWYublM39PHao3yDjXnHmTKHDNW5gTLqVxrJmz3mKaIwbjlM9dNMHGm+P3qOdVyXsrGJCI
	aCU8gKhtFrfAzWfEcAH2eiKws5/qT+8RFJpGZRv/yOAgKdEPJTruClvLkH2rlujiGnzEry8JMbGnn
	0nZ3zXZGJwBX5G/J3d6uO6NOtpKiPtrShfpOTAjUeLfItdpl9TAzu5voKMSPZj+S/fdRTPQh7jabq
	1GP8fO2OgE2KXhJm6zS+sZtrpx1XGv9oM77GItVq5B9+kDbpgq6VFmuqsO4bWMLzQbIR5FTNHBo/R
	kxFt/xMY9wiWvXXzUEzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0zu-00040X-U6; Mon, 29 Apr 2019 07:46:46 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0zr-000403-Hs; Mon, 29 Apr 2019 07:46:45 +0000
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 57AE2100014;
 Mon, 29 Apr 2019 07:44:31 +0000 (UTC)
Date: Mon, 29 Apr 2019 09:44:30 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>
Subject: Re: [RFC PATCH v2 1/1] mtd: rawnand: mtk: Re-license MTK NAND
 driver as Dual MIT/GPL
Message-ID: <20190429094430.7715f7a1@xps13>
In-Reply-To: <20190425015552.42638-2-xiaolei.li@mediatek.com>
References: <20190425015552.42638-1-xiaolei.li@mediatek.com>
 <20190425015552.42638-2-xiaolei.li@mediatek.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_004643_737256_459D3F08 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: daniel.thompson@linaro.org, ryder.lee@mediatek.com,
 srv_heupstream@mediatek.com, richard@nod.at, yingjoe.chen@mediatek.com,
 jorge.ramirez-ortiz@linaro.org, boris.brezillon@bootlin.com,
 linux-mtd@lists.infradead.org, yellowriver2010@hotmail.com, rafal@milecki.pl,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgWGlhb2xlaSwKClhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPiB3cm90ZSBv
biBUaHUsIDI1IEFwciAyMDE5IDA5OjU1OjUyCiswODAwOgoKPiBJdCBpcyBhbGxvd2VkIHRvIHVz
ZSBNVEsgTkFORCBkcml2ZXIgd2l0aCBHUEwtMi4wIG9yIE1JVCBsaWNlbnNlLgo+IEJ1dCBub3cg
aXQgaXMgb25seSBsaWNlbnNlZCBhcyBHUEwtMi4wLgo+IFNvIHJlLWxpY2Vuc2UgaXQgYXMgZHVh
bCBNSVQvR1BMLgo+IAoKWW91IGFsc28gcmVtb3ZlIHRoZSBsaWNlbnNlIHRleHQgYW5kIHJlcGxh
Y2UgaXQgd2l0aCBhbiBTUERYIHRhZywKcGxlYXNlIGRlc2NyaWJlIHRoaXMgY2hhbmdlIHRvby4K
Cj4gU2lnbmVkLW9mZi1ieTogWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+Cj4g
QWNrZWQtYnk6IEpvcmdlIFJhbWlyZXotT3J0aXogPGpvcmdlLnJhbWlyZXotb3J0aXpAbGluYXJv
Lm9yZz4KPiAtLS0KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1l
ZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
