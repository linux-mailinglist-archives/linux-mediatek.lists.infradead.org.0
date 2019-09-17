Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33532B541D
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Sep 2019 19:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjZiAl1uhqD/deKQzdOYtdmfwZlYqNFONIqYoIdRIAo=; b=MNlvBqJ3+okwMJ
	R/H+TB2nw/j4zsrXkE2KPj2dWmS2JWjFesIVRiFjuHNmSZKfITFTMSQuGUtCCKvG6IP6lQZks1WUo
	DnnTtMTNYEGblXZttjx4GuacaQMUoyScP0YQUxkkrDLT6YNfiOMdNX318UfseWg6z8Bl3TXU/rFRw
	py626wjVMuRXToY4lXRvWLLKi7+qz8K83fM+rSgltWp7YdewEVO81bSpZIjdjJVb1tGUZZpB2rfZa
	EYAJQENK7mFkrQfBcDf7JZM0mwbyCfU5Dg19YDMZfs7P5/tTsw5Z6ow8JAhfuluLCgK+1KdUeYrtI
	7ai2i/8+UG2TH2cQyGkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHDm-00035V-CP; Tue, 17 Sep 2019 17:24:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHC7-0002Ni-8y; Tue, 17 Sep 2019 17:23:16 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2765214AF;
 Tue, 17 Sep 2019 17:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568740994;
 bh=1nkPyDmw3M1xYDQWHb5QNUaZfBwrP0Luz7WD0s9GULA=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=bDAnYw3nkBrEZndtfMdLUcO2bf5o52dcBnEkQxZ5Pv1zGEEPPbLK9R6d7RnCzb39U
 c7gPNh5gBUV4tTajhym0rdxLnJ/F3FReZ3ScYeekkHyTl7lkO33qof8aPtXC76Lugv
 c1gKIbd6ysUW+B+32ZWATm6nO5Q2908ffjcuk0sQ=
MIME-Version: 1.0
In-Reply-To: <1567414859-3244-3-git-send-email-weiyi.lu@mediatek.com>
References: <1567414859-3244-1-git-send-email-weiyi.lu@mediatek.com>
 <1567414859-3244-3-git-send-email-weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh@kernel.org>,
 Weiyi Lu <weiyi.lu@mediatek.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RESEND PATCH v1 2/3] clk: mediatek: Runtime PM support for
 MT8183 mcucfg clock provider
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 10:23:14 -0700
Message-Id: <20190917172314.D2765214AF@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_102315_468680_18EDE4A4 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 CK Hu <ck.hu@mediatek.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Weiyi Lu (2019-09-02 02:00:58)
> Enable the runtime PM support and forward the struct device pointer for
> registration of MT8183 mcucfg clocks.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---

Applied to clk-next


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
