Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD93118E2E
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Dec 2019 17:52:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lO9Co6ib92eHGi7YkV0W6Au84IuEoXtt+Ikb3wsk3A8=; b=gbExjgtdb6r3jn
	IFtCxDyE/V33BqKw6LKD4crPnNXYGAwxSkWrinDELIfqPsEQCeN2gRHFS3ionc6ctJVFKSU+jSBBx
	/hT+ZUkNh9zeSkTKQg41adb/ljpErhRF0kdtkF4OJgcHbzZnoM6dyP14xYQygWlLd9b+WFzlqzZJ9
	lA7tZQdxJ0dJJf6w1SYygeX5yK0uxD+ChrQ2w4oYPrWOiDrnm5jNhRU8+ezfqszkjU1qQrBuHXGFU
	HK9Qb3zvI/rVAWW6ezFIJGfw/dLAX65qIuilz1t9/wh/tfxmnZCEn9wPmZty2kus0NIaGd/hY60wv
	4xTLkkNEEHaOvsTNXW9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieiju-0000nI-S8; Tue, 10 Dec 2019 16:51:58 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieijs-0000mp-3W
 for linux-mediatek@lists.infradead.org; Tue, 10 Dec 2019 16:51:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GS7ZQbG13kNNPclSha9kEVSYY0gWUbSimOQ+b8lUzFk=; b=Fg2Y/4MEnZ0sK7PeMIPC0QuEDc
 IpAtOZ1ZZ6ctnmLPYuczyZnzpozeJLjqJKz7bjbw6X7GmXnmL21fxTHIT64sRjdtC6f3eSBhMRTN1
 bRyJTfeaTfsXEC46CiMXFWiAnGFnvktmWsmrhTwaPSFbgsgIfnBZuhu7ytRHzWqi76vY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ieijl-0005RP-HK; Tue, 10 Dec 2019 17:51:49 +0100
Date: Tue, 10 Dec 2019 17:51:49 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Landen Chao <landen.chao@mediatek.com>
Subject: Re: [PATCH net-next 5/6] arm64: dts: mt7622: add mt7531 dsa to
 mt7622-rfb1 board
Message-ID: <20191210165149.GF27714@lunn.ch>
References: <cover.1575914275.git.landen.chao@mediatek.com>
 <7f5a690281664a0fe47cfe7726f26d7f6211d015.1575914275.git.landen.chao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f5a690281664a0fe47cfe7726f26d7f6211d015.1575914275.git.landen.chao@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_085156_143761_09DAF90F 
X-CRM114-Status: UNSURE (   6.39  )
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

> +				port@6 {
> +					reg = <6>;
> +					label = "cpu";
> +					ethernet = <&gmac0>;
> +					phy-mode = "2500base-x";
> +
> +					fixed-link {
> +						speed = <2500>;
> +						full-duplex;
> +						pause;
> +					};

This fixed-link should not be needed. The DSA driver is supposed to
configure the CPU port to its fastest speed by default. 2500 is
the fastest speed a 2500Base-X link can do...

    Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
