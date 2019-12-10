Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1187F118D6C
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Dec 2019 17:20:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxHiqScxI6nl/Ua5XcrNYyRdd3rLQIBFTEt5pxfbiQ0=; b=TV+Ab0QZDBfziU
	5jLoMC1aEHyD/wXZLgHaCxidlJVYtRjpiZIL3x6RARTicjo8cJdj22FOdryrs5h8beJS9tiJBK7Tv
	wDU8Iyk/4FyxUX5Bs7CPYKe/g5xPHRpJ2fPs/pRt+di1x2MRPCvwuctv/IzNgzcuFvuRY8nzZCEdU
	gLyYG2neLssQRXRJPyG3WhxRfZ8ORkHkuCxJAwG4or+dvmFS/RRYvlfCnmsgpe7jW5TYBEu6f17Qx
	Iol+OBSdthUMGcuW0IQNwc/FuE9T+5NduoMmon5/TGkLPdAdGlMxvbfhakvbAZEsyDFbc01zT5VxS
	gQeEMdABNQRLaQpN23tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieiFQ-0004VO-SU; Tue, 10 Dec 2019 16:20:28 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieiFN-0004Ue-F4
 for linux-mediatek@lists.infradead.org; Tue, 10 Dec 2019 16:20:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c6CPgm0IhvA3nyR/Q2z35omEWncDMQnrCCrPzyQjsqw=; b=zQ7/HkMyx7E/bQvQ8wnGiAEg69
 wrwuBNQHvjITFooDPHqXzjP+oYp8DjZlT8EbI6jDKG02xyQTeqeW4P2UMdJpe4ajwHur01GjPAu8P
 N5sULJJQTlq8XNVqXTSzm1RXsVpcuKum6ZnFH+oeLhI31klnpZfgG3VW/6sI72DN7mig=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ieiF8-0005FM-Vd; Tue, 10 Dec 2019 17:20:10 +0100
Date: Tue, 10 Dec 2019 17:20:10 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Landen Chao <landen.chao@mediatek.com>
Subject: Re: [PATCH net-next 3/6] dt-bindings: net: dsa: add new MT7531
 binding to support MT7531
Message-ID: <20191210162010.GB27714@lunn.ch>
References: <cover.1575914275.git.landen.chao@mediatek.com>
 <1c382fd916b66bfe3ce8ef18c12f954dbcbddbbc.1575914275.git.landen.chao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c382fd916b66bfe3ce8ef18c12f954dbcbddbbc.1575914275.git.landen.chao@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_082025_504147_B7EC66AE 
X-CRM114-Status: UNSURE (   4.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, frank-w@public-files.de,
 f.fainelli@gmail.com, vivien.didelot@savoirfairelinux.com,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 opensource@vdorst.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> +Example 4:
> +
> +&eth {
> +	gmac0: mac@0 {
> +		compatible = "mediatek,eth-mac";
> +		reg = <0>;
> +		phy-mode = "2500base-x";
> +
> +		fixed-link {
> +			speed = <1000>;
> +			full-duplex;
> +			pause;
> +		};
> +	};

2500Base-X, but fixed link speed 1000?

> +				port@6 {
> +					reg = <6>;
> +					label = "cpu";
> +					ethernet = <&gmac0>;
> +					phy-mode = "2500base-x";
> +
> +					fixed-link {
> +						speed = <1000>;
> +						full-duplex;
> +						pause;
> +					};

Same here!

     Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
