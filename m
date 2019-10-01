Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FE7C3486
	for <lists+linux-mediatek@lfdr.de>; Tue,  1 Oct 2019 14:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9H2N8g1h5bL2bpiTxcnZur4wYx0dNxSkxLZVYOk50c=; b=IRubeABpJHQxAu
	Jt3pp3tDqWt0wqQXWhS0wHx8Byprao64rWVRfC/2FCAh+zPGrk3gyhM+zipuP6RcleUeLzMo6iY/i
	MOBSh4cQp6B/oMwSQoxfSRYZALCSadh/iFEjyznGh6V8mdDrRTFi8jyasZ2u/93wowcZQlzeaShGj
	DQtXHkMUHuAC27dwSVDeStIVN8uHww/zeWTx6wQhAFI7rE/JCyQ0Tdlifgk1uPcAw3gqPe74QsNlp
	xdr5M+B+6fHVV8t33qgmmcFelrg0GGJYqMzp2qi5h2btE5wXnc5m6nBV1yAsh7UCbjcFimGDATRr1
	EPPg7AO7qcZuzj18EkCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHU3-0000Tw-GB; Tue, 01 Oct 2019 12:42:27 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHU0-0000TC-KM; Tue, 01 Oct 2019 12:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n9SwtzBQLDaKOFpGqdCfpbjlJzYPV55cZxw6ACX85V8=; b=tMR7C0VFFtvrM97u3rSLb+tudh
 9r7oghvLWphuntDvlNJ8IlMl0Wyi5SVbhuOzF3nWZ8Fozhnp0m0f5+rHoKKJT15DCZHW+JwVelUYZ
 vZwN2qH3c+t2N8j92zoECtQkAdLFLw+IMpcXuTdBRIjGyjL3rxVrNR0+cEr6N6Lk/2/M=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iFHTi-0000P7-Eq; Tue, 01 Oct 2019 14:42:06 +0200
Date: Tue, 1 Oct 2019 14:42:06 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: MarkLee <Mark-MC.Lee@mediatek.com>
Subject: Re: [PATCH net 1/2] net: ethernet: mediatek: Fix MT7629 missing GMII
 mode support
Message-ID: <20191001124206.GC869@lunn.ch>
References: <20191001123150.23135-1-Mark-MC.Lee@mediatek.com>
 <20191001123150.23135-2-Mark-MC.Lee@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001123150.23135-2-Mark-MC.Lee@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_054224_667322_DFC112BB 
X-CRM114-Status: UNSURE (   7.25  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Felix Fietkau <nbd@openwrt.org>, Nelson Chang <nelson.chang@mediatek.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Rene van Dorst <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 08:31:49PM +0800, MarkLee wrote:
> Add missing configuration for mt7629 gmii mode support
> 
> Signed-off-by: MarkLee <Mark-MC.Lee@mediatek.com>

Hi Mark

Since this is for net, it should have a Fixes: tag.

Thanks
	Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
