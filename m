Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A3D12FE62
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 Jan 2020 22:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NssK3yXF+UEq/T9mhZ5KtlsUQ0CjuABb5v0FedQLrqY=; b=Ipn0nhgDXG+gV8
	o5K2Ts/vDyWfsQ53eKoYcNFTnU0GnyaZ0V+B/lNbIAv4fh33gNdKZCNtEBbc4SgDd+DpBBPiEhkV3
	c3z4kGbpD6ogU1y8mFR6ttDvQWCBT9ST46H0y8QZd38AoapNFLq/WKViStuIwFIeGyT8LrrHC7g/c
	WWOyckpAVCUnji0RLx39Y0CLoBWbPNwRpFMfjdj83dP3mZEx7qManZ4dsNp5AR5xHmf4gym89IBN8
	0R3S5Yp5ON89GX1AjvZmLdFQxUHTUb6LrvDVEMN2LjH6hNeDFJulOil/RUuVUML5yBs6p1uMNswY1
	krIIXBJKiYkvjC0UvFfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inUVL-0002T7-P2; Fri, 03 Jan 2020 21:29:11 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inUVC-0002LR-4P; Fri, 03 Jan 2020 21:29:03 +0000
Received: by mail-ed1-x542.google.com with SMTP id b8so42711193edx.7;
 Fri, 03 Jan 2020 13:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sY+5gBJ9KBN9CmCnj27mx4Jhd9hNgJKF8zYt9OnsI4Q=;
 b=vRNZ8xR0cRi5hS92dxr96kspn6z+MidQ30Ls7zmJ3eyz4Xo26rNawGDzaAtNvsBXFw
 9WnPYoPKyKmc9tJED3/GaF5K9lv/Y9Jf267LnqvgwTdnkoQLc0jE6kZb/yQNk5BjRy2q
 WT0d/g5JIcy9BKL8g2nvmIQLNDBFT40TIT22cOSm73Nz15KO5forfXbMUujZKmurOAs/
 hVK3NZ1kG1fYxuom5n+1EIetBuxP9iIZ8VrZph+ggGnNvr4axOlZgUcQjzVm5Osgr87t
 cR1PzkkayFotuz84RqtglbEJfyDtSQzQRzB5YHM51busvhxUz8jFEheKMkoL4MTeCtcr
 4IzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sY+5gBJ9KBN9CmCnj27mx4Jhd9hNgJKF8zYt9OnsI4Q=;
 b=F+YZxv86hRiTeXc5m5P35lsVtO6lgu6CnpkO0Kux1RuIVwc5aig2ycKrqLSnq1HEp/
 jasvAvi0+JEfIpd1UEvP751z1HCfmqPPNM3dvScq0UYzrBxB7s9EHglD2jq61Ro6sAtA
 czqXFqMHHnwtW2Y20QVoZQofLa5qabSrM29VLv5lujsR56ydnYJDP0X4eKzJHQbuWEuU
 U1mIrc/HGkFdFdRWvcOKvTywUYvM6xmP9M3QBYRkuRIF4nU9eMWuhcnWFeuUqZKRX1FP
 5ozjLVKgqvjmMeac+hnvqM3T93m10UOk4fSsDfXyboZcdtoJWLrRCko35T3tslXDQvbF
 lsRQ==
X-Gm-Message-State: APjAAAUVwzw8gRA1Ki6Jsi4fYfXa0xAaD1gVi9qp6e8p1knz0yc3v/ze
 qcj9kL4Bwq+ExjCB1cTx24kHF3mAkMM4PCXUPm4=
X-Google-Smtp-Source: APXvYqz6C0gPA0BhTifMkDy7tGjqFdi13Pdnw86CYCjTgOWj/u5iR1rZ2K6vSRub8lpQ1YCZR9r0P0aJe4S60ETEH9c=
X-Received: by 2002:aa7:cccf:: with SMTP id y15mr94922090edt.108.1578086938142; 
 Fri, 03 Jan 2020 13:28:58 -0800 (PST)
MIME-Version: 1.0
References: <20200102233657.12933-1-f.fainelli@gmail.com>
 <CA+h21hrLO2Nfryu74Joj-T3-ithgoSFOQZsw4Z5QWOnhttvGiA@mail.gmail.com>
 <91eb2720-d933-f1fd-8d50-e9a81434545b@gmail.com>
In-Reply-To: <91eb2720-d933-f1fd-8d50-e9a81434545b@gmail.com>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Fri, 3 Jan 2020 23:28:47 +0200
Message-ID: <CA+h21hqEnFjPHyK9ZanzwXdvkcdTA3uZzJMf0eo0FZWRTFzouw@mail.gmail.com>
Subject: Re: [PATCH net-next] net: dsa: Remove indirect function call for flow
 dissection
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_132902_201150_D8DECA93 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Alexander Lobakin <alobakin@dlink.ru>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Matteo Croce <mcroce@redhat.com>,
 Petar Penkov <ppenkov@google.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Paul Blakey <paulb@mellanox.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 3 Jan 2020 at 22:50, Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> The call path is the following on TX (e.g.: when you run a DHCP client),

Oh, it gets called on TX too, ok.
In that case, static proto_off information won't work for asymmetric
taggers such as ocelot which may have an independently configurable
prefix length on RX and TX.
I want to get rid of the RX tag prefix in ocelot though, but just saying.

> I don't think your formula works for EDSA which has an EtherType, but

Why doesn't it work with edsa?

> this would probably work for all tags we currently support except trailer.
>
> proto = (__be16 *)(skb->data)[overhead / 2 - 1];
>

I wasn't suggesting to do this exact calculation in flow_dissector.c,
but rather to pre-populate proto_off with a value statically derived
from it on a piece of paper, with the trailer exception where it would
be -2 in bytes or -1 in shorts, but nonetheless a negative and valid
value.

>
> I don't think anyone except Alexander did serious investigation this.
> For now, what I am interested in is reducing the amount of technical
> debt and expensive function calls.

Does the change bring any measurable improvement?

> --
> Florian

Regards,
-Vladimir

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
