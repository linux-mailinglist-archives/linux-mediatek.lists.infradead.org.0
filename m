Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D816E12D292
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Dec 2019 18:23:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hD38k+ph25PXON+LiTPmj9ZR7uW1J1elkcbNUUSVlbQ=; b=L8/Fk/RLiSGc1I
	8A+u/unz1KqzbD3ciA/vsT3NoOt0TZb//NB7Z1Waa0lkmZlBK6qfObA6RIQNYKc5i7NCMAYlTWPIi
	37hffALWc/3N5dFX5Eye49XK0FyhY7/FGM9ShImSWRNgjV1Qpdc4ImVxgXSp5H9d6lF+1LJfT/Je9
	x8pXcIJmE0tZPujKlxSJTBbZm4ehv6EBsB0jsonIgIFIo4efCr/sDA7oyc6Lk2JWXtuoPu0TDX2Wh
	Y99lHe1PdzJYLwaDTsbgF+vN1kHAKJw/s/ZZwlkzL/u30oqG6xVOlTUkScDDZ6FOMr+3qetQS7U80
	tm2ZY+DLHX5gOWsfKdyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilykq-0008HV-2c; Mon, 30 Dec 2019 17:22:56 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilykT-00081b-9v; Mon, 30 Dec 2019 17:22:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LvLtlNVIraZ0K0BvAC5sz2iObsMdXa39MW+pknncAe8=; b=iSv7ysfdrw1VwJYAGLPPJNd9NM
 KGau6p3kXLxDpdxTm2WplWp0/sl76MT0ivU7mdQUYlrjNbuWITalxN7VLliyisHVL8+sbLagNdeAf
 UtYhMZd4l4+AJ0mq4Tx4L7TW6YbSLc1BMQlSgwA5uu+0sqrbrScaRXphYxfNFPyAhWKw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ilyk5-0004Ct-AJ; Mon, 30 Dec 2019 18:22:09 +0100
Date: Mon, 30 Dec 2019 18:22:09 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Alexander Lobakin <alobakin@dlink.ru>
Subject: Re: [PATCH RFC net-next 06/19] net: dsa: tag_gswip: fix typo in tag
 name
Message-ID: <20191230172209.GE13569@lunn.ch>
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230143028.27313-7-alobakin@dlink.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191230143028.27313-7-alobakin@dlink.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_092233_847795_5EB7DDD3 
X-CRM114-Status: UNSURE (   5.14  )
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
 Yoshiki Komachi <komachi.yoshiki@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Stanislav Fomichev <sdf@google.com>,
 Matteo Croce <mcroce@redhat.com>, Edward Cree <ecree@solarflare.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Jiri Pirko <jiri@mellanox.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 05:30:14PM +0300, Alexander Lobakin wrote:
> "gwsip" -> "gswip".
> 
> Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
