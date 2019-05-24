Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841E129216
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 09:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ThNhoBQRISjOmJkdyaLw8wZgZqwo9kXXIgIzcuRsck=; b=UQdNFPecd9kbKs
	dm2H1zT590eq9T/Uv7/Vlsr4nOar/07P8KMnJp5XFJD1ypAKrVhhPyV340LiTrFRbmKcNa+iCvXSW
	O8v98pq0x9hGJoZbho0YP/N49GSpdADhhutjKeaNP5fZM7YiuBH82sUtUmax7uZLqVtg1w6ZoxS8N
	UXyEjKWHiyXYJSeVXPCNFUubHRj4rG7Eh9AeGz5qmWT6KqqbPiPqPIUEZhN2AVXmcGpZypKQGgJHA
	tNX7E0+xHjH+cMAfB7Sj7UOTa2b/nUdmAJctY9mpl2fUmDmL+jQ7U4v34HT6kX+uXQM1ys6zUXrcm
	mEfyxeVPOZ6ahYTUIwug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU50o-0000HJ-Se; Fri, 24 May 2019 07:53:10 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU50e-00008b-DT; Fri, 24 May 2019 07:53:01 +0000
Received: by mail-qk1-f193.google.com with SMTP id d10so6090647qko.4;
 Fri, 24 May 2019 00:52:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QmIWS/gC+fa19PxSGHgrqfgpvxjgo7flHvAf9Hy7FNk=;
 b=Q2dcJfO1Lu/IcYtBkLGHcedolToQw/YXoDf0rEvc7/sFnquOxEDccCs2gxnQ84G5qv
 lPo2ZFubcVaBoC5kVRYYpXxw/QcKp4jYbbuJiCD2KuW7YHkEO7GG0mO2BTFRr+EJm6NE
 vl98+Hl/vPKUEP23RHNJXSshjDH/tfAVwe6ouVeFFYKN3cwX0iYvZxANQ4GfVl7U3dSE
 o+Ntq53+fFsZliX1cbsJOYIIvk+bKLF0zzHHaYtAAB5YNy8tBPXWC3UG7umY5AFlRMvF
 jyzX+2ifJsjL86vOjOioG8lmqY4K1Vx2HzIwK3e9QBc6VNojoIJgR9tiDvNrpEYKqN5y
 wuUQ==
X-Gm-Message-State: APjAAAXzLQVryG6Mk+x6k/E/O/W4z+j24ilRctNYeXTQearKHrknOOF6
 KHjP6hcPjZZeOe9GPG1SHR6LtZn0bhmmTSEd2so=
X-Google-Smtp-Source: APXvYqxaxfnh6nmAp0lGugPobsxiW7O+QwmUArkhVA0P3guGuBwge1kPVPSxfQEQDjERy7qUg4QYOPiGt1HNqd9w5y4=
X-Received: by 2002:ac8:19a7:: with SMTP id u36mr2812318qtj.7.1558684379039;
 Fri, 24 May 2019 00:52:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190507092020.1917-1-xiaolei.li@mediatek.com>
 <20190507092020.1917-2-xiaolei.li@mediatek.com>
In-Reply-To: <20190507092020.1917-2-xiaolei.li@mediatek.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 24 May 2019 09:52:42 +0200
Message-ID: <CAK8P3a3d-2U=hpb0P0+W-eZ0cviwKVwy6dWvHbhBCgF4CJUWKA@mail.gmail.com>
Subject: Re: [RFC PATCH v4 1/1] mtd: rawnand: mtk: Re-license MTK NAND driver
 as Dual MIT/GPL
To: Xiaolei Li <xiaolei.li@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_005300_457838_FA7BC570 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Ryder Lee <ryder.lee@mediatek.com>, srv_heupstream@mediatek.com,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Richard Weinberger <richard@nod.at>, Miquel Raynal <miquel.raynal@bootlin.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, jorge.ramirez-ortiz@linaro.org,
 yingjoe.chen@mediatek.com, boris.brezillon@collabora.com,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Wei Yongjun <weiyongjun1@huawei.com>, yellowriver2010@hotmail.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 peterpandong@micron.com, rogercc.lin@mediatek.com,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgNywgMjAxOSBhdCAxMToyMCBBTSBYaWFvbGVpIExpIDx4aWFvbGVpLmxpQG1l
ZGlhdGVrLmNvbT4gd3JvdGU6Cj4KPiBJdCBpcyB3YW50ZWQgdG8gdXNlIE1USyBOQU5EIGRyaXZl
ciB3aXRoIEdQTC0yLjAgb3IgTUlUIGxpY2Vuc2UuCj4gQnV0IG5vdyBpdCBpcyBvbmx5IGxpY2Vu
c2VkIGFzIEdQTC0yLjAuCj4gU28gcmUtbGljZW5zZSBpdCBhcyBkdWFsIE1JVC9HUEwgYW5kIHJl
cGxhY2UgbGljZW5zZSB0ZXh0IHdpdGgKPiBTUERYIHRhZy4KPgo+IFNpZ25lZC1vZmYtYnk6IFhp
YW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPgo+IEFja2VkLWJ5OiBKb3JnZSBSYW1p
cmV6LU9ydGl6IDxqb3JnZS5yYW1pcmV6LW9ydGl6QGxpbmFyby5vcmc+Cj4gQWNrZWQtYnk6IFJ5
ZGVyIExlZSA8cnlkZXIubGVlQG1lZGlhdGVrLmNvbT4KPiBBY2tlZC1ieTogUmFmYcWCIE1pxYJl
Y2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IEFja2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwu
cmF5bmFsQGJvb3RsaW4uY29tPgo+IEFja2VkLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJy
ZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+IEFja2VkLWJ5OiBSb2dlckNDIExpbiA8cm9nZXJjYy5s
aW5AbWVkaWF0ZWsuY29tPgoKQWNrZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+
CgpTb3JyeSBmb3IgbWlzc2luZyB0aGlzIGVhcmxpZXIuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGlu
dXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
