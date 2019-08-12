Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BE589CD7
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 13:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jetPN2EFq/jGMsWXpywb4FiqDUbHQyTgq628JysaobQ=; b=nccwePgZy/Q5fL
	hJp+2iSeJK5HEWuaDk41ZZoyLeGd1ObTJjUo1rX0cBgbYm3E2lgAp5zVX/dmEKcLkZ1TbYK4rnlAV
	fKcsLehK9jArUmDnkrLNxChANzxBCUlsLyCxSYgp7Jp2mcTacUefRyxjYmFDISTzvYH5aduTJGL1N
	8VT/VC4ZNggvba1o+xQWXSx07GDQ4J4eMwUSPcO/OtIk9hzaweGPOE+0x1RImO84ZX8UJOnNjsZeH
	pCXsSGFapDhT9cHnsY6bj9p2X6OBm0He7JZqHHiK9Uk0vrSAc2aapZFTrbI3R4vQrNyFJxth1qGHQ
	uR9cs3rP4KyfBzlcA63g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8VE-0001LE-TX; Mon, 12 Aug 2019 11:28:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8UH-0000XV-V0
 for linux-mediatek@lists.infradead.org; Mon, 12 Aug 2019 11:27:43 +0000
Received: by mail-wm1-x343.google.com with SMTP id f72so11785066wmf.5
 for <linux-mediatek@lists.infradead.org>; Mon, 12 Aug 2019 04:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=onzhCYAhu69mMnXiA3vphG6i/bzFEmmStwTFQWrMk/M=;
 b=LO5JKiJdEnUY8rCcJ2Dk0Cx7bVBWYoQfej9KzgsHgDhAkyu5Y53OGvPMUIyUokibZk
 Zq3jSti6K5bU1CJ1cDsfIvltT3cpISE22lYn65JOgKwL0eAC4njzGhFQOH0fs648Ld1p
 qR8D+vvuePJgI5XIy2e6QmnkXtoZxFh1k1FIf3QoOj5cPvSzuFIraDR9m/Ej91wJ9lHG
 MzA0WxkE8gJ7UbJ970D1xLiwDnkOp5LkugO3JNEFjh8jNRwZeWjGmQwOpSRQ1GJwXJxh
 xkJIHvQ7nBoS5vusCij3D0275J2K8rV9GTxNsY8GZDHgGh68O6JeV3dAqlT+aK6w4z9s
 4xhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=onzhCYAhu69mMnXiA3vphG6i/bzFEmmStwTFQWrMk/M=;
 b=GJPzzJdQ5GjDkz7+Am8TZbF7ih7txcPFLCgSG0ghIMF4sGInQoJuLSFufV0RW2/NIN
 QxDXu2tlNG80FCNEvecYaVcvNX0UfxpYA7D5Thoh9INEElk9dq6DmeUHmMth49XnW9ma
 z57tU7PJCHFA9M98iv9thg0ziwOY/GhMEg8f/vhxeKeFCDlej7UoTUU+vcmtjXLgDkZk
 Niyj/UVdFPS0qiXMkkDpQ6Qwr9U/l27x156W8JGrLcGASGa0vsbGOsNrVXBJjv0NhNl1
 5HlUKOPyvPtpgnGf47ysipEULR+HPnRO89AK0QvMgW0i32qX4Gefa6ApvJvPz/O+tO8c
 j6tQ==
X-Gm-Message-State: APjAAAVDYTCwMuH9KA4mD54PSKDawukUCliWoDgGJtvJrGNauuOKbaMr
 AK0P2BK8QnvCI3EOapJtOCrB6A==
X-Google-Smtp-Source: APXvYqxmaNB4W7rQ1NBaIa13dmH8j4PeVi2WkfZMssZuVRKBziRrA/ksz+FwV16y1femTzoXzfSu1Q==
X-Received: by 2002:a05:600c:54c:: with SMTP id
 k12mr8590960wmc.117.1565609260064; 
 Mon, 12 Aug 2019 04:27:40 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id e11sm13412913wrc.4.2019.08.12.04.27.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 04:27:39 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:27:31 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: Re: [PATCH v3 06/10] mfd: mt6323: some improvements of mt6397-core
Message-ID: <20190812112731.GS26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-7-frank-w@public-files.de>
 <20190812102209.GI26727@dell>
 <trinity-0fa641df-f7bb-4627-a9ab-aac3cabc90ba-1565609115974@3c-app-gmx-bs80>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-0fa641df-f7bb-4627-a9ab-aac3cabc90ba-1565609115974@3c-app-gmx-bs80>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_042742_053537_98861153 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCAxMiBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gPiBHZXNlbmRl
dDogTW9udGFnLCAxMi4gQXVndXN0IDIwMTkgdW0gMTI6MjIgVWhyCj4gPiBWb246ICJMZWUgSm9u
ZXMiIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAKPiA+ID4gLSAqIENvcHlyaWdodCAoYykgMjAx
NCBNZWRpYVRlayBJbmMuCj4gPiA+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTQtMjAxOCBNZWRpYVRl
ayBJbmMuCj4gPgo+ID4gVGhpcyBpcyBvdXQgb2YgZGF0ZS4gIFBsZWFzZSB1cGRhdGUgaXQuCj4g
Cj4gbWF5YmUgaSBzaG91bGQgZHJvcCBjaGFuZ2Ugb2YgdGhpcyBsaW5lIGNvbXBsZXRlbHkgKGVs
c2UgaXQgbmVlZHMgdG8gYmUgYWRqdXN0ZWQgZXZlcnkgeWVhcikKCkl0IG9ubHkgbmVlZHMgY2hh
bmdpbmcgd2hlbiB0aGUgQ29weXJpZ2h0IGlzIGNoYW5nZWQuCgpJZiB5b3Ugd2FudCB0byB1cGRh
dGUgaXQgdG8gMjAxNC0yMDE5LCB0aGF0J3MgZmluZS4KCk9yIGxlYXZpbmcgaXQgdW50b3VjaGVk
LCBpcyBhbHNvIGZpbmUuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsg
bWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
