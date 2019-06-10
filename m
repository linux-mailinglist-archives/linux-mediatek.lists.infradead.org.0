Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCC13AEC5
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Jun 2019 07:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUa7+lXN7M4A+Yzc7jS66Lncm7jwn4Z9bps+WW9L9+o=; b=FgH3xqDPTn1yYg
	zxS28kG7767pbwMKwGD07di4VII2QbkI4e56u5zjYQtn89hIfDYN+xavPnghanZVRKnOB+pOq4UUx
	kr48gndLkWFL8638dUxgMsbB22t6bQJgx90k60A8N7SCdVlDEWzloITNRwbtLFefrkQfqYZRmbd7r
	grg0r5QUV0Qr4a2iEtoJAE3evN6S788IxuOIqnpjwglK+rFFbv1taXIU88+UzMOnk7/Jit2pXFqyf
	XY83crrX5rqP2wTZ1PHL3anO1lmfsYtjgQ+1re1xQkwaNLFa2W0MZ6h7EwelkhxrFzgBE0++GY6N3
	NFHrlu2iWTwB9TDod0Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haDFs-0002Oq-Uc; Mon, 10 Jun 2019 05:54:04 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haDFb-0002DC-43; Mon, 10 Jun 2019 05:53:48 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.west.internal (Postfix) with ESMTP id A25F753B;
 Mon, 10 Jun 2019 01:53:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 10 Jun 2019 01:53:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=73FhgraWVSKzZSRxr/hRTV6FPo7
 e3zeeTj9HLIcXJQk=; b=WUqIHic7WiL1tl6Nzsn4mc6zoGABOQ4wN1sSg+/DfpX
 eDR9LyWtAtAK7bmMv/djfvbd/hxQYLSyPTFiCJkSs7pwDA+k0zuHVPMzJFJSgHw3
 /fxWavwxOH3ScjpJAJcV7enQ5mGX6eyxmbH1KHNrqvNU+GGf0HAk9BC/3UZIthby
 L3w32R3fMKTTMA3CAt9oGM/50vrm7/R8XdtMg7+h5yRoA1DVwP7da0vwbZ3fgpVj
 w6dw19Dx/eXaZLNh+dzO4XULbgjKZnLoNEGvzcvkXyiMerr3w9jFAF6nBmjVFpDL
 hYNE1f6sH3iWw4pOsFv54YefTGgSGxYs09yyI9ca+/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=73Fhgr
 aWVSKzZSRxr/hRTV6FPo7e3zeeTj9HLIcXJQk=; b=tM2nXGqRR33HPPT5EI0HZc
 F2cn6be9K0q2Zjy4ZtdN/jZyWSurdUkeJm28RoaoW1Y7aG4bNc1BgfPxhwZQhTWr
 a3pP3gra77bTM4OOXH/lvsM8CEH9Uh3MRhb/+qyySxJ1w6emC8GCFxCZfmppaltT
 PPpPBOvA3cbnw4RRrX9q62YiHf8w7lkQy2mpVZTQ1w6gLBprtnMRAeSuOX+m3ENw
 AO/pfg62LPJp45hErJg78UgXMpKF3JZ2UI12n6BHLYlbw1TtwhXDezjHa+BuShqe
 E6DWRzzPyaz9t1iITcWvgf0ut9YGi4P12WFgePoV0N+42zSWfKHzdTuWikXUC42w
 ==
X-ME-Sender: <xms:Y_D9XCL4I63YDmymPGTmvFniACribIhS_R6G5-uDS-stD5U9uiud2g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudehuddguddttdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgv
 ghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinhepkhgvrhhnvg
 hlrdhorhhgnecukfhppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhf
 rhhomhepghhrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:Y_D9XOYnvOUd54PI8pGbhMxykVnXYJoVVA1jQDiGLi5bu_LxxAdbFQ>
 <xmx:Y_D9XNuNqNrVA0By10jYs1YGzm7VKi_8-jFV6QrdieaPayeCbkjS0Q>
 <xmx:Y_D9XLsxGkhl8c6f5z_dsQOPItDQrZTLeRVHXYq0k2JG537PpwG_nA>
 <xmx:ZPD9XFjGPjsUFuN9HmlXy1yi4HeYj3ADgjRU_n7EbK-YkbPp0OVaLICzGg4>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id B6E34380073;
 Mon, 10 Jun 2019 01:53:38 -0400 (EDT)
Date: Mon, 10 Jun 2019 07:53:37 +0200
From: Greg KH <greg@kroah.com>
To: Weiyi Lu <weiyi.lu@mediatek.com>
Subject: Re: [PATCH v2] clk: mediatek: mt8183: Register 13MHz clock earlier
 for clocksource
Message-ID: <20190610055337.GB13825@kroah.com>
References: <1560132969-1960-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560132969-1960-1-git-send-email-weiyi.lu@mediatek.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_225347_294187_A4E17072 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dehui Sun <dehui.sun@mediatek.com>, James Liao <jamesjj.liao@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 10:16:09AM +0800, Weiyi Lu wrote:
> The 13MHz clock should be registered before clocksource driver is
> initialized. Use CLK_OF_DECLARE_DRIVER() to guarantee.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  drivers/clk/mediatek/clk-mt8183.c | 46 +++++++++++++++++++++++++++++----------
>  1 file changed, 34 insertions(+), 12 deletions(-)

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
