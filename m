Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1110512D483
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Dec 2019 21:37:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92p7hrPvx5bDHn8bfPVSVf5nx3Niu/7vpg4gGmJQJos=; b=Awv+gNoHM8QtB+
	SJVnuCvVXDrR/hi4xruLD4niI8RFX9Whnwg8DAcZuYMgLcS6ObLgJBX+Vb+jW6ewjcZcuakqf3DRt
	fCvg4kwX7vh6IjZwDUV7nyUFeDZyTJ8cqihYXKnRfYGQCMQ+lvydw8V0/co+zu2d+8ORrcX2tk4XP
	RtevaAornvkVWAAm7/QNj7kKEL1MLwC1HU748icXmCvgA9HkriTMoDFnNGOda2pD4f/j9nLwLmfzn
	bmuo9C7Z9l9a19oKWIWJ7VoffiAzG5yz3ZMDz2IUh8dHKCdlWTY1P9G8gVG8bii7+98YSsvJjKeID
	BP3aTCrleUiy9KsdbYig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im1mb-0006CT-ON; Mon, 30 Dec 2019 20:36:57 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im1mP-00063l-H9; Mon, 30 Dec 2019 20:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SXdGQUakfHybtX0jGG9d+Xw/HkMyol+MPHYTh6dQ3U4=; b=G6sDaIa4Z25UB8aomFAcrsYCxZ
 sHFxTi0i4H9s4qWhRn4C48sxjLww49Qqy7d0sMS3bqs9wzaNysXFjyhJJ1HsaMmC5d2mVBuQrMqCY
 XMAh9tp2x8TJRQRtngzHnGf9Eu8UdH6/Xkq5/TXmMV21bzOFORXZO94hq7H1fSecWwj4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1im1lw-0006Vp-L5; Mon, 30 Dec 2019 21:36:16 +0100
Date: Mon, 30 Dec 2019 21:36:16 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH RFC net-next 05/19] net: dsa: tag_ar9331: add GRO callbacks
Message-ID: <20191230203616.GA24733@lunn.ch>
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230143028.27313-6-alobakin@dlink.ru>
 <ee6f83fd-edf4-5a98-9868-4cbe9e226b9b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ee6f83fd-edf4-5a98-9868-4cbe9e226b9b@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_123645_571622_BDCBB57C 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexander Lobakin <alobakin@dlink.ru>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Stanislav Fomichev <sdf@google.com>,
 Matteo Croce <mcroce@redhat.com>, Edward Cree <ecree@solarflare.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@mellanox.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 10:20:50AM -0800, Florian Fainelli wrote:
> On 12/30/19 6:30 AM, Alexander Lobakin wrote:
> > Add GRO callbacks to the AR9331 tagger so GRO layer can now process
> > such frames.
> > 
> > Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
> 
> This is a good example and we should probably build a tagger abstraction
> that is much simpler to fill in callbacks for (although indirect
> function calls may end-up killing performance with retpoline and
> friends), but let's consider this idea.

Hi Florian

We really do need some numbers here. Does GRO really help? On an ARM
or MIPS platform, i don't think retpoline is an issue? But x86 is, and
we do have a few x86 boards with switches.

Maybe we can do some macro magic instead of function pointers, if we
can keep it all within one object file?

    Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
