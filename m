Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1C4DA254
	for <lists+linux-mediatek@lfdr.de>; Thu, 17 Oct 2019 01:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R01uJ5axG9OTLR+PrctivjYtPc0V94dFUwKpHF0l58M=; b=AkkJGHo8/UkiNW
	E98LRRY17dvNNh7f/ZAeGq64Nkmx/I2Yp2PqwipmUYnWpJR6haMssz8yNSCQ2ePuVGNKM5QdIaCaK
	S+Oi2ShbNqCP8G1V6GJrkpdqdQCywlYRMFY83ZD6laTXy/1TWCC4EFkNmJW5pcQf01XqfwFwsad/T
	NdYZ4gO2kVe8dQ8xr+OYUbwWiK38rg5ktnL4M+tUD1DpuQuym8elywqWCltWjER8gxKaC0pq+WQ20
	mVESxd8Gq96Su2AEszctrbEtUo0VVrfS3set8Upot6IUaJOYzHsv9AcmDM3xam3unkcYb2FuVOFds
	0GkoQ3R2sEADzuk61Zxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKsoQ-0001EE-0N; Wed, 16 Oct 2019 23:34:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKsnd-0000S9-HL; Wed, 16 Oct 2019 23:33:51 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC30621A49;
 Wed, 16 Oct 2019 23:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571268828;
 bh=J0c1fc+cVlOSedR6bxWcZ3BNhUFkVY/5owItVepDo14=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=ravOVQCp8V/0fJXEs3ewm1/jkVXFZTtklaupE62sRKCFtO8Tiz2GknIp8fK6Y2a93
 K2yFDI0zmFgPTJjGZvtgAKYGVaGocf3sxXdFgt23wPlE2vTr8zzBPBEXWkjD+iDKhL
 x5ZaCzE7g7nQz0lNw7Npz5oGRXi6bLt00nyGz05U=
MIME-Version: 1.0
In-Reply-To: <20191015124226.25792-1-yuehaibing@huawei.com>
References: <20191015124226.25792-1-yuehaibing@huawei.com>
From: Stephen Boyd <sboyd@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>, matthias.bgg@gmail.com,
 mturquette@baylibre.com, robh@kernel.org, ryder.lee@mediatek.com,
 wenzhen.yu@mediatek.com
Subject: Re: [PATCH -next] clk: mediatek: mt7629: use
 devm_platform_ioremap_resource() to simplify code
User-Agent: alot/0.8.1
Date: Wed, 16 Oct 2019 16:33:48 -0700
Message-Id: <20191016233348.BC30621A49@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_163349_713466_D51C3B24 
X-CRM114-Status: UNSURE (   5.69  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting YueHaibing (2019-10-15 05:42:26)
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---

Applied to clk-next


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
