Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1E0B5418
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Sep 2019 19:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bP5zBsicPrLi+sNWkw4Hu039v9SToZGwU8v9Qur/3g4=; b=R0TJBc7XAkdCxE
	4JR717Dnm3h7bu79vEagLSuGjjLXxBtDheGQM7nVb0CYOKZrTUaYnkIR5xe4u3qVKneBq5PGcu5Ac
	d9iTpP26gikk3lktb0UEfLcm43ihQlvhKYZt2LFYgiB3J7w++Yn+WcUnR+o+DueLr/uGVplJhbB0Z
	0oKsDmWP5lXUb1yMPQ9ZKeB4YUn+d6+LzpSt3wk7o6TgiqU893/q3IpvE8MbXiexq2HrPaP6DTG4m
	tYrwiAEF6ZamV1I22xVkcpRV46tzO4wOmESepxKvYHuBM9Mk8N+6WuAkQcf8hKvq3cAh46r34FdfZ
	aX2+eku/IIgx02qGUhDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHDU-0002qK-Oq; Tue, 17 Sep 2019 17:24:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHC4-0002LU-6l; Tue, 17 Sep 2019 17:23:14 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD7CC20640;
 Tue, 17 Sep 2019 17:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568740991;
 bh=cQXZwJ3tGhoP3HxtYH0RfkDfqcLmpGLF2EtRk8KcnIk=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=2LpKjfwsJPtnUUnnm4SdTLuxuHF4te7U8nGRtWzyMtypCngGoTjIAVgo6H1UPQCGC
 R9X0otDFZTZpIoa6I/nzbl3b5TY0JUZVQWy5JlbX0m6qXJAytYGGrTSuEuiqKmk3mp
 nQZQYiyKXheDq6oyn9l/aFAsuPxEOkNyLyHIfRag=
MIME-Version: 1.0
In-Reply-To: <1567414859-3244-2-git-send-email-weiyi.lu@mediatek.com>
References: <1567414859-3244-1-git-send-email-weiyi.lu@mediatek.com>
 <1567414859-3244-2-git-send-email-weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh@kernel.org>,
 Weiyi Lu <weiyi.lu@mediatek.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RESEND PATCH v1 1/3] clk: mediatek: Register clock gate with
 device
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 10:23:10 -0700
Message-Id: <20190917172311.BD7CC20640@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_102312_447931_949842B7 
X-CRM114-Status: UNSURE (   5.40  )
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

Quoting Weiyi Lu (2019-09-02 02:00:57)
> Allow those clocks under a power domain to do the runtime pm operation
> by forwarding the struct device pointer from clock provider.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---

Applied to clk-next


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
