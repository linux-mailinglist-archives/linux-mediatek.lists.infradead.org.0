Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DFA1E4B68
	for <lists+linux-mediatek@lfdr.de>; Wed, 27 May 2020 19:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYWvUkxVWhwjp//JRFPM5fbxA30MPjGq2CV3ZYljxJk=; b=aFB/Nzq2tuX0Lp
	CsvDcxxqCxJcJ3ehnNicgtuXKAkfkm3ktXblTH9RtJK9fnHvVnU3uQOWuJkOXexBL6kZgSL6YqaFr
	I/64VW4TewAUGb+BkYmOF8YnxffvDbykK5JvFjFl6L78OVz9KUulDAmXRt841V/6pf0E51SN11yeD
	2aBGsyzoyN4flQ33FJAp4SsPBbMZjq/HfrcXfd631jQzQ0pncfH9cB4CkuCC8guBSzLVxBSSDTUcY
	f6cvN8Mmyj9Jjee/w51oYOWG6kJDZWYD2cBlw3wo1Dh7lKvXTITWdZjTsq69lU9QSqLZVjHBwsUqJ
	j7mmduLyA6nJXM1iIGlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzVz-00070L-WA; Wed, 27 May 2020 17:06:52 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzVn-0006rz-As
 for linux-mediatek@lists.infradead.org; Wed, 27 May 2020 17:06:41 +0000
Received: by mail-qt1-x843.google.com with SMTP id c12so9908974qtq.11
 for <linux-mediatek@lists.infradead.org>; Wed, 27 May 2020 10:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2Lhu2ZcEcwwrOR37CL1brFOzPiOBufKSZIC4FQQB508=;
 b=yPtc2Wor4aOKqJgM9mCqbJiYDKwPnGCFGYXNxj12SXW369UtlgQZGLVdXV30NwYzZO
 xOPRn6AmKsb53FSpNBpXSjdR7FkAeWtZQfeFNThPDTZ/zYr+b0vRman0zIjoUfQoW5qZ
 xIHzSEuTDr68Xsyul5g7SSQnsI9O8JPUFz/TkKbNQ6fsO4MZ5Bt+HVOsqzKnZ7XF1L5l
 BexiMBwU9qQeCUB+L9tgJGedJHoQwuRNZso/rQIerZHTtzLdBZUdqde0hGTbv4aQxgO6
 HAUaM1GCCknfDzepc8ifaHScr+mr2SbwKX0HYEQRZMyuMN9DVgeK5trZQbWZQrU5o+A8
 N6JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2Lhu2ZcEcwwrOR37CL1brFOzPiOBufKSZIC4FQQB508=;
 b=cru+/WggGb6kJElXf8Qd8NR4H6yn3WDsxAbPj4p6PMeoqOqjuoTj3iPw/NIW3gZqdg
 jjKwUiwpaxbbhrwBJ8UGWVJM5TonMDsnjclGRK93wQVuAohFEgxrGDmHdBDheo4tY9Bo
 2CrJHAazP1EPvJvwLlW9Eh3GZc/eKOvoxfheVlqr+u2cA/qN68PA55JJx8yQhsk3Zyu7
 75s6qZr1oVlAqSJxWGWgoJ1r3aK+WxeJP/lVd/zqYLCY7fIgQGAgkuNuwD04xNaKPLUA
 aj1WAANeqDLx4JIPTL4soBkuYWOnv3AshZFvWo2yWcL+788lcGkXl0CMn+3dAl+ElR9e
 MtsA==
X-Gm-Message-State: AOAM531bz0xBsmbcz4gfOdtRV4I2HK7+i3qJhTuXAKjssfQDAC7k4gkY
 0u48tp3E+NyBbi2Lh6aCNup0FSl1pgShvsKgnxg7tg==
X-Google-Smtp-Source: ABdhPJxROTeFQEz0Kn+FsZBDkx+YaHV9yORoWcoDONnKZ1wtXCH8knWZXCjA6zt9CuIPkUvqUfwQCzIFXddHejoBTyI=
X-Received: by 2002:ac8:718d:: with SMTP id w13mr5369489qto.131.1590599197938; 
 Wed, 27 May 2020 10:06:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200527161743.15972-1-brgl@bgdev.pl>
 <58fca7418c8d18392562aaad2c3a6634@kernel.org>
In-Reply-To: <58fca7418c8d18392562aaad2c3a6634@kernel.org>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 27 May 2020 19:06:26 +0200
Message-ID: <CAMpxmJVPB2+hD8mZ+Bo9=UVEist7BSJrZej5O9_9a_SmWyTanA@mail.gmail.com>
Subject: Re: [PATCH] irqchip/irq-mtk-sysirq: drop unnecessary spinlock
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_100639_433971_3BD5F251 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 LKML <linux-kernel@vger.kernel.org>, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

xZtyLiwgMjcgbWFqIDIwMjAgbyAxODozOCBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPiBu
YXBpc2HFgihhKToKPgo+IFNpZ2h0Li4uIERvIHlvdSByZWFsaXplIHRoYXQgdGhlc2UgdHdvIGxv
Y2tzIGRvIG5vdCBwcm90ZWN0IHRoZSBzYW1lCj4gdGhpbmcgYXQgYWxsPyBPbmUgcHJvdGVjdHMg
dGhlIGludGVycnVwdCBkYXRhLCBhbmQgdGhlIG90aGVyIHByb3RlY3RzCj4gdGhlIE1NSU8gcmVn
aXN0ZXIgd2hpY2ggaXMgc2hhcmVkIGJldHdlZW4gbXVsdGlwbGUgaW50ZXJydXB0cywgYW5kCj4g
b24gd2hpY2ggdGhlIGRyaXZlciBwZXJmb3JtcyBhIFJNVy4KPgo+IFRoYW5rcyB0byB0aGUgcmVt
b3ZhbCBvZiB0aGlzIHNwaW5sb2NrLCB0d28gaXJxX3NldF90eXBlKCkgY2FuIGV4ZWN1dGUKPiBp
biBwYXJhbGxlbCBhbmQgc2lsZW50bHkgY29ycnVwdCB0aGUgcmVnaXN0ZXIuIE5vdCBleGFjdGx5
IGFuCj4gaW1wcm92ZW1lbnQuCj4KCkVlayBJIG1pc3NlZCB0aGUgZmFjdCB0aGF0IHRoZSBpbnRl
cm5hbCBsb2NrIGlzIHRpZWQgdG8gdGhlIGNoaXAsIG5vdAp0aGUgaW50ZXJydXB0LiBJbiB0aGF0
IGNhc2UgSSdsbCBjb252ZXJ0IHRoaXMgc3BpbmxvY2sgdG8gYSByYXcgb25lLgoKQmFydAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0
ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
